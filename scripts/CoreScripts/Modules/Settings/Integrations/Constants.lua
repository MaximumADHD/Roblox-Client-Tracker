--[[
Constants used in Settings Integrations
]]

local Settings = script:FindFirstAncestor("Settings")

-- Modules
local GameSettingsConstants = require(Settings.Resources.GameSettingsConstants)

-- GameSettings Constants
local GAMESETTINGS = {
	PAGE_ID = "gamesettings",
	TAB_HEADER = {
		NAME = "GameSettingsTab",
		TEXT = "Settings",
		ICON = "icons/common/settings",
	},
	LAYOUT_ORDER = GameSettingsConstants.SETTINGS_MENU_LAYOUT_ORDER,
}

-- Traversal history constants
local TRAVERSAL_HISTORY = {
	TAB_HEADER = {
		NAME = "TraversalHistoryWrapper",
		TEXT_KEY = "CoreScripts.TopBar.Traversal.History",
	}
}

return {
	GAMESETTINGS = GAMESETTINGS,
	TRAVERSAL_HISTORY = TRAVERSAL_HISTORY,
}