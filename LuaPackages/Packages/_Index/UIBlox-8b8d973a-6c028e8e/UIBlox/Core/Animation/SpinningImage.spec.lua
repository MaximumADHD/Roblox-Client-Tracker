return function()
	local UIBloxRoot = script.Parent.Parent.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local SpinningImage = require(script.Parent.SpinningImage)
	local Images = require(UIBloxRoot.App.ImageSet.Images)

	it("should throw on empty image", function()
		local element = Roact.createElement(SpinningImage, {})
		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)

	it("should create and destroy without errors with valid image", function()
		local element = Roact.createElement(SpinningImage, {
			image = Images["icons/graphic/loadingspinner"],
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should accept all valid props", function()
		local element = Roact.createElement(SpinningImage, {
			image = Images["icons/graphic/loadingspinner"],
			position = UDim2.new(1, 2, 3, 4),
			anchorPoint = Vector2.new(1, 2),
			rotationRate = 1,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end