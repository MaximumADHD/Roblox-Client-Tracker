--! Temporary until we can replace with UIBlox version - please do not use!
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local Roact = dependencies.Roact
local t = dependencies.t
local TextService = dependencies.TextService
local UIBlox = dependencies.UIBlox

local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local getIconSize = UIBlox.App.ImageSet.getIconSize
local withStyle = UIBlox.Core.Style.withStyle
local validateImage = UIBlox.Core.ImageSet.Validator.validateImage
local ControlState = UIBlox.Core.Control.Enum.ControlState
local Interactable = UIBlox.Core.Control.Interactable
local Badge = UIBlox.App.Indicator.Badge
local BadgeStates = UIBlox.App.Indicator.Enum.BadgeStates

local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local ImageSetComponentLabel = UIBlox.Core.ImageSet.Label
local ShimmerPanel = UIBlox.App.Loading.ShimmerPanel

local INNER_PADDING = 12
local LIST_PADDING = 4
local MAX_BUTTON_WIDTH = 240
local MAX_BUTTON_HEIGHT = 28

local getContentStyle = function(contentMap, controlState, style)
	local contentThemeClass = contentMap[controlState] or contentMap[ControlState.Default]

	local contentStyle = {
		Color = style.Theme[contentThemeClass].Color,
		Transparency = style.Theme[contentThemeClass].Transparency,
	}

	--Based on the design specs, the disabled and pressed state is 0.5 * alpha value
	if controlState == ControlState.Disabled or controlState == ControlState.Pressed then
		contentStyle.Transparency = 0.5 * contentStyle.Transparency + 0.5
	end

	return contentStyle
end

local PillWithAlert = Roact.PureComponent:extend("Pill")

PillWithAlert.validateProps = t.strictInterface({
	text = t.optional(t.string),
	isSelected = t.optional(t.boolean),
	isDisabled = t.optional(t.boolean),
	isLoading = t.optional(t.boolean),
	icon = t.union(t.string, validateImage),

	onActivated = t.callback,
})

function PillWithAlert:init()
	self.state = {
		controlState = ControlState.Initialize,
	}
end

function PillWithAlert:render()
	return withStyle(function(style)
		local font: any = style.Font

		local isSelected = self.props.isSelected
		local isDisabled = self.props.isDisabled
		local isLoading = self.props.isLoading
		local icon = self.props.icon
		local text = self.props.text
		local onActivated = self.props.onActivated

		local iconStateColorMap = {
			[ControlState.Default] = if isSelected then "SystemPrimaryContent" else "IconDefault",
			[ControlState.Hover] = if isSelected then "SystemPrimaryContent" else "IconEmphasis",
		}
		local textStateColorMap = {
			[ControlState.Default] = if isSelected then "SystemPrimaryContent" else "TextDefault",
			[ControlState.Hover] = if isSelected then "SystemPrimaryContent" else "TextEmphasis",
		}
		local buttonStateColorMap = {
			[ControlState.Default] = if isSelected then "SystemPrimaryDefault" else "BackgroundUIDefault",
			[ControlState.Hover] = if isSelected then "SystemPrimaryOnHover" else "BackgroundUIDefault",
		}

		local iconStyle = getContentStyle(iconStateColorMap, self.state.controlState, style)
		local textStyle = getContentStyle(textStateColorMap, self.state.controlState, style)
		local buttonStyle = getContentStyle(buttonStateColorMap, self.state.controlState, style)

		-- alertSize is the size of an empty Badge
		local alertSize = 12
		local iconSize = getIconSize(IconSize.Small)
		local fontSize = font.CaptionHeader.RelativeSize * font.BaseSize
		local textBounds = TextService:GetTextSize(text, fontSize, font.CaptionHeader.Font, Vector2.new(10000, 10000)).X

		local pillWidth = textBounds + (INNER_PADDING * 2)
		local textAreaSize = MAX_BUTTON_WIDTH - ((INNER_PADDING * 2) + (LIST_PADDING * 2) + iconSize + alertSize)
		return if isLoading
			then nil
			else Roact.createElement(Interactable, {
				Size = UDim2.new(0, pillWidth + (2 * LIST_PADDING) + iconSize + alertSize, 0, MAX_BUTTON_HEIGHT),
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
					Size = UDim2.new(0, textBounds + (2 * LIST_PADDING) + iconSize + alertSize, 1, 0),
					ClipsDescendants = true,
					BackgroundTransparency = 1,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						Padding = UDim.new(0, LIST_PADDING),
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = Enum.FillDirection.Horizontal,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
					}),
					Icon = Roact.createElement(ImageSetComponentLabel, {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Size = UDim2.fromOffset(iconSize, iconSize),
						BackgroundTransparency = 1,
						LayoutOrder = 2,
						Image = icon,
						ImageColor3 = iconStyle.Color,
						ImageTransparency = iconStyle.Transparency,
					}),
					TextArea = string.len(text) > 0 and Roact.createElement("Frame", {
						Size = UDim2.fromOffset(textBounds, fontSize),
						LayoutOrder = 3,
						BackgroundTransparency = 1,
					}, {
						PillText = Roact.createElement(StyledTextLabel, {
							text = text,
							fontStyle = font.CaptionHeader,
							colorStyle = textStyle,
							textTruncate = Enum.TextTruncate.AtEnd,
							textXAlignment = Enum.TextXAlignment.Left,
							textYAlignment = Enum.TextYAlignment.Center,
							size = UDim2.fromOffset(textAreaSize, fontSize),
							[Roact.Ref] = self.PillText,
						}),
						Roact.createElement("UISizeConstraint", {
							MaxSize = Vector2.new(textAreaSize, MAX_BUTTON_HEIGHT),
						}),
					}),
					BadgeFrame = Roact.createElement("Frame", {
						Size = UDim2.fromOffset(alertSize, alertSize),
						LayoutOrder = 4,
						BackgroundTransparency = 1,
					}, {
						Badge = Roact.createElement(Badge, {
							value = BadgeStates.isEmpty,
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
			}) or Roact.createElement(ShimmerPanel, {
				Size = UDim2.new(0, pillWidth + LIST_PADDING + iconSize, 0, MAX_BUTTON_HEIGHT),
				cornerRadius = UDim.new(1, 0),
			})
	end)
end

return PillWithAlert
