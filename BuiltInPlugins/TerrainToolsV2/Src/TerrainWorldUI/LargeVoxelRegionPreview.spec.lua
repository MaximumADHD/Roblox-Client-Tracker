local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local MockMouse = Framework.TestHelpers.Instances.MockMouse

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
