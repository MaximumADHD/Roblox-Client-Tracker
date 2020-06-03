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


local Roact = require(Packages.Roact)
local t = require(Packages.t)

local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

local Controllable = require(UIBlox.Core.Control.Controllable)

local Interactable = Roact.PureComponent:extend("Interactable")

Interactable.validateProps = t.interface({
	-- Is the interactable disabled
	isDisabled = t.optional(t.boolean),

	-- function(oldState: ControlState, newState: ControlState)
	-- A callback function for when the interactable state has changed
	onStateChanged = t.callback,

	-- Note that this component can accept all valid properties of the Roblox ImageButton instance
})

function Interactable:render()
	local controllerProps = {
		onStateChanged = self.props.onStateChanged,
		isDisabled = self.props.isDisabled,
		userInteractionEnabled = self.props.userInteractionEnabled,
		controlComponent = {
			component = ImageSetComponent.Button,
			props = self.props,
			children = self.props[Roact.Children] or {},
		},
	}

	return Roact.createElement(Controllable, controllerProps)
end

return Interactable