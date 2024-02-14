--!nonstrict
local Control = script.Parent.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)
local withStyle = require(Core.Style.withStyle)
local validateImageSetData = require(Core.ImageSet.Validator.validateImageSetData)
local ControlState = require(Core.Control.Enum.ControlState)
local Interactable = require(Core.Control.Interactable)
local getContentStyle = require(Core.Button.getContentStyle)

local GenericTextLabel = require(Core.Text.GenericTextLabel.GenericTextLabel)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local ShimmerPanel = require(UIBlox.App.Loading.ShimmerPanel)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)

local INNER_PADDING = 12
local LIST_PADDING = 4
local MAX_BUTTON_WIDTH = 240
local MAX_BUTTON_HEIGHT = 28

local Pill = Roact.PureComponent:extend("Pill")

Pill.validateProps = t.strictInterface({
	-- Text of the pill button
	text = t.optional(t.string),
	-- Highlights the pill, becomes selected
	isSelected = t.optional(t.boolean),
	-- Deactivates pill button, unable to be pressed
	isDisabled = t.optional(t.boolean),
	-- Sets the pill to a loading shimmer
	isLoading = t.optional(t.boolean),
	-- Icons inside the pill button, can have an unlimited amount
	icon = t.union(t.string, validateImageSetData),
	-- Callback for the activated event
	onActivated = t.callback,
})

Pill.defaultProps = {
	text = "",
	isSelected = false,
	isDisabled = false,
	isLoading = false,
}

function Pill:init()
	self.state = {
		controlState = ControlState.Initialize,
	}
end

function Pill:render()
	return withStyle(function(style)
		local font = style.Font

		local isSelected = self.props.isSelected
		local isDisabled = self.props.isDisabled
		local isLoading = self.props.isLoading
		local icon = self.props.icon
		local text = self.props.text
		local onActivated = self.props.onActivated

		local iconStateColorMap = {
			[ControlState.Default] = isSelected and "SystemPrimaryContent" or "IconDefault",
			[ControlState.Hover] = isSelected and "SystemPrimaryContent" or "IconEmphasis",
		}
		local textStateColorMap = {
			[ControlState.Default] = isSelected and "SystemPrimaryContent" or "TextDefault",
			[ControlState.Hover] = isSelected and "SystemPrimaryContent" or "TextEmphasis",
		}
		local buttonStateColorMap = {
			[ControlState.Default] = isSelected and "SystemPrimaryDefault" or "BackgroundUIDefault",
			[ControlState.Hover] = isSelected and "SystemPrimaryOnHover" or "BackgroundUIDefault",
		}

		local iconStyle = getContentStyle(iconStateColorMap, self.state.controlState, style)
		local textStyle = getContentStyle(textStateColorMap, self.state.controlState, style)
		local buttonStyle = getContentStyle(buttonStateColorMap, self.state.controlState, style)

		local iconSize = getIconSize(IconSize.Small)
		local baseSize = font.BaseSize
		local fontSize = font.CaptionHeader.RelativeSize * baseSize
		local textBounds = GetTextSize(text, fontSize, font.CaptionHeader.Font, Vector2.new(10000, 10000)).X

		local pillWidth = textBounds + (INNER_PADDING * 2)
		local textAreaSize = MAX_BUTTON_WIDTH - ((INNER_PADDING * 2) + LIST_PADDING + iconSize)
		return not isLoading
				and Roact.createElement(Interactable, {
					Size = UDim2.new(0, pillWidth + LIST_PADDING + iconSize, 0, MAX_BUTTON_HEIGHT),
					BackgroundColor3 = buttonStyle.Color,
					BackgroundTransparency = buttonStyle.Transparency,
					AutoButtonColor = false,
					BorderSizePixel = 0,
					LayoutOrder = 1,
					isDisabled = isDisabled,
					[Roact.Event.Activated] = (not isLoading and onActivated) or nil,
					onStateChanged = function(_, newState)
						self:setState({
							controlState = newState,
						})
					end,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						Padding = UDim.new(0, 0),
						FillDirection = Enum.FillDirection.Horizontal,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
					}),
					Content = Roact.createElement("Frame", {
						Size = UDim2.new(0, textBounds + LIST_PADDING + iconSize, 1, 0),
						ClipsDescendants = true,
						BackgroundTransparency = 1,
					}, {
						UIListLayout = Roact.createElement("UIListLayout", {
							Padding = UDim.new(0, LIST_PADDING),
							FillDirection = Enum.FillDirection.Horizontal,
							VerticalAlignment = Enum.VerticalAlignment.Center,
							HorizontalAlignment = Enum.HorizontalAlignment.Center,
						}),
						Icon = Roact.createElement(ImageSetComponent.Label, {
							AnchorPoint = Vector2.new(0.5, 0.5),
							Size = UDim2.fromOffset(iconSize, iconSize),
							BackgroundTransparency = 1,
							Image = icon,
							ImageColor3 = iconStyle.Color,
							ImageTransparency = iconStyle.Transparency,
						}),
						TextArea = string.len(text) > 0 and Roact.createElement("Frame", {
							Size = UDim2.fromOffset(textBounds, fontSize),
							LayoutOrder = 2,
							BackgroundTransparency = 1,
						}, {
							PillText = Roact.createElement(GenericTextLabel, {
								Text = text,
								BackgroundTransparency = 1,
								fontStyle = font.CaptionHeader,
								colorStyle = textStyle,
								TextTruncate = Enum.TextTruncate.AtEnd,
								Size = UDim2.fromOffset(textAreaSize, fontSize),
								TextXAlignment = Enum.TextXAlignment.Left,
								TextYAlignment = Enum.TextYAlignment.Center,
								[Roact.Ref] = self.PillText,
							}),
							Roact.createElement("UISizeConstraint", {
								MaxSize = Vector2.new(textAreaSize, MAX_BUTTON_HEIGHT),
							}),
						}),
						UISizeConstraint = Roact.createElement("UISizeConstraint", {
							MaxSize = Vector2.new(MAX_BUTTON_WIDTH - (INNER_PADDING * 2), MAX_BUTTON_HEIGHT),
						}),
					}),
					UICorner = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(1, 0),
					}),
					UISizeConstraint = Roact.createElement("UISizeConstraint", {
						MaxSize = Vector2.new(MAX_BUTTON_WIDTH, MAX_BUTTON_HEIGHT),
					}),
				})
			or Roact.createElement(ShimmerPanel, {
				Size = UDim2.new(0, pillWidth + LIST_PADDING + iconSize, 0, MAX_BUTTON_HEIGHT),
				cornerRadius = UDim.new(1, 0),
			})
	end)
end

return Pill
