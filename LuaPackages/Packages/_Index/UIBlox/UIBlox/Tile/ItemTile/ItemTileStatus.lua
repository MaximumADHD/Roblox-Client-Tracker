local TextService = game:GetService("TextService")

local ItemTileRoot = script.Parent
local TileRoot = ItemTileRoot.Parent
local UIBloxRoot = TileRoot.Parent

local Roact = require(UIBloxRoot.Parent.Roact)
local t = require(UIBloxRoot.Parent.t)
local withStyle = require(UIBloxRoot.Style.withStyle)

local enumValidator = require(UIBloxRoot.Utility.enumValidator)
local Images = require(UIBloxRoot.ImageSet.Images)
local ImageSetComponent = require(UIBloxRoot.ImageSet.ImageSetComponent)
local ItemTileEnums = require(ItemTileRoot.ItemTileEnums)

local ItemTileStatus = Roact.PureComponent:extend("ItemTileStatus")

local MAX_TEXT_SIZE = Vector2.new(50, 20)
local TEXT_PADDING = Vector2.new(10, 6)

local PADDING_LEFT = 12
local PADDING_TOP = 12

local validateProps = t.strictInterface({
	-- The text to display in the status component
	statusText = t.string,

	-- Enum specifying the style for the status component
	statusStyle = enumValidator(ItemTileEnums.StatusStyle),
})

local function getStyle(theme, statusStyle)
	if statusStyle == ItemTileEnums.StatusStyle.Info then
		return {
			Background = theme.SystemPrimaryDefault,
			Text = theme.SystemPrimaryContent,
		}
	elseif statusStyle == ItemTileEnums.StatusStyle.Alert then
		return {
			Background = theme.Alert,
			Text = theme.TextEmphasis,
		}
	else
		return {
			Background = theme.SystemPrimaryDefault,
			Text = theme.SystemPrimaryContent,
		}
	end
end

function ItemTileStatus:render()
	assert(validateProps(self.props))

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fontInfo = stylePalette.Font

		local statusText = self.props.statusText
		local statusStyle = self.props.statusStyle

		local font = fontInfo.CaptionHeader.Font
		local fontSize = fontInfo.BaseSize * fontInfo.CaptionHeader.RelativeSize
		local textSize = TextService:GetTextSize(statusText, fontSize, font, MAX_TEXT_SIZE)

		local styleInfo = getStyle(theme, statusStyle)

		return Roact.createElement(ImageSetComponent.Label, {
			BackgroundTransparency = 1,
			Image = Images["buttons/buttonFill"],
			ImageColor3 = styleInfo.Background.Color,
			ImageTransparency = styleInfo.Background.Transparency,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(8, 8, 9, 9),
			Position = UDim2.new(0, PADDING_LEFT, 0, PADDING_TOP),
			Size = UDim2.new(0, textSize.X + TEXT_PADDING.X, 0, textSize.Y + TEXT_PADDING.Y),
		}, {
			Text = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Font = font,
				TextSize = fontSize,
				Text = statusText,
				TextColor3 = styleInfo.Text.Color,
				TextTransparency = styleInfo.Text.TextTransparency,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				Size = UDim2.new(1, 0, 1, 0),
			}),
		})
	end)
end

return ItemTileStatus