cd /workspace/ComfyUI/models/diffusion_models
wget https://huggingface.co/Comfy-Org/Qwen-Image-Edit_ComfyUI/resolve/main/split_files/diffusion_models/qwen_image_edit_2511_fp8mixed.safetensors -O "qwen_image_edit_2511_fp8mixed.safetensors"
wget https://huggingface.co/Comfy-Org/Qwen-Image-Edit_ComfyUI/resolve/main/split_files/diffusion_models/qwen_image_edit_2509_fp8_e4m3fn.safetensors -O "qwen_image_edit_2509_fp8_e4m3fn.safetensors"
cd /workspace/ComfyUI/models/text_encoders
wget https://huggingface.co/Comfy-Org/HunyuanVideo_1.5_repackaged/resolve/main/split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors -O "qwen_2.5_vl_7b_fp8_scaled.safetensors"
cd /workspace/ComfyUI/models/vae
wget https://huggingface.co/Comfy-Org/Qwen-Image_ComfyUI/resolve/main/split_files/vae/qwen_image_vae.safetensors -O "qwen_image_vae.safetensors"
cd /workspace/ComfyUI/models/loras
wget https://huggingface.co/lightx2v/Qwen-Image-Edit-2511-Lightning/resolve/main/Qwen-Image-Edit-2511-Lightning-4steps-V1.0-bf16.safetensors -O "Qwen-Image-Edit-2511-Lightning-4steps-V1.0-bf16.safetensors"
wget https://huggingface.co/Comfy-Org/Qwen-Image-Edit_ComfyUI/resolve/main/split_files/loras/Qwen-Image-Edit-2509-Relight.safetensors -O "Qwen-Image-Edit-2509-Relight.safetensors"