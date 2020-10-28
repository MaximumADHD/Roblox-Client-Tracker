local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

local CoreGui = game:GetService("CoreGui")

local function createCursorGridLinePart()
	local linePart = Instance.new("Part")
	linePart.Name = "LinePart"
	linePart.Transparency = 1
	linePart.TopSurface = Enum.SurfaceType.Smooth
	linePart.BottomSurface = Enum.SurfaceType.Smooth
	linePart.Anchored = true
	linePart.CanCollide = false
	linePart.Locked = true
	linePart.CastShadow = false
	linePart.Archivable = false

	local selectionBox = Instance.new("SelectionBox")
	selectionBox.Name = "SelectionBox"
	selectionBox.Adornee = linePart
	selectionBox.Archivable = false
	selectionBox.Parent = linePart

	return linePart
end

local function createCursorScreenGui()
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "TerrainBrushGui"
	screenGui.Archivable = false
	return screenGui
end

local TerrainBrushCursorGrid = {}
TerrainBrushCursorGrid.__index = TerrainBrushCursorGrid

function TerrainBrushCursorGrid.new()
	local self = setmetatable({
		_cursorGui = nil,
		_cursorGridParts = {},
	}, TerrainBrushCursorGrid)

	return self
end

function TerrainBrushCursorGrid.isVisibleForOperation(operationSettings)
	if operationSettings.currentTool == ToolId.None then
		return false
	end
	return operationSettings.currentTool == ToolId.Flatten or operationSettings.planeLock or operationSettings.heightPicker
end

function TerrainBrushCursorGrid:destroy()
	if self._cursorGridParts and type(self._cursorGridParts) == "table" then
		for _, part in ipairs(self._cursorGridParts) do
			if part then
				part:Destroy()
			end
		end
	end
	self._cursorGridParts = {}

	if self._cursorGui then
		self._cursorGui:Destroy()
	end
end

function TerrainBrushCursorGrid:hide()
	if self._cursorGui then
		self._cursorGui.Parent = nil
	end
end

-- If the cursor grid does not exist or is not visible, creates a new one and makes it visible
function TerrainBrushCursorGrid:maybeCreate()
	if not self._cursorGui then
		self._cursorGui = createCursorScreenGui()
	elseif not self._cursorGui.Parent then
		self:destroy()
		self._cursorGui = createCursorScreenGui()
	end

	self._cursorGui.Parent = CoreGui
end

--[[
Dict options =
	number cursorSize
	bool mouseDown
	Vector3 planePoint
	Vector3 planeNormal
]]
function TerrainBrushCursorGrid:update(options)
	local cursorSize = options.cursorSize
	local mouseDown = options.mouseDown
	local planePoint = options.planePoint
	local planeNormal = options.planeNormal
	self:_updateInternal(planePoint, planeNormal, cursorSize, mouseDown and 0.8 or 0.3)
end

function TerrainBrushCursorGrid:_updateInternal(point, normal, cursorSize, transparency, color)
	transparency = transparency or 0.95
	color = BrickColor.new(color or "Institutional white")

	local gridCellSize = cursorSize * Constants.VOXEL_RESOLUTION
	local gridSize = 10

	local baseCFrame = CFrame.new(point, point + normal)
	local normalSpace = CFrame.new(Vector3.new(0, 0, 0), normal):PointToObjectSpace(point)

	local roundedNormalOffset = (Vector3.new((normalSpace.x / gridCellSize) % 1, (normalSpace.y / gridCellSize) % 1, 0)
		- Vector3.new(0.5, 0.5, 0)) * -gridCellSize

	if not self._cursorGridParts or type(self._cursorGridParts) ~= "table" then
		self._cursorGridParts = {}
	end

	if not self._cursorGui then
		self._cursorGui = createCursorScreenGui()
	end

	for u = 1, gridSize, 1 do
		local percent = (u - 1) / (gridSize - 1)
		local sizeValue = gridCellSize * gridSize * math.sin(math.acos((percent * 1.8) - 0.9))
		local posValue = (percent - 0.5) * (gridSize - 1) * gridCellSize

		-- First create line in 1 direction
		local linePart = self._cursorGridParts[u]

		if not linePart then
			linePart = createCursorGridLinePart()
			linePart.Parent = self._cursorGui
			self._cursorGridParts[u] = linePart
		end

		linePart.Size = Vector3.new(sizeValue, 0, 0)
		linePart.CFrame = baseCFrame * CFrame.new(0, posValue, 0) * CFrame.new(roundedNormalOffset)

		-- Then create the perpendicular line
		linePart = self._cursorGridParts[gridSize + u]

		if not linePart then
			linePart = createCursorGridLinePart()
			linePart.Parent = self._cursorGui
			self._cursorGridParts[gridSize + u] = linePart
		end

		linePart.Size = Vector3.new(0, sizeValue, 0)
		linePart.CFrame = baseCFrame * CFrame.new(posValue, 0, 0) * CFrame.new(roundedNormalOffset)
	end

	for _, linePart in ipairs(self._cursorGridParts) do
		if linePart:FindFirstChild("SelectionBox") then
			linePart.SelectionBox.Transparency = transparency
			linePart.SelectionBox.Color = color
		end
	end
end

return TerrainBrushCursorGrid
