--!nonstrict
local ItemTileRoot = script.Parent
local TileRoot = ItemTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBlox.Core.Style.withStyle)

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)
local Images = require(UIBlox.App.ImageSet.Images)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local ItemTileEnums = require(TileRoot.Enum.ItemTileEnums)

local ItemTileStatus = Roact.PureComponent:extend("ItemTileStatus")

local MAX_TEXT_SIZE = Vector2.new(50, 20)
local TEXT_PADDING = Vector2.new(10, 6)

ItemTileStatus.validateProps = t.strictInterface({
	-- The text to display in the status component
	statusText = t.string,

	-- Enum specifying the style for the status component
	statusStyle = ItemTileEnums.StatusStyle.isEnumValue,
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
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fontInfo = stylePalette.Font

		local paddingLeft, paddingTop
		if UIBloxConfig.itemTileOverlayPaddingUseTokens then
			local tokens = stylePalette.Tokens
			paddingLeft = tokens.Global.Size_100
			paddingTop = tokens.Global.Size_100
		else
			paddingLeft = 12
			paddingTop = 12
		end

		local statusText = self.props.statusText
		local statusStyle = self.props.statusStyle

		local font = fontInfo.CaptionHeader.Font
		local fontSize = fontInfo.BaseSize * fontInfo.CaptionHeader.RelativeSize
		local textSize = GetTextSize(statusText, fontSize, font, MAX_TEXT_SIZE)

		local styleInfo = getStyle(theme, statusStyle)

		return Roact.createElement(ImageSetComponent.Label, {
			BackgroundTransparency = 1,
			Image = Images["component_assets/circle_17"],
			ImageColor3 = styleInfo.Background.Color,
			ImageTransparency = styleInfo.Background.Transparency,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(8, 8, 9, 9),
			Position = UDim2.new(0, paddingLeft, 0, paddingTop),
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
