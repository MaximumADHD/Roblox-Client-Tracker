local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local t = dependencies.t
local RoactRodux = dependencies.RoactRodux
local LoadingTile = require(FriendsCarousel.Components.LoadingTile)

local LoadingCarousel = Roact.Component:extend("LoadingCarousel")

local TILE_WIDTH: number = 100
local CONTEXTUAL_MAX_HEIGHT: number = 70
local CARD_PADDING: number = 10

export type Props = {
	layoutOrder: number,
	tileSize: number,
	tileInfoHeight: number,
	screenWidth: number,
	cardPadding: number,
}

LoadingCarousel.validateProps = t.strictInterface({
	layoutOrder = t.number,
	tileSize = t.number,
	tileInfoHeight = t.number,
	screenWidth = t.number,
	cardPadding = t.number,
})

LoadingCarousel.defaultProps = {
	layoutOrder = 0,
	tileSize = TILE_WIDTH,
	tileInfoHeight = CONTEXTUAL_MAX_HEIGHT,
	cardPadding = CARD_PADDING,
}

function LoadingCarousel:init()
	self.getListOfTiles = function()
		local props = self.props

		local numberOfTiles = math.ceil(props.screenWidth / props.tileSize)

		local listOfTiles = {
			ListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, props.cardPadding),
			}),
		}
		for i = 1, numberOfTiles, 1 do
			table.insert(
				listOfTiles,
				Roact.createElement(LoadingTile, {
					layoutOrder = i,
					tileSize = props.tileSize,
					tileInfoHeight = props.tileInfoHeight,
				})
			)
		end
		return listOfTiles
	end
end

function LoadingCarousel:render()
	local props: Props = self.props

	return Roact.createElement("Frame", {
		LayoutOrder = props.layoutOrder,
		BackgroundTransparency = 1,
	}, self.getListOfTiles())
end

return RoactRodux.connect(function(state)
	local screenSize = state.ScreenSize
	return {
		screenWidth = screenSize.X,
	}
end, nil)(LoadingCarousel)
