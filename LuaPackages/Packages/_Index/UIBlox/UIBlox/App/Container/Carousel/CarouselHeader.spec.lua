return function()
	local Carousel = script.Parent
	local Container = Carousel.Parent
	local App = Container.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)

	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local CarouselHeader = require(script.Parent.CarouselHeader)

	describe("should create and destroy CarouselHeader with default props without errors", function()
		it("should mount and unmount without issue", function()
			local element = mockStyleComponent({
				Item = Roact.createElement(CarouselHeader)
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)

	describe("should create and destroy CarouselHeader without errors", function()
		it("should mount and unmount without issue", function()
			local element = mockStyleComponent({
				Item = Roact.createElement(CarouselHeader, {
					headerText = "test header",
					onSeeAll = function() end,
					carouselMargin = 12,
					layoutOrder = 1,
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end