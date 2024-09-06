
local wezterm = require 'wezterm'
wezterm.on("update-status", function(window, pane)
	local basename = function(s)
		return string.gsub(s, "(.*[/\\])(.*)", "%2")
	end
	local cmd = pane:get_foreground_process_name()
	cmd = cmd and basename(cmd) or ""

	local time = wezterm.strftime("%H:%M")
	window:set_right_status(wezterm.format({
		{ Text = " | " },
		{ Foreground = { Color = "#e0af68" } },
		{ Text = wezterm.nerdfonts.fa_code .. "  " .. cmd },
		{ Text = " | " },
		{ Text = wezterm.nerdfonts.md_clock .. "  " .. time },
		{ Text = "  " },
	}))
end)
