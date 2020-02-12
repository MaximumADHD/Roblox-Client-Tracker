-- TODO: DEVTOOLS-3590

local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers

local MockTerrain = require(TestHelpers.MockTerrain)

local PartConverter = require(script.Parent.PartConverter)

return function()
	local terrain = MockTerrain.new()

	it("should be creatable", function()
		expect(PartConverter.new({
			terrain = terrain,
		})).to.be.ok()
	end)
end
