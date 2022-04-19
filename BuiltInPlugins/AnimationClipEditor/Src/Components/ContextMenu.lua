--[[
	A Roact wrapper for the PluginMenu API.

	Props:
		table Actions = The set of actions to send to MakePluginMenu.
		function OnMenuOpened() = A callback for when the context menu has successfully opened.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local MakePluginMenu = require(Plugin.Src.Util.MakePluginMenu)

export type MenuItem = {
	Name: string,
	Items: ({EnumItem} | {MenuItem})?,
	Value: any?,
	CurrentValue: any?,
	ItemSelected: ((MenuItem) -> ())?,
	Checked: boolean?,
}

local ContextMenu = Roact.PureComponent:extend("ContextMenu")

function ContextMenu:showMenu()
	local props = self.props
	local actions = props.Actions
	local plugin = props.Plugin:get()

	props.OnMenuOpened()
	MakePluginMenu(plugin, actions)
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


ContextMenu = withContext({
	Plugin = ContextServices.Plugin,
})(ContextMenu)



return ContextMenu