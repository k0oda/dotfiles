-- Hyprland configuration (Lua) — https://wiki.hypr.land/configuring/

-- DMS_STARTUP_BEGIN
hl.on("hyprland.start", function()
	hl.exec_cmd("dbus-update-activation-environment --systemd --all")
	if not os.getenv("HYPRLAND_NO_SD_TARGET") then
		hl.exec_cmd("systemctl --user start hyprland-session.target")
	end
end)
-- DMS_STARTUP_END

hl.on("hyprland.start", function()
	hl.exec_cmd("xrdb -merge ~/.Xresources")
	hl.exec_cmd("wl-clip-persist --clipboard regular")
end)

hl.config({
	input = {
		follow_mouse = 2,
	},
	cursor = {
		no_warps = true,
	},
	decoration = {
		shadow = {
			enabled = true,
			range = 30,
			render_power = 4,
			offset = "0 5",
			color = "rgba(00000070)",
		},
	},
	ecosystem = {
		no_update_news = true,
		no_donation_nag = true,
	},
	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
	},
})

hl.window_rule({ match = { class = "^(org\\.wezfurlong\\.wezterm)$" }, tile = true })
hl.window_rule({ match = { class = "^(org\\.gnome\\.)" }, rounding = 12 })
hl.window_rule({ match = { class = "^(gnome-control-center)$" }, tile = true })
hl.window_rule({ match = { class = "^(pavucontrol)$" }, tile = true })
hl.window_rule({ match = { class = "^(nm-connection-editor)$" }, tile = true })
hl.window_rule({ match = { class = "^(org\\.gnome\\.Calculator)$" }, float = true, size = { 360, 520 } })
hl.window_rule({ match = { class = "^(gnome-calculator)$" }, float = true, size = { 360, 520 } })
hl.window_rule({ match = { class = "^(galculator)$" }, float = true, size = { 360, 520 } })
hl.window_rule({ match = { class = "^(blueman-manager)$" }, float = true })
hl.window_rule({ match = { class = "^(org\\.gnome\\.Nautilus)$" }, float = true })
hl.window_rule({ match = { class = "^(xdg-desktop-portal)$" }, float = true, size = { 800, 500 } })
hl.window_rule({ match = { class = "^(xdg-desktop-portal-gtk)$" }, float = true, size = { 800, 500 } })
hl.window_rule({
	match = { class = "^(steam)$", title = "^(notificationtoasts)" },
	no_initial_focus = true,
	pin = true,
})
hl.window_rule({
	match = { class = "^(firefox)$", title = "^(Picture-in-Picture)$" },
	float = true,
})
hl.window_rule({ match = { class = "^(zoom)$" }, float = true })
hl.layer_rule({ match = { namespace = "^(quickshell)$" }, no_anim = true })
hl.layer_rule({ match = { namespace = "^dms:.*" }, no_anim = true })

require("dms.colors")
require("dms.outputs")
require("dms.layout")
require("dms.animations")
require("dms.cursor")
require("dms.input")
require("dms.binds")
require("dms.binds-user")
require("dms.windowrules")
