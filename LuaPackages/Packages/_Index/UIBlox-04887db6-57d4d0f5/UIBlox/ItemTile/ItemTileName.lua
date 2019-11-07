local ItemTileRoot = script.Parent
local UIBloxRoot = ItemTileRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local withStyle = require(UIBloxRoot.Style.withStyle)
local t = require(UIBloxRoot.Parent.t)

local ShimmerPanel = require(UIBloxRoot.Loading.ShimmerPanel)

local function makeLoadingSkeleton(textSize)
	return Roact.createElement(ShimmerPanel, {
		LayoutOrder = 0,
		Size = UDim2.new(0.8, 0, 0, textSize),
	})
end

local ItemTileName = Roact.PureComponent:extend("ItemTileName")

local validateProps = t.strictInterface({
	name = t.optional(t.string),
})

function ItemTileName:render()
	assert(validateProps(self.props))

	local name = self.props.name

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local font = stylePalette.Font
		local textSize = font.BaseSize * font.Header2.RelativeSize
		return (name == nil) and makeLoadingSkeleton(textSize) or Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			TextSize = textSize,
			TextColor3 = theme.TextEmphasis.Color,
			TextTransparency = theme.TextEmphasis.Transparency,
			Font = font.Header2.Font,
			Text = name,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextWrapped = true,
		})
	end)
end

return ItemTileName