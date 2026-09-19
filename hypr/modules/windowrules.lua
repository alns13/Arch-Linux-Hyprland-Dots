hl.window_rule ({
	name = "firefox-no-opacity",
	match = {
		class = "firefox"
	},
	opacity = "1.0 override" 
})

hl.window_rule ({
	name = "floating-kitty-appearance",
	match = {
		class = "kitty",
		float = true
	},
	opaque = true,
	no_blur = true,
	no_dim = true
})

hl.layer_rule({
  name      = "no-anim-for-selection",
  match     = { namespace = "selection" },
  no_anim   = true,
})
