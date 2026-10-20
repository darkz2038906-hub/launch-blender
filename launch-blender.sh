#!/bin/bash
# Launcher script for Blender 3.6+ on ChromeOS (Crostini) with GPU acceleration
# Created for Morgande Studio / darkz2038906-hub

echo "Starting Blender 3.6 with Virpipe GPU driver..."

# Clear software rendering fallbacks
unset LIBGL_ALWAYS_SOFTWARE
unset MESA_LOADER_DRIVER_OVERRIDE
unset MESA_GL_VERSION_OVERRIDE
unset MESA_GLSL_VERSION_OVERRIDE
unset BLENDER_USE_EGL

# Force X11 bridge & Hardware Virgl Driver
export DISPLAY=:0
export GALLIUM_DRIVER=virpipe

# Execute Blender
~/blender-3.6.0-linux-x64/blender "$@"
