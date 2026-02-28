# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
RUN comfy node install --exit-on-fail was-ns@3.0.1 --mode remote
# Could not resolve unknown_registry node 'Note' (no aux_id provided) - skipped
# Could not resolve unknown_registry node 'Note' (no aux_id provided) - skipped

# download models into comfyui

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
