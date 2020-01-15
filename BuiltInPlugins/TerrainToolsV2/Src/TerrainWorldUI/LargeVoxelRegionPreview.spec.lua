local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers

local MockMouse = require(TestHelpers.MockMouse)

local LargeVoxelRegionPreview = require(script.Parent.LargeVoxelRegionPreview)

return function()
	it("should be creatable", function()
		local lvrp = LargeVoxelRegionPreview.new(MockMouse.new())
		expect(lvrp).to.be.ok()
		lvrp:destroy()
	end)

	it("should require a mouse instance", function()
		expect(function()
			LargeVoxelRegionPreview.new(nil)
		end).to.throw()
	end)
end
