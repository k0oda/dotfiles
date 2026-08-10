-- DMS user keybind overrides (edit via Control Center or dms; do not remove this header)

hl.unbind("SUPER + SHIFT + Backslash")
hl.bind("SUPER + SHIFT + Backslash", hl.dsp.exec_cmd("sh -c \"dms ipc call plugins toggle ephemera\""), { description = "Ephemera" })
hl.unbind("SUPER + B")
hl.bind("SUPER + B", hl.dsp.exec_cmd("gtk-launch helium"), { description = "Helium" })
hl.unbind("SUPER + E")
hl.bind("SUPER + E", hl.dsp.exec_cmd("nautilus"), { description = "Files" })
hl.unbind("SUPER + SHIFT + E")
