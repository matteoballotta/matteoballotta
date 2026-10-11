sudo dnf check-update --refresh
sudo dnf upgrade --refresh
sudo dnf install mesa-dri-drivers mesa-vulkan-drivers mesa-libGL linux-firmware
sudo grubby --update-kernel=ALL --remove-args="nomodeset"
sudo grubby --update-kernel=ALL --remove-args="i915.modeset=0"
sudo grubby --update-kernel=ALL --remove-args="radeon.modeset=0"
sudo grubby --update-kernel=ALL --remove-args="amdgpu.modeset=0"
echo "MUTTER_DEBUG_DISABLE_HW_CURSORS=1" | sudo tee -a /etc/environment
