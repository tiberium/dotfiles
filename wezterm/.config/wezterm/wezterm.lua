local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS Nerd Font")
config.font_size = 15
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
-- config.macos_window_background_blur = 10
config.window_background_opacity = 0.75
config.window_padding = {
	left = 5,
	right = 5,
	top = 0,
	bottom = 0
}
config.audible_bell = "Disabled"

--config.color_scheme = "GruvboxDarkHard"
--config.color_scheme = "Tokio Night Storm (Gogh)"
--config.color_scheme = "Catpuccin Mocha"
--config.color_scheme = "Everforest Dark Hard"

local custom_color_scheme = wezterm.color.get_builtin_schemes()["Everforest Light (Gogh)"]
custom_color_scheme.background = "#000000"

config.color_schemes = {
	["Custom"] = custom_color_scheme,
}
config.color_scheme = "Custom"

return config
