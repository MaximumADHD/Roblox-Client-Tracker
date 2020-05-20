return function()
	local Carousel = script.Parent
	local Container = Carousel.Parent
	local App = Container.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)

	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local HorizontalCarousel = require(script.Parent.HorizontalCarousel)

	it("should create and destroy with required props without errors", function()
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
				Item = Roact.createElement(HorizontalCarousel, {
					itemList = items,
					renderItem = renderItem,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)

	it("should create and destroy HorizontalCarousel without errors", function()
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

			local loadPrevious = function()
				items = {}
				for i=1, 10 do
					table.insert(items, {
						Text = i,
						Size = UDim2.fromOffset(100, 100),
					})
				end
			end

			local element = mockStyleComponent({
				Item = Roact.createElement(HorizontalCarousel, {
					identifier = function(item)
						return tostring(item)
					end,
					itemList = items,
					renderItem = renderItem,
					itemSize = Vector2.new(100, 100),
					itemPadding = 12,
					carouselMargin = 36,
					layoutOrder = 1,
					loadNext = loadNext,
					loadPrevious = loadPrevious,
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end