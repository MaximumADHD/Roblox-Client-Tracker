--[[
	This is a generic button stand in button components that provides control state changes.
	It accepts all props that can be passed into a ImageButton in additional to
		onStateChanged: function(oldState: ControlState, newState: ControlState)
]]
local ButtonRoot = script.Parent
local CoreRoot = ButtonRoot.Parent
local UIBloxRoot = CoreRoot.Parent
local Packages = UIBloxRoot.Parent


local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)

local ImageSetComponent = require(UIBloxRoot.ImageSet.ImageSetComponent)

local Controllable = require(UIBloxRoot.Core.Control.Controllable)

local ControllableButton = Roact.PureComponent:extend("ControllableButton")

local validateProps = t.interface({
	--Is the button disabled
	isDisabled = t.optional(t.boolean),

	--onStateChanged: function(oldState: ControlState, newState: ControlState)
	--	A callback function for when the button state has changed.
	onStateChanged = t.optional(t.callback),

	-- Note that this component can accept all valid properties of the Roblox ImageButton instance
})

function ControllableButton:render()
	assert(validateProps(self.props))
	local controllerProps = {
		[Roact.Children] = Cryo.None,
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

return ControllableButton