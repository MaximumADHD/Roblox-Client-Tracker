--[[
	Display a list of available targets
]]

local main = script.Parent.Parent.Parent
local Roact = require(main.Packages.Roact)
local RoactRodux = require(main.Packages.RoactRodux)
local Framework = require(main.Packages.Framework)
local InspectorContext = require(main.Src.Util.InspectorContext)

local Dash = require(main.Packages.Dash)
local values = Dash.values
local keys = Dash.keys

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local InstanceTreeView = UI.InstanceTreeView

local Actions = main.Src.Actions
local SelectTarget = require(Actions.SelectTarget)
local ToggleTarget = require(Actions.ToggleTarget)

local TargetTree = Roact.PureComponent:extend("TargetTree")

local UserInputService = game:GetService("UserInputService")

function TargetTree:init()
	self.onSelectTarget = function(change)
		local target = self:getTargetFromChange(change)
		if not target then
			return
		end

		local inspector = self.props.Inspector:get()
		local roactInspectorApi = inspector:attachRoactTree(target.BridgeId, target.Id)

		-- Load the root of the roact tree
		roactInspectorApi:getRoot()
		self.props.selectTarget(target)

		UserInputService.MouseIconEnabled = true
	end
end

function TargetTree:getTargetFromChange(change)
	local value = keys(change)[1]
	if value.BridgeId then
		return value
	else
		return nil
	end
end

function TargetTree:render()
	local props = self.props
	return Roact.createElement(InstanceTreeView, {
		Instances = values(props.Instances),
		Expansion = props.Expansion,
		Selection = {},
		OnExpansionChange = props.toggleTarget,
		OnSelectionChange = self.onSelectTarget,
		Size = UDim2.new(1, 0, 1, 0),
		Style = "BorderBox",
	})
end

TargetTree = withContext({
	Inspector = InspectorContext
})(TargetTree)

return RoactRodux.connect(
	function(state, props)
		return {
			Instances = state.Targets.targets,
			Expansion = state.Targets.expandedTargets
		}
	end,
	function(dispatch)
		return {
			selectTarget = function(target)
				dispatch(SelectTarget(target))
			end,
			toggleTarget = function(change)
				dispatch(ToggleTarget(change))
			end,
		}
	end
)(TargetTree)
