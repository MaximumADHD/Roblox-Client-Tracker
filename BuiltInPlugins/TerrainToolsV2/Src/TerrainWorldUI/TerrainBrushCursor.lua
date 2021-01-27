local Plugin = script.Parent.Parent.Parent

local FFlagTerrainToolsBrushInteractOnlyWithTerrain = game:GetFastFlag("TerrainToolsBrushInteractOnlyWithTerrain")

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape
local ToolId = TerrainEnums.ToolId

local applyPivot = require(Plugin.Src.Util.applyPivot)

local BrushShapeToPartShape = {
	[BrushShape.Sphere] = Enum.PartType.Ball,
	[BrushShape.Cube] = Enum.PartType.Block,
	[BrushShape.Cylinder] = Enum.PartType.Cylinder,
}

local function cursorPartTransparencyFromStrength(strength)
	return 0.9 - (strength * 0.3)
end

local function createCursorPart()
	local cursorPart = Instance.new("Part")
	cursorPart.Name = "TerrainBrushCursorPart"
	cursorPart.TopSurface = Enum.SurfaceType.Smooth
	cursorPart.BottomSurface = Enum.SurfaceType.Smooth
	cursorPart.CastShadow = false
	cursorPart.Locked = true
	cursorPart.Anchored = true
	cursorPart.CanCollide = false
	cursorPart.BrickColor = BrickColor.new("Toothpaste")
	cursorPart.Material = Enum.Material.Neon
	cursorPart.Archivable = false

	cursorPart.Size = Vector3.new(Constants.VOXEL_RESOLUTION, Constants.VOXEL_RESOLUTION, Constants.VOXEL_RESOLUTION)
	cursorPart.Shape = BrushShapeToPartShape[BrushShape.Sphere]
	cursorPart.Transparency = cursorPartTransparencyFromStrength(Constants.INITIAL_BRUSH_STRENGTH)
	return cursorPart
end

local TerrainBrushCursor = {}
TerrainBrushCursor.__index = TerrainBrushCursor

function TerrainBrushCursor.new(terrain)
	local self = setmetatable({
		_terrain = terrain,
		_cursorPart = nil,
		_cursorFolder = nil
	}, TerrainBrushCursor)

	if not FFlagTerrainToolsBrushInteractOnlyWithTerrain then
		assert(self._terrain, "TerrainBrushCursor needs a terrain instance")
	end

	return self
end

function TerrainBrushCursor.isVisibleForOperation(operationSettings)
	if operationSettings.currentTool == ToolId.None then
		return false
	end
	return not operationSettings.heightPicker
end

function TerrainBrushCursor:getCursorPart()
	return self._cursorPart
end

function TerrainBrushCursor:destroy()
	if self._cursorPart then
		self._cursorPart:Destroy()
		self._cursorPart = nil
	end

	if self._cursorFolder then
		self._cursorFolder:Destroy()
		self._cursorFolder = nil
	end
end

function TerrainBrushCursor:hide()
	if self._cursorPart then
		self._cursorPart.Parent = nil
	end
end

-- If the cursor does not exist or is not visible, creates a new one and makes it visible
function TerrainBrushCursor:maybeCreate()
	if not self._cursorFolder then
		self._cursorFolder = Instance.new("Folder")
		self._cursorFolder.Name = "TerrainCursorPart"
	end

	if not self._cursorFolder.Parent then
		self._cursorFolder.Parent = game:GetService("Workspace")
	end

	if not self._cursorPart then
		self._cursorPart = createCursorPart()
	end

	if not self._cursorPart.Parent then
		self._cursorPart.Parent = FFlagTerrainToolsBrushInteractOnlyWithTerrain 
			and self._cursorFolder
			or self._terrain
	end
end

--[[
Dict options =
	number size
	number height
	number strength
	Vector3 location
	BrushShape shape
	PivotType pivot
	bool mouseDown
]]
function TerrainBrushCursor:update(options)
	if not self._cursorPart then
		return
	end

	local size = options.size * Constants.VOXEL_RESOLUTION
	local height = options.height * Constants.VOXEL_RESOLUTION
	local brushShape = options.shape

	self._cursorPart.Shape = BrushShapeToPartShape[options.shape]

	if options.mouseDown then
		self._cursorPart.Transparency = 0.9
	else
		self._cursorPart.Transparency = cursorPartTransparencyFromStrength(options.strength)
	end

	-- Either cylinders have the height on a different axis because they get rotated
	-- Or block+sphere need to be slightly larger for the APIs to function correctly
	if brushShape == BrushShape.Cylinder then
		self._cursorPart.Size = Vector3.new(height, size, size)
	else
		self._cursorPart.Size = Vector3.new(size, height, size) + Vector3.new(0.1, 0.1, 0.1)
	end

	local pivotMainPoint = applyPivot(options.pivot, options.location, height)
	self._cursorPart.CFrame = CFrame.new(pivotMainPoint)

	-- Rotation must be set after CFrame, else setting the CFrame reorients the cylinder
	-- Cylinder "top" face is on its side so rotate to make a vertical cylinder
	if brushShape == BrushShape.Cylinder then
		self._cursorPart.Rotation = Vector3.new(0, 0, 90)
	end
end

return TerrainBrushCursor
