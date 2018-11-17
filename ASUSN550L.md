# ASUS N550L Arch Linux

### Screen brightness

Set the `acpi_osi` kernel parameter in `/etc/default/grub`

```
GRUB_CMDLINE_LINUX_DEFAULT="quiet acpi_osi= "
```

Run

```
$ sudo grub-mkconfig -o /boot/grub/grub.cfg
```

### Keyboard backlight

Install `asus-kbd-backlight`

Add to `/etc/sudoers` for hotkey usage

```
{user} ALL= NOPASSWD: /usr/bin/asus-kbd-backlight
```

I haven't found a way to add `acpi_backlight` as a working kernel parameter for my system.


### Volume keys

Install `ponymix`

Bind XF86AudioMute, XF86AudioLowerVolume & XF86AudioRaiseVolume
