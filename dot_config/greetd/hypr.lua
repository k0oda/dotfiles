hl.env("DMS_RUN_GREETER", "1")

hl.config({
	input = {
		kb_layout = "us,ru",
		kb_options = "caps:super",
		numlock_by_default = false,
		follow_mouse = 2,
		accel_profile = "flat",
		touchpad = {
			tap_to_click = true,
			natural_scroll = true,
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

hl.monitor({ output = "", mode = "highres", position = "auto", scale = 1 })
