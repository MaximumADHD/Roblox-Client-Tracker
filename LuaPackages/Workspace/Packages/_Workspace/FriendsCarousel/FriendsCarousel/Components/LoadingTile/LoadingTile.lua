local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local t = dependencies.t
local UIBlox = dependencies.UIBlox
local ShimmerPanel = UIBlox.App.Loading.ShimmerPanel
local UIVariants = require(FriendsCarousel.Common.UIVariants)

local LoadingTile = Roact.PureComponent:extend("LoadingTile")

local TILE_WIDTH: number = 100
local CONTEXTUAL_MAX_HEIGHT: number = 70

export type Props = {
	layoutOrder: number,
	tileSize: number,
	tileInfoHeight: number,
	friendsCarouselExperimentVariant: string,
}

LoadingTile.validateProps = t.strictInterface({
	layoutOrder = t.number,
	tileSize = t.number,
	tileInfoHeight = t.number,
	friendsCarouselExperimentVariant = t.string,
})

LoadingTile.defaultProps = {
	layoutOrder = 0,
	tileSize = TILE_WIDTH,
	tileInfoHeight = CONTEXTUAL_MAX_HEIGHT,
	friendsCarouselExperimentVariant = UIVariants.CIRCULAR_TILES,
}

function LoadingTile:render()
	local props: Props = self.props

	local cornerRadius = if props.friendsCarouselExperimentVariant == UIVariants.SQUARE_TILES
		then UDim.new(0, 10)
		else UDim.new(0, props.tileSize)

	return Roact.createFragment({
		LoadingTile = Roact.createElement("Frame", {
			LayoutOrder = props.layoutOrder,
			Size = UDim2.fromOffset(props.tileSize, 0),
			BackgroundTransparency = 1,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 10),
			}),
			PlayerTile = Roact.createElement(ShimmerPanel, {
				LayoutOrder = 1,
				Size = UDim2.fromOffset(props.tileSize, props.tileSize),
				cornerRadius = cornerRadius,
			}),
		}),
	})
end

return LoadingTile
