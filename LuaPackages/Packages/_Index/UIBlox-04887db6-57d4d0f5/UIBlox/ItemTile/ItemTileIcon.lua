local ItemTileRoot = script.Parent
local UIBloxRoot = ItemTileRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local withStyle = require(UIBloxRoot.Style.withStyle)
local t = require(UIBloxRoot.Parent.t)

local LoadableImage = require(UIBloxRoot.Loading.LoadableImage)

local ItemTileIcon = Roact.PureComponent:extend("ItemTileIcon")

local validateProps = t.strictInterface({
	Image = t.optional(t.string),
})

function ItemTileIcon:render()
	assert(validateProps(self.props))

	local image = self.props.Image

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		return Roact.createElement(LoadableImage, {
			BackgroundColor3 = theme.BackgroundUIDefault.Color,
			BackgroundTransparency = theme.BackgroundUIDefault.Transparency,
			Image = image,
			Size = UDim2.new(1, 0, 1, 0),
			useShimmerAnimationWhileLoading = true,
		})
	end)
end

return ItemTileIcon
