--[[
	(REQUIRES CHANGES)
	This component will be replaced in future by a simple RDL compliant component currently built in Ribbon that does not use deprecated Button.

	Required Props:
		callback OnClick: The function that will be called when this button is clicked to turn on and off. (value: boolean) -> ()

	Optional Props:
		Style Style: The style with which to render this component.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		Vector2 AnchorPoint: The pivot point of this component's Position prop.
		boolean Disabled: Whether or not this button can be clicked.
		number LayoutOrder: The layout order of this component.
		UDim2 Position: The position of this component.
		boolean Selected: whether the button should be on or off.
		UDim2 Size: The size of this component.
		string Style: The style with which to render this component. If nil, uses
			Toggle{state}Image. If "Checkbox" uses Checkbox{state}Image. If anything
			else, errors.
		string Text: A text to be displayed over the image if any.
		number ZIndex: The render index of this component.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local prioritize = require(Framework.Util.prioritize)
local StyleModifier = require(Framework.Util.StyleModifier)
local Typecheck = require(Framework.Util.Typecheck)

local Button = require(Framework.UI.Components.DEPRECATED_Button)
local HoverArea = require(Framework.UI.Components.HoverArea)

local ToggleButton = Roact.PureComponent:extend("ToggleButton")
Typecheck.wrap(ToggleButton, script)

ToggleButton.defaultProps = {
	Disabled = false,
	Selected = false,
	Text = "",
}

function ToggleButton:init()
	self.onClick = function()
		local isDisabled = self.props.Disabled
		local onClick = self.props.OnClick
		if not isDisabled then
			onClick(not self.props.Selected)
		end
	end
end

function ToggleButton:render()
	local props = self.props
	local style = props.Stylizer

	local anchorPoint = props.AnchorPoint
	local isDisabled = props.Disabled
	local isSelected = props.Selected
	local layoutOrder = props.LayoutOrder
	local position = props.Position
	local size = prioritize(props.Size, style.Size)
	local text = props.Text
	local zIndex = props.ZIndex

	local styleModifier
	if isDisabled and isSelected then
		styleModifier = StyleModifier.DisabledAndSelected
	elseif isDisabled then
		styleModifier = StyleModifier.Disabled
	elseif isSelected then
		styleModifier = StyleModifier.Selected
	end

	return Roact.createElement(Button, {
		AnchorPoint = anchorPoint,
		LayoutOrder = layoutOrder,
		OnClick = self.onClick,
		StyleModifier = styleModifier,
		Position = position,
		Size = size,
		Style = style,
		Text = text,
		ZIndex = zIndex,
	}, {
		PointingHand = not isDisabled and Roact.createElement(HoverArea, { Cursor = "PointingHand" }) or nil,
		TeachingCallout = if props[Roact.Children] then props[Roact.Children].TeachingCallout else nil,
	})
end

ToggleButton = withContext({
	Stylizer = ContextServices.Stylizer,
})(ToggleButton)

return ToggleButton
