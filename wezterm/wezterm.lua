local wezterm = require("wezterm")

local act = wezterm.action

local config = wezterm.config_builder()

config.color_scheme = "tokyonight_night"
config.colors = {
	split = "#555555",

	visual_bell = "#000000",
	tab_bar = {
		active_tab = {
			bg_color = "#1a1a1a",
			fg_color = "#c0c0c0",
			intensity = "Bold",
			underline = "Single",
			italic = false,
			strikethrough = false,
		},
	},
}

config.audible_bell = "Disabled"
config.visual_bell = {
	fade_in_function = "EaseIn",
	fade_in_duration_ms = 64,
	fade_out_function = "EaseOut",
	fade_out_duration_ms = 32,
}

config.font = wezterm.font({ family = "JetBrainsMono Nerd Font" })
config.font_size = 11.5
config.line_height = 1.05
config.native_macos_fullscreen_mode = false

config.keys = {
	--
	{ key = "R", mods = "CTRL|SHIFT", action = act.ReloadConfiguration },
	{ key = "-", mods = "CTRL|META", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "\\", mods = "CTRL|META", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "h", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Left") },
	{ key = "j", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Down") },
	{ key = "k", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Up") },
	{ key = "l", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Right") },
	{ key = "LeftArrow", mods = "META|SHIFT", action = act.ActivateTabRelative(1) },
	{ key = "RightArrow", mods = "META|SHIFT", action = act.ActivateTabRelative(-1) },
	{ key = "Enter", mods = "CTRL|SHIFT", action = act.ToggleFullScreen },
	{ key = "Enter", mods = "META|SHIFT", action = act.TogglePaneZoomState },
	--[[
	--]]
}

config.inactive_pane_hsb = {
	saturation = 0.7,
	brightness = 0.4,
}

config.window_decorations = "INTEGRATED_BUTTONS | RESIZE"
config.window_padding = {
	left = 10,
	right = 10,
	top = 10,
	bottom = 10,
}

config.window_background_opacity = 0.75

return config
