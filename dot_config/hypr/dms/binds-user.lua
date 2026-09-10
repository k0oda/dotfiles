-- DMS user keybind overrides (edit via Control Center or dms; do not remove this header)

hl.unbind("SUPER + B")
hl.bind("SUPER + B", hl.dsp.exec_cmd("dms ipc call defaultApp browser"), { description = "Default Web Browser: Open" })
hl.unbind("SUPER + E")
hl.bind(
	"SUPER + E",
	hl.dsp.exec_cmd("dms ipc call defaultApp fileManager"),
	{ description = "Default File Manager: Open" }
)
hl.unbind("SUPER + SHIFT + Backslash")
hl.bind(
	"SUPER + SHIFT + Backslash",
	hl.dsp.exec_cmd('sh -c "dms ipc call plugins toggle ephemera"'),
	{ description = "Ephemera" }
)
hl.unbind("SUPER + SHIFT + E")
