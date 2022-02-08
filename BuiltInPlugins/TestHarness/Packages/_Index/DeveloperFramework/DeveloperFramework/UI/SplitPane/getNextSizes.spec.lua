return function()
	local getNextSizes = require(script.Parent.getNextSizes)

	it("should calculate next unclamped size correctly", function()
		local offset = 60
		local outerSize = 100
		local isForwards = true
		local draggingPaneIndex = 1
		local result = getNextSizes({
			Sizes = {
				UDim.new(0.5, 0),
				UDim.new(0.5, 0)
			},
			MinSizes = {
				UDim.new(0, 10),
				UDim.new(0, 10)
			},
		}, offset, outerSize, isForwards, draggingPaneIndex)
		expect(result[1]).to.equal(UDim.new(0, 60))
		expect(result[2]).to.equal(UDim.new(0, 50))
	end)

	it("should calculate next clamped size correctly", function()
		local offset = 60
		local outerSize = 100
		local isForwards = true
		local draggingPaneIndex = 1
		local result = getNextSizes({
			ClampSize = true,
			Sizes = {
				UDim.new(0.5, 0),
				UDim.new(0.5, 0)
				},
			MinSizes = {
				UDim.new(0, 10),
				UDim.new(0, 10)
				},
		}, offset, outerSize, isForwards, draggingPaneIndex)
		expect(result[1]).to.equal(UDim.new(0, 60))
		expect(result[2]).to.equal(UDim.new(0, 40))
	end)

	it("should calculate next max size correctly", function()
		local offset = 80
		local outerSize = 100
		local isForwards = true
		local draggingPaneIndex = 1
		local result = getNextSizes({
			ClampSize = true,
			Sizes = {
				UDim.new(0.5, 0),
				UDim.new(0.5, 0)
			},
			MinSizes = {
				UDim.new(0, 30),
				UDim.new(0, 30)
			},
		}, offset, outerSize, isForwards, draggingPaneIndex)
		expect(result[1]).to.equal(UDim.new(0, 70))
		expect(result[2]).to.equal(UDim.new(0, 30))
	end)

	it("should convert to scale correctly", function()
		local offset = 80
		local outerSize = 100
		local isForwards = true
		local draggingPaneIndex = 1
		local result = getNextSizes({
			ClampSize = true,
			UseScale = true,
			Sizes = {
				UDim.new(0.5, 0),
				UDim.new(0.5, 0)
			},
			MinSizes = {
				UDim.new(0, 30),
				UDim.new(0, 30)
			},
		}, offset, outerSize, isForwards, draggingPaneIndex)
		expect(result[1]).to.equal(UDim.new(0.7, 0))
		expect(result[2]).to.equal(UDim.new(0.3, 0))
	end)
end
