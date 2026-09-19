--bezier curves
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.85 ,0.21}, {0.89, 0.81} } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("smooth",         { type = "bezier", points = { {0.25, 0.1},  {0.25, 1}    } })

--spring curves
hl.curve("easy",           { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })

--animations
hl.animation({ leaf = "global",        enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true,  speed = 2,    bezier = "almostLinear" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 2,    bezier = "easeOutQuint", style = "popin 98%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 2.5,  bezier = "easeOutQuint", style = "popin 80%" })
hl.animation({ leaf = "windowsMove",   enabled = true,  speed = 1.8,  bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 6,    bezier = "linear" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 2,    bezier = "almostLinear", style = "popin 90%" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.5,  bezier = "linear", style = "popin 90%" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 3.5,    bezier = "smooth", style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3.5, bezier = "smooth", style = "slidefadevert top" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "smooth" })
