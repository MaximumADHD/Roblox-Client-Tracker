return function()
	local Carousel = script.Parent
	local Container = Carousel.Parent
	local App = Container.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)

	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local FreeFlowCarousel = require(script.Parent.FreeFlowCarousel)

	describe("should create and destroy with required props without errors", function()
		it("should mount and unmount without issue", function()
			local items = {}
			for i=1, 10 do
				table.insert(items, {
					Text = i,
					Size = UDim2.fromOffset(100, 100),
				})
			end

			local renderItem = function(props)
				return Roact.createElement("TextLabel", props)
			end

			local element = mockStyleComponent({
				Item = Roact.createElement(FreeFlowCarousel, {
					itemList = items,
					renderItem = renderItem,
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)

	describe("should create and destroy FreeFlowCarousel without errors", function()
		it("should mount and unmount without issue", function()
			local items = {}
			for i=1, 10 do
				table.insert(items, {
					Text = i,
					Size = UDim2.fromOffset(100, 100),
				})
			end

			local renderItem = function(props)
				return Roact.createElement("TextLabel", props)
			end

			local loadNext = function()
				for i=1, 10 do
					table.insert(items, {
						Text = i,
						Size = UDim2.fromOffset(100, 100),
					})
				end
			end

			local element = mockStyleComponent({
				Item = Roact.createElement(FreeFlowCarousel, {
					identifier = function(item)
						return tostring(item)
					end,
					headerText = "test header",
					onSeeAll = function()end,
					itemList = items,
					renderItem = renderItem,
					itemSize = Vector2.new(100, 100),
					itemPadding = 12,
					carouselMargin = 36,
					layoutOrder = 1,
					loadNext = loadNext,
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end