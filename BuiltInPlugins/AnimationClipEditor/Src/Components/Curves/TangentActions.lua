--!strict
--[[
	Handles curve tangent actions and the context menu.
	When this component renders, it determines which actions should be enabled.
	This allows keyboard shortcuts to work only when they provide meaningful action.
	When the ShowMenu prop is true, this component also spawns a context menu
	to show the actions controlled by this component. Disabled actions will appear
	greyed out in this menu.

	Information about the selected tangent comes from the RightClickContextInfo table.

	Properties:
		ShowMenu: Whether the menu should be rendered

		OnMenuOpened: Callback for when the context menu has successfully opened
		OnSetTangent: Callback to set (or clear) the tangent value
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local isEmpty = require(Plugin.Src.Util.isEmpty)

local ContextMenu = require(Plugin.Src.Components.ContextMenu)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local TangentActions = Roact.PureComponent:extend("TangentActions")

export type Props = {
	-- State/Context
	InstanceName: string,
	Path: {string},
	PluginActions: any,
	Side: string,
	Tick: number,

	-- Properties
	ShowMenu: boolean,
	OnMenuOpened: () -> (),
	OnSetTangent: () -> (),
}

function TangentActions:makeMenuActions(): {any}
	local pluginActions = self.props.PluginActions

	return {
		pluginActions:get("ClearTangent"),
		pluginActions:get("ZeroTangent"),
	}
end

function TangentActions:addAction(action: any, func: () -> ()): ()
	if action then
		action.Enabled = false
		table.insert(self.Actions, action)
		table.insert(self.Connections, action.Triggered:Connect(func))
	end
end

function TangentActions:didMount(): ()
	local actions = self.props.PluginActions
	self.Connections = {}
	self.Actions = {}

	self:addAction(actions:get("ClearTangent"), function(): ()
		local props = self.props
		props.OnSetTangent(props.InstanceName, props.Path, props.Tick, props.Side)
	end)

	self:addAction(actions:get("ZeroTangent"), function(): ()
		local props = self.props
		props.OnSetTangent(props.InstanceName, props.Path, props.Tick, props.Side, 0)
	end)
end

function TangentActions:render(): (any)
	local props = self.props
	local showMenu = props.ShowMenu
	local actions = self.Actions

	local pluginActions = self.props.PluginActions
	if not isEmpty(pluginActions) and actions ~= nil then
		for _, action in ipairs(actions) do
			action.Enabled = false
		end

		pluginActions:get("ClearTangent").Enabled = true
		pluginActions:get("ZeroTangent").Enabled = true
	end

	return showMenu and Roact.createElement(ContextMenu, {
		Actions = self:makeMenuActions(),
		OnMenuOpened = props.OnMenuOpened,
	}) or nil
end

function TangentActions:willUnmount(): ()
	if self.Connections then
		for _, connection in ipairs(self.Connections) do
			connection:Disconnect()
		end
		self.Connections = {}
	end
	if self.Actions then
		for _, action in ipairs(self.Actions) do
			action.Enabled = false
		end
	end
end

TangentActions = withContext({
	PluginActions = ContextServices.PluginActions,
})(TangentActions)

local function mapStateToProps(state): ({[string]: any})
	local status = state.Status

	return {
		InstanceName = status.RightClickContextInfo.InstanceName,
		Path = status.RightClickContextInfo.Path,
		Tick = status.RightClickContextInfo.Tick,
		Side = status.RightClickContextInfo.Side,
	}
end

local function mapDispatchToProps(): ({[string]: any})
	return {}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TangentActions)
