local wezterm = require("wezterm")
local config = wezterm.config_builder and wezterm.config_builder() or {}

config.enable_wayland = true
config.default_cursor_style = "SteadyBar"
config.automatically_reload_config = true
config.window_close_confirmation = "NeverPrompt"
config.adjust_window_size_when_changing_font_size = false
config.window_decorations = "NONE"
config.check_for_updates = false
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false
config.font_size = 18
config.font = wezterm.font("JetBrains Mono", { weight = "Bold" })
config.enable_tab_bar = false

config.window_padding = {
	left = 2,
	right = 0,
	top = 2,
	bottom = 0,
}
config.keys = {

	{ key = "v", mods = "CTRL", action = wezterm.action({ SendString = "\x16" }) },

	{ key = "v", mods = "CTRL", action = wezterm.action.PasteFrom("PrimarySelection") },
}

config.window_background_opacity = 0.5

-- Hyperlink rules (from your original config)
config.hyperlink_rules = {
	-- Matches: a URL in parens: (URL)
	{
		regex = "\\((\\w+://\\S+)\\)",
		format = "$1",
		highlight = 1,
	},
	-- Matches: a URL in brackets: [URL]
	{
		regex = "\\[(\\w+://\\S+)\\]",
		format = "$1",
		highlight = 1,
	},
	-- Matches: a URL in curly braces: {URL}
	{
		regex = "\\{(\\w+://\\S+)\\}",
		format = "$1",
		highlight = 1,
	},
	-- Matches: a URL in angle brackets: <URL>
	{
		regex = "<(\\w+://\\S+)>",
		format = "$1",
		highlight = 1,
	},
	-- Then handle URLs not wrapped in brackets
	{
		regex = "[^(]\\b(\\w+://\\S+[)/a-zA-Z0-9-]+)",
		format = "$1",
		highlight = 1,
	},
	-- implicit mailto link
	{
		regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b",
		format = "mailto:$0",
	},
}

-- Color scheme configuration
local themes = {
	nord = "Nord (Gogh)",
	onedark = "One Dark (Gogh)",
	tokyonight = "Tokyo Night (Gogh)",
}

-- Apply color scheme
config.color_scheme = themes["tokyonight"]

return config
