return function()
	local AvatarToolsShared = script.Parent.Parent.Parent
	local Packages = AvatarToolsShared.Parent
	local Roact = require(Packages.Roact)

	local TestRunner = require(AvatarToolsShared.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local ScrollableGrid = require(script.Parent)

	local function createScrollableGrid()
		return Roact.createElement(ScrollableGrid, {
			Size = UDim2.new(0, 100, 0, 100),
			CellSize = UDim2.new(0, 20, 0, 20),
		})
	end

	it("should mount and unmount", function()
		runComponentTest(createScrollableGrid())
	end)
end