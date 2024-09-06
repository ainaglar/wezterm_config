require 'tab.left-status'
require 'tab.right-status'
-- require 'tab.right-status-2'
require 'tab.tab-title'
require 'tab.new-tab-button'

local appearance = require 'config.appearance'
local keymaps = require 'config.keymaps'

local config = {}
appearance.apply_to_config(config)
keymaps.apply_to_config(config)
-- config.window_background_image = "C:\\Users\\xujih\\Pictures\\Saved Pictures\\Anime-Girl-Rain.png"
config.default_prog = {"C:\\Program Files\\PowerShell\\7\\pwsh.exe"}
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
return config
