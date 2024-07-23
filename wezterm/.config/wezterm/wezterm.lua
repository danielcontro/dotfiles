local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.enable_tab_bar = false

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.font = wezterm.font("JetBrains Mono")

config.color_scheme = "Catppuccin Mocha"

-- config.color_scheme = "Catppuccin Latte"

return config
