#### to autostart something on specific TTY put this in .zprofile (or bash_profile for other users):
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec Hyprland
fi

#
# ~/.bash_profile
#
export ANDROID_SDK_ROOT=/opt/android-sdk/build-tools/29.0.2/
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/
export PATH=$PATH:/opt/android-sdk/platform-tools/

[[ -f ~/.bashrc ]] && . ~/.bashrc
