pip install comfy-cli

cd /workspace/ComfyUI/custom_nodes
git clone https://github.com/theUpsider/ComfyUI-Logic --recursive
cd /workspace/ComfyUI/custom_nodes
git clone https://github.com/audioscavenger/save-image-extended-comfyui --recursive
cd /workspace/ComfyUI/custom_nodes/save-image-extended-comfyui
pip install -r requirements.txt
cd /workspace/ComfyUI/custom_nodes
git clone https://github.com/ssitu/ComfyUI_UltimateSDUpscale --recursive
cd /workspace/ComfyUI/custom_nodes
git clone https://github.com/adieyal/comfyui-dynamicprompts --recursive
cd /workspace/ComfyUI/custom_nodes/comfyui-dynamicprompts 
pip install -r requirements.txt
#python -m pip install -r custom_nodes/comfyui-dynamicprompts/requirements.txt
mkdir wildcards
cd /workspace/ComfyUI/custom_nodes
git clone https://github.com/ka-puna/comfyui-yanc/ --recursive
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