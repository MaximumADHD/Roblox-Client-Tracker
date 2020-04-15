return function()
	local BaseTile = script.Parent
	local Tile = BaseTile.Parent
	local App = Tile.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)
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