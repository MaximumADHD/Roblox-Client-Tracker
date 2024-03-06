--[[
	Interactable is a component that can be used as a container that responds to control state changes.
	It accepts all props that can be passed into a ImageButton in additional to
		isDisabled: bool = false
		onStateChanged: function(oldState: ControlState, newState: ControlState)
]]
local Control = script.Parent
local Core = Control.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local Cryo = require(Packages.Cryo)
local React = require(Packages.React)

local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

local Controllable = require(UIBlox.Core.Control.Controllable)

local ControlStateEnum = require(Core.Control.Enum.ControlStateEnum)
type ControlState = ControlStateEnum.ControlState

type table = { [any]: any }
-- Note that this component can accept all valid properties of the Roblox ImageButton instance
type Props = {
	isDisabled: boolean?,
	userInteractionEnabled: boolean?,
	onStateChanged: (oldState: ControlState, newState: ControlState) -> nil,
	children: table?,
} & table

local Interactable = function(props: Props)
	local controllerProps = {
		onStateChanged = props.onStateChanged,
		isDisabled = props.isDisabled,
		userInteractionEnabled = props.userInteractionEnabled,
		controlComponent = {
			component = ImageSetComponent.Button,
			props = props,
			children = props.children or {},
		},
	}

	return React.createElement(Controllable, controllerProps)
end

return React.forwardRef(function(props, ref)
	return React.createElement(
		Interactable,
		Cryo.Dictionary.join(props, {
			forwardedRef = ref,
		})
	)
end)
