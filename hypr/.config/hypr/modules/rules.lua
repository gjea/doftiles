hl.window_rule({
	match = {
		class = ".*",
	},
	suppress_event = "maximize",
})

hl.window_rule({
	match = {
		class = "^$",
		title = "^$",
		xwayland = 1,
		float = 1,
		fullscreen = 0,
		pin = 0,
	},
	no_focus = true,
})

hl.window_rule({
	name = "pavucontroledit",
	match = {
		class = "^(org.pulseaudio.pavucontrol)$",
	},
	move = "1550 56",
	float = true,
})

hl.window_rule({
	match = {
		class = "^(steam)$",
	},
	move = "workspace 1 silent",
})

hl.window_rule({
	match = {
		class = "^(vesktop)$",
	},
	move = "workspace 2 silent",
})

hl.window_rule({
	match = {
		class = "^(vivaldi-stable)$",
	},
	move = "workspace 3 silent",
})
hl.window_rule({
	match = {
		class = "^vesktop",
	},
	move = "workspace 2 silent",
})
