cd /opt/ComfyUI
git clone https://github.com/ltdrdata/ComfyUI-Manager.git /opt/ComfyUI/custom_nodes/ComfyUI-Manager
pip install -r requirements.txt
cd /opt/ComfyUI/custom_nodes/ComfyUI-Manager
pip install -r requirements.txt
cd /opt/ComfyUI/custom_nodes
git clone https://github.com/theUpsider/ComfyUI-Logic --recursive
cd /opt/ComfyUI/custom_nodes
git clone https://github.com/audioscavenger/save-image-extended-comfyui --recursive
cd /opt/ComfyUI/custom_nodes/save-image-extended-comfyui
pip install -r requirements.txt
cd /opt/ComfyUI/custom_nodes
git clone https://github.com/ssitu/ComfyUI_UltimateSDUpscale --recursive
cd /opt/ComfyUI/custom_nodes
git clone https://github.com/adieyal/comfyui-dynamicprompts --recursive
cd /opt/ComfyUI/custom_nodes/comfyui-dynamicprompts 
pip install -r requirements.txt
#python -m pip install -r custom_nodes/comfyui-dynamicprompts/requirements.txt
mkdir wildcards
cd /opt/ComfyUI/custom_nodes
git clone https://github.com/ka-puna/comfyui-yanc/ --recursive
cd /opt/ComfyUI/custom_nodes
git clone https://github.com/rgthree/rgthree-comfy --recursive
cd /opt/ComfyUI/custom_nodes
git clone https://github.com/crystian/ComfyUI-Crystools --recursive
cd /opt/ComfyUI/custom_nodes/ComfyUI-Crystools
pip install -r requirements.txt
cd /opt/ComfyUI/custom_nodes
git clone https://github.com/city96/ComfyUI-GGUF --recursive
cd /opt/ComfyUI/custom_nodes/ComfyUI-GGUF
pip install -r requirements.txt
cd /opt/ComfyUI/custom_nodes/
#git clone https://github.com/mit-han-lab/ComfyUI-nunchaku /opt/ComfyUI/custom_nodes/nunchaku_nodes --recursive
#git clone https://github.com/mit-han-lab/ComfyUI-nunchaku --recursive
#cd /opt/ComfyUI/custom_nodes/ComfyUI-nunchaku
#wget https://nunchaku.tech/cdn/nunchaku_versions.json -O "nunchaku_versions.json"
#mkdir /opt/ComfyUI/user/default/workflows/
#cd /opt/ComfyUI/user/default/workflows/
#wget https://raw.githubusercontent.com/nunchaku-ai/ComfyUI-nunchaku/refs/heads/main/example_workflows/install_wheel.json -O "install_wheel.json"
