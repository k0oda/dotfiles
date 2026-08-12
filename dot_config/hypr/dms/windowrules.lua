-- DMS Window Rules — managed by DankMaterialShell
-- Do not edit manually; changes may be overwritten

-- DMS-RULE: id=wr_1786231748744245948, name=org.telegram.desktop
hl.window_rule({ match = { class = "^org.telegram.desktop$" }, float = true, size = { 450, 860 } })

-- DMS-RULE: id=wr_1786493949942097318, name=Zen Picture-in-Picture
hl.window_rule({
	match = { class = "^app.zen_browser.zen$", title = "^Картинка в картинке$" },
	float = true,
	pin = true,
	size = { 800, 450 },
})
