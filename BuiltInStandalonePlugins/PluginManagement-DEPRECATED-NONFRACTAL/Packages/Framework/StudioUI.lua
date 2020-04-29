--[[
	Public interface for StudioUI
]]

local Src = script

local StudioFrameworkStyles = require(Src.StudioFrameworkStyles)

local DockWidget = require(Src.DockWidget)
local Dialog = require(Src.Dialog)

local PluginToolbar = require(Src.PluginToolbar)
local PluginButton = require(Src.PluginButton)

local StudioUI = {
	-- Default styles for the Framework
	StudioFrameworkStyles = StudioFrameworkStyles,

	-- PluginWidgets
	DockWidget = DockWidget,
	Dialog = Dialog,

	--PluginButton
	PluginToolbar = PluginToolbar,
	PluginButton = PluginButton,
}

return StudioUI
