local Table = script.Parent
local App = Table.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local t = require(Packages.t)
local validateColorInfo = require(Core.Style.Validator.validateColorInfo)
local validateFontInfo = require(Core.Style.Validator.validateFontInfo)

local Roact = require(Packages.Roact)
local withStyle = require(Core.Style.withStyle)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)
local Images = require(App.ImageSet.Images)

local PADDING_ITEM = 8
local NAVIGATION_PUSH_RIGHT_SMALL = "icons/navigation/pushRight_small"

local CellTailDescription = Roact.PureComponent:extend("CellTailDescription")

CellTailDescription.validateProps = t.strictInterface({
	text = t.optional(t.string),
	textColor = t.optional(validateColorInfo),
	textFont = t.optional(validateFontInfo),
	showArrow = t.optional(t.boolean),
})

CellTailDescription.defaultProps = {
	showArrow = false,
}

function CellTailDescription:render()
	local text = self.props.text
	local showArrow = self.props.showArrow

	if not text and not showArrow then
		return nil
	end

	return withStyle(function(style)
		local textColor = self.props.textColor or style.Theme.TextDefault
		local textFont = self.props.textFont or style.Font.Body

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			AutomaticSize = Enum.AutomaticSize.XY,
		}, {
			ListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, PADDING_ITEM),
			}),
			Description = text and Roact.createElement(GenericTextLabel, {
				LayoutOrder = 1,
				AutomaticSize = Enum.AutomaticSize.XY,
				Text = text,
				colorStyle = textColor,
				fontStyle = textFont,
				BackgroundTransparency = 1,
			}) or nil,
			RightArrow = showArrow and Roact.createElement(ImageSetComponent.Label, {
				LayoutOrder = 2,
				Size = UDim2.fromOffset(getIconSize(IconSize.Small), getIconSize(IconSize.Small)),
				BackgroundTransparency = 1,
				Image = Images[NAVIGATION_PUSH_RIGHT_SMALL],
				ImageColor3 = style.Theme.TextEmphasis.Color,
				ImageTransparency = style.Theme.TextEmphasis.Transparency,
			}) or nil,
		})
	end)
end

return CellTailDescription
