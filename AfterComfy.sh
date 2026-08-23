export COMFYUI_PATH=/workspace/ComfyUI
COMFYUI_DIR="/workspace/ComfyUI"

# Clear the correct cache & database locations
rm -rf "$COMFYUI_DIR/user/.cache/comfyui-manager"
rm -rf "$COMFYUI_DIR/user/default/ComfyUI-Manager"
rm -rf "$COMFYUI_DIR/user/__manager"

export PIP_ROOT_USER_ACTION=ignore
cd /workspace/ComfyUI/
kill -s USR1 $(pgrep -f "python main.py")
git pull
pip install -r requirements.txt
#comfy update

cd /workspace/ComfyUI/custom_nodes/ComfyUI-Manager
#python cm-cli.py update-cache this just errors. What is "update-cache" should it be update - cache?

#python cm-cli.py update all --mode remote
#python cm-cli.py install "https://github.com/ka-puna/comfyui-yanc/"
#python cm-cli.py install "https://github.com/skycoder182/comfyui-filename-tools"
#python cm-cli.py install "https://github.com/rgthree/rgthree-comfy"
#python cm-cli.py install "https://github.com/audioscavenger/save-image-extended-comfyui"
cd /workspace/ComfyUI/custom_nodes
git clone https://github.com/theUpsider/ComfyUI-Logic --recursive
cd /workspace/ComfyUI/custom_nodes

git clone https://github.com/ka-puna/comfyui-yanc/ --recursive
git clone https://github.com/skycoder182/comfyui-filename-tools --recursive
git clone https://github.com/rgthree/rgthree-comfy --recursive
git clone https://github.com/audioscavenger/save-image-extended-comfyui --recursive
git clone https://github.com/tttamaki/ComfyUI-StringListConcat  --recursive
git clone https://github.com/Fannovel16/comfyui_controlnet_aux --recursive
cd /workspace/ComfyUI/custom_nodes/comfyui_controlnet_aux
#pip install  --root-user-action ignore -r requirements.txt
pip install -r requirements.txt

cd /workspace/ComfyUI/custom_nodes/save-image-extended-comfyui
pip install -r requirements.txt

#If wwa isn't working it's probably because controlnetAUX didn't install properly. WWA's requirement.txt file is empty.
#git clone https://github.com/hgabha/WWAA-CustomNodes.git --recursive
#cd /workspace/ComfyUI/custom_nodes/WWAA-CustomNodes

cd /workspace/ComfyUI/custom_nodes
git clone https://github.com/ssitu/ComfyUI_UltimateSDUpscale --recursive
cd /workspace/ComfyUI/models/upscale_models
#Speed: Nomos is fastest. Remacri is 2x slower than Nomos. UltraSharp is 8x slower than Nomos
#Interestingly doubling image size takes exactly as long as 1.5x image size or 1.25x size. Did not test above 2x.
wget https://github.com/Phhofm/models/releases/download/4xNomosWebPhoto_RealPLKSR/4xNomosWebPhoto_RealPLKSR.safetensors
#wget https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth -O "4x_foolhardy_Remacri.pth"
#wget https://github.com/cszn/KAIR/releases/download/v1.0/BSRGAN.pth
#wget https://huggingface.co/Kim2091/UltraSharpV2/resolve/main/4x-UltraSharpV2.safetensors -O "4x-UltraSharpV2.safetensors"
cd /workspace/ComfyUI/custom_nodes
git clone https://github.com/adieyal/comfyui-dynamicprompts --recursive
cd /workspace/ComfyUI/custom_nodes/comfyui-dynamicprompts
mkdir wildcards
pip install -r requirements.txt
#python -m pip install -r custom_nodes/comfyui-dynamicprompts/requirements.txt
cd /workspace/ComfyUI/custom_nodes
git clone https://github.com/rgthree/rgthree-comfy --recursive
cd /workspace/ComfyUI/custom_nodes
git clone https://github.com/crystian/ComfyUI-Crystools --recursive
cd /workspace/ComfyUI/custom_nodes/ComfyUI-Crystools
pip install -r requirements.txt
cd /workspace/ComfyUI/custom_nodes
git clone https://github.com/city96/ComfyUI-GGUF --recursive
cd /workspace/ComfyUI/custom_nodes/ComfyUI-GGUF
pip install -r requirements.txt
cd /workspace/ComfyUI/custom_nodes/
git clone https://github.com/fairy-root/ComfyUI-Show-Text.git --recursive
cd /workspace/ComfyUI/custom_nodes/
git clone https://github.com/orion4d/batch_image_loader --recursive
cd /workspace/ComfyUI/custom_nodes/batch_image_loader
pip install -r requirements.txt
cd /workspace/ComfyUI/
mkdir batch_img
cd /workspace/ComfyUI/custom_nodes/

git clone https://github.com/fairy-root/ComfyUI-Show-Text.git --recursive

cd /workspace/ComfyUI/custom_nodes/

#git clone https://github.com/kymeraj/comfyui-load-image-with-filename.git --recursive
#mkdir ComfyUI-LoadImageWithFilename
#git clone https://github.com/thalismind/ComfyUI-LoadImageWithFilename --recursive
#cd /workspace/ComfyUI/custom_nodes/
#mkdir comfyui-various
#cd /workspace/ComfyUI/custom_nodes/comfyui-various
#wget https://raw.githubusercontent.com/jamesWalker55/comfyui-various/5bd85aaf7616878471469c4ec7e11bbd0cef3bf2/comfyui_datetime.py

git clone https://github.com/citronlegacy/ComfyUI-CitronNodes --recursive
#cd /workspace/ComfyUI/custom_nodes/ComfyUI-CitronNodes
#pip install -r requirements.txt
#cd /workspace/ComfyUI/custom_nodes/




#git clone https://github.com/mit-han-lab/ComfyUI-nunchaku /workspace/ComfyUI/custom_nodes/nunchaku_nodes --recursive
#git clone https://github.com/mit-han-lab/ComfyUI-nunchaku --recursive
#cd /workspace/ComfyUI/custom_nodes/ComfyUI-nunchaku
#wget https://nunchaku.tech/cdn/nunchaku_versions.json -O "nunchaku_versions.json"
mkdir /workspace/ComfyUI/user/default
mkdir /workspace/ComfyUI/user/default/workflows/
#cd /workspace/ComfyUI/user/default/workflows/
#wget https://raw.githubusercontent.com/nunchaku-ai/ComfyUI-nunchaku/refs/heads/main/example_workflows/install_wheel.json -O "install_wheel.json"

#Load stubborn nodes after install
cd /workspace/ComfyUI/custom_nodes/ComfyUI-Manager
rm -f node_mappings.txt
python cm-cli.py update all --mode remote

curl -X POST http://localhost:8188/manager/restart 2>/dev/null
#python cm-cli.py update all
#cm-cli update --skip-prompt

#python cm-cli.py update "comfyui-yanc"
#python cm-cli.py update "comfyui-filename-tools"
