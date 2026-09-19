hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 10,

        border_size = 2,

        col = {
            active_border   = { colors = {"rgba(990000ff)", "rgba(ffffffaa)"}, angle = 45 },
            inactive_border = "rgba(404040ff)",
        },

        resize_on_border = false,

        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 12,
        rounding_power = 2,
        active_opacity   = 1.0,
        inactive_opacity = 0.95,
        fullscreen_opacity = 1.0,

        shadow = {
            enabled      = false,
            range        = 7,
            render_power = 3,
            color        = "rgba(850600dd)",
        },

        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            ignore_opacity = true,
            noise = 0,
            contrast = 1.1,
            new_optimizations = true,
            special = false,
            popups = true,
            xray = false,
            vibrancy  = 0.1696,
        },

        glow = {
        	enabled = false,
        	range = 10,
        	color = "rgba(850600dd)"
        },
    },
})
