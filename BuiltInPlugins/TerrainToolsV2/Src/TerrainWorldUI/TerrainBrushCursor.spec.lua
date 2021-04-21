local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers

local Workspace = game:GetService("Workspace")
local MockTerrain = require(TestHelpers.MockTerrain)

local TerrainBrushCursor = require(script.Parent.TerrainBrushCursor)

return function()
	local terrain = MockTerrain.new()

	it("should be creatable", function()
		expect(TerrainBrushCursor.new(terrain)).to.be.ok()
	end)

	it("should create a cursor part", function()
		local tbc = TerrainBrushCursor.new()
		tbc:maybeCreate()

		expect(Workspace:FindFirstChild("TerrainCursorPart")).to.be.ok()  
		expect(Workspace.TerrainCursorPart:FindFirstChild("TerrainBrushCursorPart")).to.be.ok()

		tbc:destroy()
	end)

	it("should destroy its cursor part", function()
		local tbc = TerrainBrushCursor.new()
		tbc:maybeCreate()
		tbc:destroy()

		expect(Workspace:FindFirstChild("TerrainCursorPart")).to.never.be.ok()
	end)
end
