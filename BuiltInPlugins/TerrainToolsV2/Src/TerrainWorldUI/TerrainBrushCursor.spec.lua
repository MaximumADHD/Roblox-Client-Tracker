local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers

local Workspace = game:GetService("Workspace")
local MockTerrain = require(TestHelpers.MockTerrain)

local TerrainBrushCursor = require(script.Parent.TerrainBrushCursor)

local FFlagTerrainToolsBrushInteractOnlyWithTerrain = game:GetFastFlag("TerrainToolsBrushInteractOnlyWithTerrain")

return function()
	local terrain = MockTerrain.new()

	it("should be creatable", function()
		expect(TerrainBrushCursor.new(terrain)).to.be.ok()
	end)

	if FFlagTerrainToolsBrushInteractOnlyWithTerrain then
		it("should create a cursor part", function()
			local tbc = TerrainBrushCursor.new()
			tbc:maybeCreate()
			
			expect(Workspace:FindFirstChild("TerrainCursorPart")).to.be.ok()  
			expect(Workspace.TerrainCursorPart:FindFirstChild("TerrainBrushCursorPart")).to.be.ok() 

			tbc:destroy()
		end)
	else
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
	
	end

	if FFlagTerrainToolsBrushInteractOnlyWithTerrain then
		it("should destroy its cursor part", function()
			local tbc = TerrainBrushCursor.new()
			tbc:maybeCreate()
			tbc:destroy()

			expect(Workspace:FindFirstChild("TerrainCursorPart")).to.never.be.ok()
		end)
	else
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
end
