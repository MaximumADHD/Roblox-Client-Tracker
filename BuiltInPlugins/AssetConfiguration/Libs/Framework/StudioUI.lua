--[[
	Public interface for StudioUI
]]

local strict = require(script.Parent.Util.strict)

local StudioUI = strict({
	-- Default styles for the Framework
	StudioFrameworkStyles = require(script.StudioFrameworkStyles),

	-- PluginWidgets
	DockWidget = require(script.DockWidget),
	Dialog = require(script.Dialog),
	SearchBar = require(script.SearchBar),
	StyledDialog = require(script.StyledDialog),

	--PluginButton
	PluginToolbar = require(script.PluginToolbar),
	PluginButton = require(script.PluginButton),

	TitledFrame = require(script.TitledFrame),
})

return StudioUI
