# If running from tty1 start sway
set TTY1 (tty)
if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty1"
  set -x MOZ_ENABLE_WAYLAND 1
  set -x _JAVA_AWT_WM_NONREPARENTING 1
  exec sway
end
