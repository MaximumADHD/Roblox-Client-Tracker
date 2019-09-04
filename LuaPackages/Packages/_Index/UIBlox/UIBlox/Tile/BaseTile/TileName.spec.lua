return function()
	local BaseTileRoot = script.Parent
	local UIBloxRoot = BaseTileRoot.Parent.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local TileName = require(script.Parent.TileName)

	it("should create and destroy without errors", function()
		local testName = "some test name"
		local element = mockStyleComponent({
			Frame = Roact.createElement("Frame", {
				Size = UDim2.new(0, 100, 0, 100),
			}, {
				TileName = Roact.createElement(TileName, {
					name = testName,
					maxHeight = 100,
					maxWidth = 100,
				})
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy with loading state without errors", function()
		local element = mockStyleComponent({
			Frame = Roact.createElement("Frame", {
				Size = UDim2.new(0, 100, 0, 100),
			}, {
				TileName = Roact.createElement(TileName, {
					name = nil,
					maxHeight = 100,
					maxWidth = 100,
				})
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end