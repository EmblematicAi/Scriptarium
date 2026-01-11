cd /workspace/ComfyUI/models/diffusion_models
wget https://huggingface.co/Comfy-Org/z_image_turbo/resolve/main/split_files/diffusion_models/z_image_turbo_bf16.safetensors -O "z_image_turbo_bf16.safetensors"
cd /workspace/ComfyUI/models/model_patches
wget https://huggingface.co/alibaba-pai/Z-Image-Turbo-Fun-Controlnet-Union/resolve/main/Z-Image-Turbo-Fun-Controlnet-Union.safetensors -O "Z-Image-Turbo-Fun-Controlnet-Union.safetensors"
cd /workspace/ComfyUI/models/text_encoders
wget https://huggingface.co/Comfy-Org/z_image_turbo/resolve/main/split_files/text_encoders/qwen_3_4b.safetensors -O "qwen_3_4b.safetensors"
cd /workspace/ComfyUI/models/vae
wget https://huggingface.co/Comfy-Org/z_image_turbo/resolve/main/split_files/vae/ae.safetensors -O "ae.safetensors"