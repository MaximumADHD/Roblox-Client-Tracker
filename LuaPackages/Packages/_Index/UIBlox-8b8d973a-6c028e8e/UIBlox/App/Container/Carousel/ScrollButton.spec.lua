return function()
	local Carousel = script.Parent
	local Container = Carousel.Parent
	local App = Container.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)

	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local Images = require(App.ImageSet.Images)
	local ScrollButton = require(script.Parent.ScrollButton)
	local icon = Images["icons/actions/cycleLeft"]

	it("should create and destroy ScrollButton without errors", function()
		it("should mount and unmount without issue", function()
			local element = mockStyleComponent({
				Item = Roact.createElement(ScrollButton, {
					icon = icon,
					callback = function()end,
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end