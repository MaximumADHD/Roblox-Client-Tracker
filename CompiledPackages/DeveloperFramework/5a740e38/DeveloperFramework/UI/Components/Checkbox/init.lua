--[[
	(USES STYLESHEETS)
	A check button followed by an optional text label.

	Required Props:
		callback OnClick: The function that will be called when the button is clicked.

	Optional Props:
		any Checked: The check button state. Can be a boolean or the Indeterminate symbol.
		boolean Disabled: Whether or not this button can be clicked.
		any Key: The key that will be sent back to the OnClick function.
		number LayoutOrder: The layout order of this component.
		Style Style: The style with which to render this component.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		string Text: The text to display after the check button.
		boolean TextWrapped: Whether or not to wrap the text.
		UDim2 Position: The position of the checkbox.
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)

local Button = require(Framework.UI.Components.DEPRECATED_Button)
local IconButton = require(Framework.UI.Components.IconButton)
local Pane = require(Framework.UI.Components.Pane)
local TextLabel = require(Framework.UI.Components.TextLabel)

local Util = require(Framework.Util)
local StyleModifier = require(Framework.Util.StyleModifier)
local Symbol = Util.Symbol
local Typecheck = require(Framework.Util.Typecheck)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local getFFlagDevFrameworkKeyboardNavComponentChanges =
	require(Framework.SharedFlags.getFFlagDevFrameworkKeyboardNavComponentChanges)

local Checkbox = Roact.PureComponent:extend("Checkbox")
Typecheck.wrap(Checkbox, script)

Checkbox.Indeterminate = Symbol.named("Indeterminate")

Checkbox.defaultProps = {
	Checked = false,
	Disabled = false,
	Key = "",
	OnClick = function() end,
}

function Checkbox:init()
	self.onClick = function()
		local isDisabled = self.props.Disabled
		local onClick = self.props.OnClick
		if not isDisabled and onClick then
			onClick(self.props.Key)
		end
	end
end

function Checkbox:render()
	local props = self.props

	local isChecked = props.Checked
	local isDisabled = props.Disabled
	local layoutOrder = props.LayoutOrder
	local text = props.Text or ""
	local textWrapped = props.TextWrapped

	local style = props.Stylizer

	local DEPRECATED_styleModifier
	local stateTag: string?
	if isDisabled then
		if not supportsStyleSheets then
			DEPRECATED_styleModifier = StyleModifier.Disabled
		end
		stateTag = "Disabled"
	elseif isChecked == Checkbox.Indeterminate then
		if not supportsStyleSheets then
			DEPRECATED_styleModifier = StyleModifier.Indeterminate
		end
		stateTag = "Indeterminate"
	elseif isChecked then
		if not supportsStyleSheets then
			DEPRECATED_styleModifier = StyleModifier.Selected
		end
		stateTag = "Checked"
	end

	local tags = if supportsStyleSheets
		then joinTags(
			"Component-Checkbox",
			stateTag,
			props[React.Tag] or "X-Fit X-Left X-Middle X-RowS IconOnly Compact"
		)
		else nil

	local buttonProps = if supportsStyleSheets
		then {
			LeftIcon = {},
			OnClick = self.onClick,
			[React.Tag] = tags,
		}
		else {
			OnClick = self.onClick,
			Size = style.ImageSize,
			Style = style,
			StyleModifier = DEPRECATED_styleModifier,
		}

	if text == "" then
		return Roact.createElement(
			if supportsStyleSheets then IconButton else Button,
			join(buttonProps, {
				LayoutOrder = layoutOrder,
			}),
			props[Roact.Children]
		)
	else
		local children = {
			Button = Roact.createElement(
				if supportsStyleSheets then IconButton else Button,
				join(buttonProps, {
					LayoutOrder = 1,
				})
			),
			Label = Roact.createElement(
				TextLabel,
				if supportsStyleSheets
					then {
						LayoutOrder = 2,
						Text = text,
						TextWrapped = textWrapped,
						[React.Tag] = joinTags("X-Fit", stateTag),
					}
					else {
						AutomaticSize = Enum.AutomaticSize.XY,
						LayoutOrder = 2,
						StyleModifier = DEPRECATED_styleModifier,
						Text = text,
						TextWrapped = textWrapped,
					}
			),
		}

		local paneProps = if supportsStyleSheets
			then {
				Position = props.Position,
				Selectable = if getFFlagDevFrameworkKeyboardNavComponentChanges() then false else nil,
				[React.Tag] = tags,
			}
			else {
				AutomaticSize = Enum.AutomaticSize.XY,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				Layout = Enum.FillDirection.Horizontal,
				OnClick = self.onClick,
				Position = props.Position,
				Selectable = if getFFlagDevFrameworkKeyboardNavComponentChanges() then false else nil,
				Spacing = style.Spacing,
			}

		if props[Roact.Children] then
			children = join({
				Wrapper = Roact.createElement(Pane, paneProps, children),
			}, props[Roact.Children])

			return Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = layoutOrder,
			}, children)
		else
			return Roact.createElement(
				Pane,
				join(paneProps, {
					LayoutOrder = layoutOrder,
				}),
				children
			)
		end
	end
end

if not supportsStyleSheets then
	Checkbox = withContext({
		Stylizer = ContextServices.Stylizer,
	})(Checkbox)
end

return Checkbox
