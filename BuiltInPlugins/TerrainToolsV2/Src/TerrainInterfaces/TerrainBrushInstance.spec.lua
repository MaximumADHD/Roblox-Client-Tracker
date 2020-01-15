local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers

local MockMouse = require(TestHelpers.MockMouse)
local MockTerrain = require(TestHelpers.MockTerrain)

local TerrainBrush = require(script.Parent.TerrainBrushInstance)

return function()
	local terrain = MockTerrain.new()
	local mockMouse = MockMouse.new()

	it("should be creatable", function()
		expect(TerrainBrush.new({
			terrain = terrain,
			mouse = mockMouse,
		})).to.be.ok()
	end)

	it("should require an options table", function()
		expect(function()
			TerrainBrush.new(nil)
		end).to.throw()
	end)

	it("should require a terrain instance", function()
		expect(function()
			TerrainBrush.new({
				mouse = mockMouse,
			})
		end).to.throw()
	end)

	it("should require a mouse instance", function()
		expect(function()
			TerrainBrush.new({
				terrain = terrain,
			})
		end).to.throw()
	end)
end
