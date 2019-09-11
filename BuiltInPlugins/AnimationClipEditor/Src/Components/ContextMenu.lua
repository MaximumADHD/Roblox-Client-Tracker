--[[
	A Roact wrapper for the PluginMenu API.

	Props:
		table Actions = The set of actions to send to MakePluginMenu.
		function OnMenuOpened() = A callback for when the context menu has successfully opened.
]]

-- HttpService is included for GenerateGUID
local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local PluginContext = require(Plugin.Src.Context.Plugin)
local getPlugin = PluginContext.getPlugin
local MakePluginMenu = require(Plugin.Src.Util.MakePluginMenu)

local ContextMenu = Roact.PureComponent:extend("ContextMenu")

function ContextMenu:showMenu()
	local props = self.props
	local actions = props.Actions
	local plugin = getPlugin(self)

	props.OnMenuOpened()
	MakePluginMenu(plugin, HttpService:GenerateGUID(), actions)
end

function ContextMenu:didMount()
	self:showMenu()
end

function ContextMenu:didUpdate()
	self:showMenu()
end

function ContextMenu:render()
	return nil
end

return ContextMenu