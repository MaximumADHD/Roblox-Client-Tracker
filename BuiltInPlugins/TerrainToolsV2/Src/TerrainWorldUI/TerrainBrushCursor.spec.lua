local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers

local MockTerrain = require(TestHelpers.MockTerrain)

local TerrainBrushCursor = require(script.Parent.TerrainBrushCursor)

return function()
	local terrain = MockTerrain.new()

	it("should be creatable", function()
		expect(TerrainBrushCursor.new(terrain)).to.be.ok()
	end)

	it("should require a terrain instance", function()
		expect(function()
			TerrainBrushCursor.new(nil)
		end).to.throw()
	end)

	it("should create a cursor part", function()
		local cursorPartTarget = Instance.new("Folder")

		local tbc = TerrainBrushCursor.new(cursorPartTarget)
		tbc:maybeCreate()

		expect(tbc:getCursorPart()).to.be.ok()
		expect(#cursorPartTarget:GetChildren() > 0).to.equal(true)

		cursorPartTarget:Destroy()
	end)

	it("should destroy its cursor part", function()
		local cursorPartTarget = Instance.new("Folder")

		local tbc = TerrainBrushCursor.new(cursorPartTarget)
		tbc:maybeCreate()
		tbc:destroy()

		expect(tbc:getCursorPart()).to.never.be.ok()
		expect(#cursorPartTarget:GetChildren() == 0).to.equal(true)

		cursorPartTarget:Destroy()
	end)
end
