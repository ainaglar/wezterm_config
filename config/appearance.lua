local wezterm = require('wezterm')
local appearance = {}

function appearance.apply_to_config(config)
	config.window_background_image = '/home/adas_zct/Pictures/Anime-Girl-Rain.png'
	config.color_scheme = 'tokyonight_moon'
	--设置字体
	config.font = wezterm.font_with_fallback{
		"ComicShannsMono Nerd Font",
		'楷体',
	}
	--设置字体大小
	config.font_size = 14.0
	config.window_background_opacity = 0.9
	config.win32_system_backdrop = 'Acrylic'
	config.window_decorations = "RESIZE"
	config.check_for_updates = false
	config.window_close_confirmation = "AlwaysPrompt"
	config.scrollback_lines = 3000
	config.default_workspace = "ainaglar"
	config.adjust_window_size_when_changing_font_size = false
	config.animation_fps = 60
	config.cursor_blink_ease_in = 'Constant'
	config.cursor_blink_ease_out = 'Constant'
	--初始化窗口大小i
	config.initial_rows = 30
	config.initial_cols = 120
	--设置填充
	config.window_padding = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 5,
	}
	-- Dim inactive panes
	config.inactive_pane_hsb = {
		saturation = 0.24,
		brightness = 0.5
	}
	config.use_fancy_tab_bar = false
	config.status_update_interval = 1000
	config.tab_bar_at_bottom = false
end

return appearance
