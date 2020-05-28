--[[
	Create a generic button that can be themed for different state the background and content.
]]
local Button = script.Parent
local Core = Button.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)

local Interactable = require(Core.Control.Interactable)

local ControlState = require(Core.Control.Enum.ControlState)

local withStyle = require(UIBlox.Core.Style.withStyle)

local validateImage = require(Core.ImageSet.Validator.validateImage)

local IconButton = Roact.PureComponent:extend("GenericButton")

local validateProps = t.interface({
	size = t.optional(t.UDim2),
	--The icon of the button
	icon = validateImage,

	iconSize = t.optional(t.UDim2),
	iconColor = t.optional(t.Color3),
	iconTransparency = t.optional(t.number),

	--Is the button disabled
	isDisabled = t.optional(t.boolean),

	--Is the button loading
	isLoading = t.optional(t.boolean),

	--The activated callback for the button
	onActivated = t.callback,

	--THe state change callback for the button
	onStateChanged = t.optional(t.callback),

	--A Boolean value that determines whether user events are ignored and sink input
	userInteractionEnabled = t.optional(t.boolean),
})

IconButton.defaultProps = {
	size = UDim2.new(0, 36, 0, 36),
	onStateChanged = function(oldState, newState)
	end,
	iconTransparency = 0,
	LayoutOrder = 1,
}

function IconButton:onStateChangedInternal(oldState, newState)
	if newState == ControlState.Pressed then
		self:setState({
			iconTransparency = (1 + self.props.iconTransparency) * 0.5
		})
	else
		self:setState({
			iconTransparency = self.props.iconTransparency
		})
	end

	self.props.onStateChanged(oldState, newState)
end

function IconButton:init()
	self.state = {
		iconTransparency = self.props.iconTransparency,
	}
end

function IconButton:render()
	return withStyle(function(style)
		assert(validateProps(self.props))
		assert(t.table(style), "Style provider is missing.")

		local isDisabled = self.props.isDisabled

		if self.props.isLoading then
			isDisabled = true
		end

		return Roact.createElement(Interactable, {
			Size = self.props.size,
			Image = self.props.icon,
			ImageSize = self.props.ImageSize,
			BackgroundTransparency = 1,
			ImageColor3 = self.props.iconColor or Cryo.None,
			ImageTransparency = self.state.iconTransparency,
			[Roact.Event.Activated] = self.props.onActivated,
			isDisabled = isDisabled,
			onStateChanged = function(oldState, newState)
				self:onStateChangedInternal(oldState, newState)
			end,
			LayoutOrder = self.props.LayoutOrder,
		})
	end)
end

return IconButton
