--!nonstrict
local Table = script.Parent
local App = Table.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local t = require(Packages.t)
local validateColorInfo = require(Core.Style.Validator.validateColorInfo)
local validateFontInfo = require(Core.Style.Validator.validateFontInfo)
local validateTypographyInfo = require(Core.Style.Validator.validateTypographyInfo)

local Roact = require(Packages.Roact)
local React = require(Packages.React)
local withStyle = require(Core.Style.withStyle)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)
local Images = require(App.ImageSet.Images)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local PADDING_ITEM = 8
local NAVIGATION_PUSH_RIGHT_SMALL = "icons/navigation/pushRight_small"

local CellTailDescription = Roact.PureComponent:extend("CellTailDescription")

CellTailDescription.validateProps = t.strictInterface({
	text = t.optional(t.string),
	textColor = t.optional(validateColorInfo),
	textFont = t.optional(t.union(validateFontInfo, validateTypographyInfo)),
	renderTextOverride = t.optional(t.callback),
	showArrow = t.optional(t.boolean),
	infoIcon = t.optional(t.string),
	testId = t.optional(t.string),
})

CellTailDescription.defaultProps = {
	showArrow = false,
	infoIcon = nil,
	testId = "--uiblox-cell-tail-description",
}

function CellTailDescription:init()
	self.getDescription = function(text, textColor, textFont, layoutOrder, override)
		local textLabel = nil

		if text then
			if override then
				textLabel = override()
			end

			if not textLabel then
				textLabel = Roact.createElement(GenericTextLabel, {
					LayoutOrder = layoutOrder,
					AutomaticSize = Enum.AutomaticSize.XY,
					Text = text,
					colorStyle = textColor,
					fontStyle = textFont,
					BackgroundTransparency = 1,
				})
			end
		end

		return textLabel
	end
end

function CellTailDescription:render()
	local text = self.props.text
	local override = self.props.renderTextOverride
	local showArrow = self.props.showArrow
	local hasInfoIcon = self.props.infoIcon ~= nil

	if not text and not showArrow and not hasInfoIcon then
		return nil
	end

	return withStyle(function(style)
		local textColor = self.props.textColor or style.Theme.TextDefault
		local textFont = self.props.textFont or style.Font.Body

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			AutomaticSize = Enum.AutomaticSize.XY,
			[React.Tag] = if self.props.testId then `data-testid={self.props.testId}` else nil,
		}, {
			ListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, PADDING_ITEM),
			}),
			Description = self.getDescription(text, textColor, textFont, 1, override),
			RightArrow = showArrow and Roact.createElement(ImageSetComponent.Label, {
				LayoutOrder = 2,
				Size = if UIBloxConfig.enableScalingForSomeEdpIcons
					then UDim2.fromOffset(getIconSize(IconSize.Small, style), getIconSize(IconSize.Small, style))
					else UDim2.fromOffset(getIconSize(IconSize.Small), getIconSize(IconSize.Small)),
				BackgroundTransparency = 1,
				Image = Images[NAVIGATION_PUSH_RIGHT_SMALL],
				ImageColor3 = style.Theme.TextEmphasis.Color,
				ImageTransparency = style.Theme.TextEmphasis.Transparency,
			}) or nil,
			InfoIcon = hasInfoIcon and Roact.createElement(ImageSetComponent.Label, {
				LayoutOrder = 2,
				Size = if UIBloxConfig.enableScalingForSomeEdpIcons
					then UDim2.fromOffset(getIconSize(IconSize.Small, style), getIconSize(IconSize.Small, style))
					else UDim2.fromOffset(getIconSize(IconSize.Small), getIconSize(IconSize.Small)),
				Image = self.props.infoIcon,
				ImageColor3 = style.Theme.IconEmphasis.Color,
				ImageTransparency = style.Theme.IconEmphasis.Transparency,
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
			}) or nil,
		})
	end)
end

return CellTailDescription
