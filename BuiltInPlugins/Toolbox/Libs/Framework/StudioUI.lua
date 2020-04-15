--[[
	Public interface for StudioUI
]]

local StudioUI = {
	-- Default styles for the Framework
	StudioFrameworkStyles = require(script.StudioFrameworkStyles),

	-- PluginWidgets
	DockWidget = require(script.DockWidget),
	Dialog = require(script.Dialog),
	StyledDialog = require(script.StyledDialog),

	--PluginButton
	PluginToolbar = require(script.PluginToolbar),
	PluginButton = require(script.PluginButton),
}

return StudioUI
