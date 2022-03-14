local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local FreeFlowCarousel = require(Packages.UIBlox.App.Container.Carousel.FreeFlowCarousel)

local ITEM_SIZE = Vector2.new(120, 120)

local function createPlaceholderTiles(amount)
	local items = {}
	for i = 1, amount do
		table.insert(items, {
			Text = i,
			Size = UDim2.fromOffset(ITEM_SIZE.X, ITEM_SIZE.Y),
			BackgroundColor3 = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255)),
			LayoutOrder = i,
		})
	end
	return items
end

local function renderPlaceHolder(props)
	return Roact.createElement("TextLabel", props)
end

return {
	name = "FreeFlowCarousel",
	summary = "Container.Carousel.FreeFlowCarousel",
	story = Roact.createElement(FreeFlowCarousel, {
		headerText = "Name of Collection",
		onSeeAll = function()
			print("See all clicked")
		end,
		itemSize = ITEM_SIZE,
		itemList = createPlaceholderTiles(50),
		renderItem = renderPlaceHolder,
		loadNext = function()
			print("loadNext")
		end,
	}),
}
