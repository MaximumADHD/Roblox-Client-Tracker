local ItemTileRoot = script.Parent
local UIBloxRoot = ItemTileRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local withStyle = require(UIBloxRoot.Style.withStyle)

local LoadableImage = require(UIBloxRoot.Loading.LoadableImage)

local ItemTileIcon = Roact.PureComponent:extend("ItemTileIcon")

function ItemTileIcon:render()
	local image = self.props.Image

	local renderFunction = function(stylePalette)
		local theme = stylePalette.Theme
		return Roact.createElement(LoadableImage, {
			BackgroundColor3 = theme.BackgroundUIDefault.Color,
			BackgroundTransparency = theme.BackgroundUIDefault.Transparency,
			Image = image,
			Size = UDim2.new(1, 0, 1, 0),
			useShimmerAnimationWhileLoading = true,
		})
	end

	return withStyle(renderFunction)
end

return ItemTileIcon
