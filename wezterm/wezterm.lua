local wezterm = require 'wezterm';
local colorscheme = require 'colors'

--  _       __           __
-- | |     / /__  ____  / /____  _________ ___
-- | | /| / / _ \/_  / / __/ _ \/ ___/ __ `__ \
-- | |/ |/ /  __/ / /_/ /_/  __/ /  / / / / / /
-- |__/|__/\___/ /___/\__/\___/_/  /_/ /_/ /_/
--
config = {};

--     ______            __                     __   ______      __
--    / ____/___  ____  / /_   ____ _____  ____/ /  / ____/___  / /___  _____
--   / /_  / __ \/ __ \/ __/  / __ `/ __ \/ __  /  / /   / __ \/ / __ \/ ___/
--  / __/ / /_/ / / / / /_   / /_/ / / / / /_/ /  / /___/ /_/ / / /_/ / /
-- /_/    \____/_/ /_/\__/   \__,_/_/ /_/\__,_/   \____/\____/_/\____/_/
--
config.font = wezterm.font_with_fallback({
	"Fira Code",
	"FiraCode Nerd Font",
	"monospace"
});
config.font_size = 11.0;
config.harfbuzz_features = {
	"ss07"
}

config.colors = {
	foreground		=	"#FFFFFF",
	background		=	"#000000",

	cursor_bg		=	"#FFFFFF",
	cursor_border	=	"#FFFFFF",

	selection_fg	=	"#C7C7C7",
	selection_bg	=	"#454545",

	ansi			=	valerie.ansi,
	brights			=	valerie.brights
}
config.bold_brightens_ansi_colors = true;
config.default_cursor_style = "BlinkingBlock";
config.cursor_blink_rate = 800;
config.window_background_opacity = 0.85;
config.text_background_opacity = 1.0;

--  _       ___           __
-- | |     / (_)___  ____/ /___ _      __
-- | | /| / / / __ \/ __  / __ \ | /| / /
-- | |/ |/ / / / / / /_/ / /_/ / |/ |/ /
-- |__/|__/_/_/ /_/\__,_/\____/|__/|__/
--
config.enable_tab_bar = true;
config.hide_tab_bar_if_only_one_tab = true;
config.tab_bar_at_bottom = true;
config.window_padding = {
	top = 12,
	bottom = 12,

	left = 8,
	right = 8
}
config.enable_scroll_bar = false;
config.window_decorations = "NONE";
config.window_close_confirmation = "NeverPrompt";
config.scrollback_lines = 512;
config.initial_rows = 26;
config.initial_cols = 90;
config.adjust_window_size_when_changing_font_size = false;

return config
