--Made by Stickmasterluke

local module = {}

local Plugin = script.Parent.Parent.Parent.Parent
local UILibrary = Plugin.Packages.UILibrary
local Signal = require(UILibrary.Utils.Signal)

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape
local PivotType = TerrainEnums.PivotType
local FlattenMode = TerrainEnums.FlattenMode
local ToolId = TerrainEnums.ToolId

local Smoother = require(script.Parent.TerrainSmoother)

local FFlagTerrainToolMetrics = settings():GetFFlag("TerrainToolMetrics")
local FFlagTerrainToolsEnableHeightSlider = game:GetFastFlag("TerrainToolsEnableHeightSlider")

local AnalyticsService = game:GetService("RbxAnalyticsService")
local StudioService = game:GetService("StudioService")
local ChangeHistoryService = game:GetService("ChangeHistoryService")

local debugMode = false

local on
local kCurrentTool
local mouse

local kAutoMaterial = false
local kBrushShape = BrushShape.Sphere
local kCurrentMaterial = Enum.Material.Grass
local kIgnoreWater = true
local kPlaneLock = false
local kFixedPlane = false
local kSnapToGrid = false
local kPivot = PivotType.Center
local kFlattenMode = FlattenMode.Both
local kHeightPicker = false
local kDesiredHeight = 30
local kConnections = {}

local kBrushSizeCallback = nil
local kBrushStrengthCallback = nil

local materialAir = Enum.Material.Air
local materialWater = Enum.Material.Water
local ceil = math.ceil
local floor = math.floor
local abs = math.abs
local min = math.min
local max = math.max
local sqrt = math.sqrt
local sin = math.sin
local cos = math.cos
local pi = math.pi

local shape = {
	[BrushShape.Sphere] = Enum.PartType.Ball,
	[BrushShape.Cube] = Enum.PartType.Block,
	[BrushShape.Cylinder] = Enum.PartType.Cylinder,
}
local brushShapeToSelectionShape = {
	[BrushShape.Sphere] = "SelectionSphere",
	[BrushShape.Cube] = "SelectionBox",
	[BrushShape.Cylinder] = "SelectionCylinder",
}

local kMinSelectionSize = Constants.MIN_BRUSH_SIZE
local kMaxSelectionSize = Constants.MAX_BRUSH_SIZE
local kSelectionSize = Constants.INITIAL_BRUSH_SIZE
local kSelectionHeight = Constants.INITIAL_BRUSH_SIZE
local kStrength = Constants.INITIAL_BRUSH_STRENGTH

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TerrainBrushGui"

local userInput = game:GetService('UserInputService')
local prevCameraType = game.Workspace.CurrentCamera.CameraType

--SUB SETTINGS--	(Non-userfacing Settings)
local resolution = 4			--This is the size of voxels on Roblox. Why is this a variable? ;)
local clickThreshold = .1
local toolTipShowTime = 3.5
----------------

----Variables----
local forceMaterial = nil
local nearMaterial = nil
local selectionPart = nil
local gridLineParts = {}
local currentLoopTag = nil
local lastMainPoint = Vector3.new(0, 0, 0)
local click = false
local firstOperation = tick()
local downKeys = {}
local lastPlanePoint = Vector3.new(0, 0, 0)
local lastNormal = Vector3.new(0, 1, 0)
local lastCursorDistance = 300
local one256th = 1/256							--This should later be replaced with 0 once smooth terrain doesn't aproximate 1/256 to 0. This is causing small occupancies to become air
local toolTip1Change = nil
local toolTip2Change = nil

local kOperationInfo= {}
-------------

function clearSelection()
	if selectionPart then
		selectionPart:Destroy()
		selectionPart = nil
	end

	if selectionObject then
		selectionObject:Destroy()
		selectionObject = nil
	end
end

function clearGrid()
	for i, v in pairs(gridLineParts) do
		if v then
			v:Destroy()
		end
		gridLineParts[i] = nil
	end
end

function applyPivot(position, selectionHeight)
	if kPivot == PivotType.Top then
		return Vector3.new(position.x, position.y - selectionHeight/2, position.z)
	elseif kPivot == PivotType.Center then
		return position
	elseif kPivot == PivotType.Bottom then
		return Vector3.new(position.x, position.y + selectionHeight/2, position.z)
	end
end

function updateOperationInfo()
	kOperationInfo.name = kCurrentTool
	kOperationInfo.shape = kBrushShape
	kOperationInfo.strength = kStrength
	kOperationInfo.size = kSelectionSize
	kOperationInfo.height =  kSelectionHeight
	kOperationInfo.setMaterial = kCurrentMaterial
	kOperationInfo.autoMaterial = kAutoMaterial
	kOperationInfo.ignoreWater = kIgnoreWater
	kOperationInfo.desiredHeight = kDesiredHeight
	kOperationInfo.flattenMode = kFlattenMode
	kOperationInfo.pivot = kPivot
	kOperationInfo.centerPoint = nil

	if debugMode then
		print("================================")
		print("Current Tool:", kCurrentTool)
		print("TerrainBrush.lua autoMaterial", kAutoMaterial)
		print("TerrainBrush.lua brushShape", kBrushShape)
		print("TerrainBrush.lua baseSize", kSelectionSize)
		print("TerrainBrush.lua height", kSelectionHeight)
		print("TerrainBrush.lua pivot", kPivot)
		print("TerrainBrush.lua strength", kStrength)
		print("TerrainBrush.lua current material", kCurrentMaterial)
		print("TerrainBrush.lua ignoreWater", kIgnoreWater)
		print("TerrainBrush.lua planeLock", kPlaneLock)
		print("TerrainBrush.lua fixedPlane", kFixedPlane)
		print("TerrainBrush.lua snapToGrid", kSnapToGrid)
		print("TerrainBrush.lua falttenMode", kFlattenMode)
		print("TerrainBrush.lua planePositionY", kDesiredHeight)
		print("TerrainBrush.lua heightPicker", kHeightPicker)
	end

	if selectionPart then
		local size = kSelectionSize * resolution
		local height = kSelectionHeight * resolution
		if FFlagTerrainToolsEnableHeightSlider then
			selectionPart.Size = kBrushShape == BrushShape.Cylinder and Vector3.new(height, size, size)
				or Vector3.new(size, height, size) + Vector3.new(0.1, 0.1, 0.1)
		else
			selectionPart.Size = (kBrushShape == BrushShape.Cylinder and Vector3.new(height, size, size) or Vector3.new(size, size, size)) + Vector3.new(.1, .1, .1)
		end

		--[[ TODO: DEVTOOLS-3103 add CylinderSelection Part
		if not useSelectionObjects then
			selectionPart.Transparency = .9 - (kStrength * .3)
		end
		]]
	end

	if selectionObject then
		selectionObject.SurfaceTransparency = .9 - (kStrength * .3)
	end
end

module.PlanePositionYChanged = Signal.new()
module.HeightPickerSet = Signal.new()

module.Init = function (toolName, theMouse)
	if toolName ~= kCurrentTool then
		module.Close()
	end
	mouse = theMouse
	kCurrentTool = toolName

	kAutoMaterial = kCurrentTool == ToolId.Flatten

	updateOperationInfo()
	FirstTimeSetup()
	module.On()
end

module.ChangeProperties = function (vals)
	if kBrushShape ~= vals.brushShape or
		kSelectionSize ~= vals.baseSize or
		kSelectionHeight ~= vals.height or
		not vals.planeLock or
		vals.heightPicker then

		clearSelection()
		clearGrid()
	end

	kAutoMaterial = vals.autoMaterial
	kBrushShape = vals.brushShape
	kSelectionSize = vals.baseSize
	kSelectionHeight = vals.height
	kPivot = vals.pivot
	kStrength = vals.strength
	kCurrentMaterial = vals.material and vals.material or kCurrentMaterial
	kIgnoreWater = vals.ignoreWater
	kPlaneLock = vals.planeLock
	kFixedPlane = vals.fixedPlane
	kSnapToGrid = vals.snapToGrid
	kFlattenMode = vals.flattenMode
	kHeightPicker = vals.heightPicker
	kDesiredHeight = vals.planePositionY

	kBrushSizeCallback = vals.brushSizeCallback
	kBrushStrengthCallback = vals.brushStrengthCallback

	updateOperationInfo()
end

module.Close = function ()
	currentLoopTag = nil
	mouse = nil

	currentLoopTag = nil
	on = false

	clearSelection()
	clearGrid()
	mouseDown = false

	for i,v in pairs(kConnections) do
		v:Disconnect()
		kConnections[i] = nil
	end
end

FirstTimeSetup = function()
	local changeHistory = game:GetService('ChangeHistoryService')
	local terrain = game.Workspace.Terrain
	local coreGui = game:GetService("CoreGui")
	local workspace = game.Workspace

	do
		local runService = game:GetService('RunService').RenderStepped
		function quickWait(waitTime)
			if not waitTime then
				runService:wait()
			elseif waitTime < 0.033333 then
				local startTick = tick()
				runService:wait()
				local delta = tick() - startTick
				if delta <= waitTime * .5 then
					quickWait(waitTime - delta)
				end
			else
				wait(waitTime)
			end
		end
	end

	function deepCast(origin, endPoint, ignoreList, filterFunction, cubeTerrain)
		local ray = Ray.new(origin, endPoint - origin)
		local hit, pos, normal, material = game.Workspace:FindPartOnRayWithIgnoreList(ray, ignoreList, cubeTerrain)
		if hit and filterFunction(hit) then
			table.insert(ignoreList, hit)
			return deepCast(pos, endPoint, ignoreList, filterFunction, cubeTerrain)
		else
			return hit, pos, normal, material
		end
	end

	function drawGrid(point, normal, transparency, color)
		local transparency = transparency or .95
		local color = BrickColor.new(color or 'Institutional white')
		local gridCellSize = kSelectionSize * resolution
		local gridSize = 10
		local baseCframe = CFrame.new(point, point + normal)
		local normalSpase = CFrame.new(Vector3.new(0, 0, 0), normal):pointToObjectSpace(point)
		local roundedNormalOffset = (Vector3.new((normalSpase.x / gridCellSize) % 1, (normalSpase.y / gridCellSize) % 1, 0) - Vector3.new(.5, .5, 0)) * -gridCellSize
		for u = 1, gridSize do
			local linePart = gridLineParts[u]
			if not linePart then
				linePart = Instance.new('Part')
				linePart.Transparency = 1
				linePart.TopSurface = 'Smooth'
				linePart.BottomSurface = 'Smooth'
				linePart.Anchored = true
				linePart.CanCollide = false
				local selectionBox = Instance.new('SelectionBox')
				selectionBox.Color = color
				selectionBox.Transparency = transparency
				selectionBox.Adornee = linePart
				selectionBox.Parent = linePart
				linePart.Parent = screenGui
				gridLineParts[u] = linePart
			elseif linePart.SelectionBox.Transparency ~= transparency or linePart.SelectionBox.Color ~= color then
				linePart.SelectionBox.Transparency = transparency
				linePart.SelectionBox.Color = color
			end
			local percent = (u - 1) / (gridSize - 1)
			linePart.Size = Vector3.new(gridCellSize * gridSize * sin(math.acos(percent * 1.8 - .9)), 0, 0)
			linePart.CFrame = baseCframe * CFrame.new(0, (percent - .5) * (gridSize - 1) * gridCellSize, 0) * CFrame.new(roundedNormalOffset)
		end

		for u = 1, gridSize do
			local linePart = gridLineParts[gridSize + u]
			if not linePart then
				linePart = Instance.new('Part')
				linePart.Transparency = 1
				linePart.TopSurface = 'Smooth'
				linePart.BottomSurface = 'Smooth'
				linePart.Anchored = true
				linePart.CanCollide = false
				local selectionBox = Instance.new('SelectionBox')
				selectionBox.Color = color
				selectionBox.Transparency = transparency
				selectionBox.Adornee = linePart
				selectionBox.Parent = linePart
				linePart.Parent = screenGui
				gridLineParts[gridSize + u] = linePart
			elseif linePart.SelectionBox.Transparency ~= transparency or linePart.SelectionBox.Color ~= color then
				linePart.SelectionBox.Transparency = transparency
				linePart.SelectionBox.Color = color
			end
			local percent = (u - 1) / (gridSize - 1)
			linePart.Size = Vector3.new(0, gridCellSize * gridSize * sin(math.acos(percent * 1.8 - .9)), 0)
			linePart.CFrame = baseCframe * CFrame.new((percent - .5) * (gridSize - 1) * gridCellSize, 0, 0) * CFrame.new(roundedNormalOffset)
		end
	end

	local function round(n)
		return floor(n + .5)
	end

	function findFace()
		local cameraLookVector = game.Workspace.CurrentCamera.CoordinateFrame.lookVector
		--[[local absx = abs(cameraLookVector.x)		--this code is for 90 plane locking
		local absy = abs(cameraLookVector.y)
		local absz = abs(cameraLookVector.z)
		if absy >= absx and absy >= absz then	--preference towards y axis planes
			return Vector3.new(0, cameraLookVector.y / absy, 0)
		elseif absx >= absz then
			return	Vector3.new(cameraLookVector.x / absx, 0, 0)
		end
		return Vector3.new(0, 0, cameraLookVector.z / absz)]]

		return Vector3.new(round(cameraLookVector.x), round(cameraLookVector.y), round(cameraLookVector.z)).unit	--this code is for 45 degree plane locking
	end

	function lineToPlaneIntersection(linePoint, lineDirection, planePoint, planeNormal)
		local denominator = lineDirection:Dot(planeNormal)
		if denominator == 0 then
			return linePoint
		end
		local distance = ((planePoint - linePoint):Dot(planeNormal)) / denominator
		return linePoint + lineDirection * distance
	end

	function operation(info)
		local brushShape = info.shape
		local centerPoint = info.centerPoint
		local operationName = info.name
		local selectionSize = info.size -- (1 ~ 32)
		local selectionHeight = info.height and info.height or selectionSize

		if not FFlagTerrainToolsEnableHeightSlider then
			-- TOOD: add BaseSize and Height options
			if operationName ~= ToolId.Flatten then
				selectionHeight = selectionSize
			end
		end

		centerPoint = applyPivot(centerPoint, selectionHeight * resolution)

		--Ignore water means fill water instead of air under the highest water level in the region when Subtract or Erode, nothing happen when Add or Grow which is confusing.
		local ignoreWater = info.ignoreWater -- default true
		local autoMaterial = info.autoMaterial -- default false
		local desiredMaterial = info.setMaterial
		local desiredHeight = info.desiredHeight or 30
		local strength = info.strength -- (0 - 1)
		local flattenMode = info.flattenMode

		local xOffset = {1, -1, 0,  0, 0,  0}
		local yOffset = {0,  0, 1, -1, 0,  0}
		local zOffset = {0,  0, 0,  0, 1, -1}

		local size = selectionSize * resolution
		local height = selectionHeight * resolution
		local radius = size * .5
		local minBounds = Vector3.new(
			floor((centerPoint.x - radius) / resolution) * resolution,
			floor((centerPoint.y - height * .5) / resolution) * resolution,
			floor((centerPoint.z - radius) / resolution) * resolution)
		local maxBounds = Vector3.new(
			ceil((centerPoint.x + radius) / resolution) * resolution,
			ceil((centerPoint.y + height * .5) / resolution) * resolution,
			ceil((centerPoint.z + radius) / resolution) * resolution)
		local region = Region3.new(minBounds, maxBounds)
		local radiusOfRegion = (maxBounds.x - minBounds.x) * .5

		if not autoMaterial then
			-- may do a fast operation
			if operationName == ToolId.Add or (operationName == ToolId.Subtract and not ignoreWater) then
				if operationName == ToolId.Subtract then
					desiredMaterial = materialAir
				end
				if brushShape == BrushShape.Sphere then
					terrain:FillBall(centerPoint, radius, desiredMaterial)
				elseif brushShape == BrushShape.Cube then
					terrain:FillBlock(CFrame.new(centerPoint.x, centerPoint.y, centerPoint.z), Vector3.new(size, height, size), desiredMaterial)
				elseif brushShape == BrushShape.Cylinder then
					terrain:FillCylinder(CFrame.new(centerPoint.x, centerPoint.y, centerPoint.z), height, radius, desiredMaterial)
				end
				return
			end
		end

		local materials, occupancies = terrain:ReadVoxels(region, resolution)
		---TODO: !!Please make a decision to remove or optimize Smooth operation for performance!!---
		if operationName == ToolId.Smooth then
			local middle = materials[ceil(#materials * .5)]	--This little section of code sets nearMaterial to middle of matrix
			if middle then	--dig X
				local middle = middle[ceil(#middle * .5)]
				if middle then	--dig Y
					local middle = middle[ceil(#middle * .5)]
					if middle and middle ~= materialAir and middle ~= materialWater then	--dig Z
						nearMaterial = middle
						desiredMaterial = autoMaterial and nearMaterial or desiredMaterial
					end
				end
			end

			Smoother.BrushOperation(centerPoint, materials, occupancies, resolution, selectionSize, strength, desiredMaterial, brushShape, minBounds, maxBounds)
		---------------------------------------------------------------------------
		else
			local airFillerMaterial = materialAir
			local waterHeight = 0
			---TODO: !!Please optimize this N Cube operation for performance!!---
			if ignoreWater and (operationName == ToolId.Erode or operationName == ToolId.Subtract) then
				for ix,vx in ipairs(materials) do
					for iy,vy in ipairs(vx) do
						for iz, vz in ipairs(vy) do
							if vz == materialWater then
								airFillerMaterial = materialWater
								if iy > waterHeight then
									waterHeight = iy
								end
							end
						end
					end
				end
			end
			--------------------------------------------------------------------

			--Optimization for reudcing Vector.x/y/z calls--
			local centerX = centerPoint.x
			local centerY = centerPoint.y
			local centerZ = centerPoint.z

			local minBoundsX = minBounds.x
			local minBoundsY = minBounds.y
			local minBoundsZ = minBounds.z
			---------------------------------------------------

			local sizeX = table.getn(occupancies)
			local sizeY = table.getn(occupancies[1])
			local sizeZ = table.getn(occupancies[1][1])

			for ix, vx in ipairs(occupancies) do
				local cellVectorX = minBoundsX + (ix - .5) * resolution - centerX

				for iy, vy in pairs(vx) do
					local cellVectorY = minBoundsY + (iy - .5) * resolution - centerY
					local differenceY = minBoundsY + (iy - .5) * resolution - desiredHeight

					for iz, cellOccupancy in pairs(vy) do
						local cellVectorZ = minBoundsZ + (iz - .5) * resolution - centerZ
						local cellMaterial = materials[ix][iy][iz]

						local magnitudePercent = 1
						local brushOccupancy = 1
						if selectionSize > 2 then -- selection size 1x1x1, no matter what occupancy cells have, always render a box shape, 2x2x2 to 4x4x4, always render a sphere like shape.
							if brushShape == BrushShape.Sphere then
								local distance = sqrt(cellVectorX * cellVectorX + cellVectorY * cellVectorY + cellVectorZ * cellVectorZ)
								magnitudePercent = cos(min(1, distance / radiusOfRegion) * pi * .5)
								brushOccupancy = max(0, min(1, (radiusOfRegion - distance) / resolution))
							elseif brushShape == BrushShape.Cylinder then
								local distance = sqrt(cellVectorX * cellVectorX + cellVectorZ * cellVectorZ)
								magnitudePercent = cos(min(1, distance / radiusOfRegion) * pi * .5)
								brushOccupancy = max(0, min(1, (radiusOfRegion - distance) / resolution))
							end
						end

						if cellMaterial ~= materialAir and cellMaterial ~= materialWater and cellMaterial ~= nearMaterial then
							nearMaterial = cellMaterial
							if autoMaterial then
								desiredMaterial = nearMaterial
							end
						end

						if ignoreWater and cellMaterial == materialWater then -- treat it as air
							cellMaterial = materialAir
							cellOccupancy = 0
						end
						airFillerMaterial = waterHeight >= iy and airFillerMaterial or materialAir

						if operationName == ToolId.Add then -- no use FOR NOW, calling FillBlock/FillBall becuase they can do the same operations.
							if brushOccupancy > cellOccupancy then
								occupancies[ix][iy][iz] = brushOccupancy
							end
							if brushOccupancy >= .5 and cellMaterial == materialAir then
								materials[ix][iy][iz] = desiredMaterial
							end
						elseif operationName == ToolId.Subtract then -- no use when stract is not ignore water, calling FillBlock/FillBall becuase they can do the same operations.
							if cellMaterial ~= materialAir then
								local desiredOccupancy =  1 - brushOccupancy -- even this value can be smaller than 0, there is a check to clamp it to 0 in c++
								if desiredOccupancy < cellOccupancy then
									if desiredOccupancy <= one256th then
										occupancies[ix][iy][iz] = airFillerMaterial == materialWater and 1 or 0 -- remove or REPLACE with water.
										materials[ix][iy][iz] = airFillerMaterial
									else
										occupancies[ix][iy][iz] = desiredOccupancy -- reduce occupancy
									end
								end
							end
						elseif operationName == ToolId.Grow then
							if brushOccupancy >= 0.5 then
								local desiredOccupancy = cellOccupancy
								local fullNeighbor = false
								local noWater = ignoreWater and cellMaterial == materialWater
								local totalNeighbors = includeSelf and not noWater and 1 or 0
								local neighborOccupancies = includeSelf and 1 or 0
								for i=1, 6 do
									local nx = ix + xOffset[i]
									local ny = iy + yOffset[i]
									local nz = iz + zOffset[i]
									if nx > 0 and nx <= sizeX and ny > 0 and ny <= sizeY and nz > 0 and nz <= sizeZ then
										local neighbor = occupancies[nx][ny][nz]
										local neighborMaterial = materials[nx][ny][nz]
										if ignoreWater and neighborMaterial == materialWater then
											neighbor = 0
										end
										if neighbor >= 1 then
											fullNeighbor = true
										end
										totalNeighbors = totalNeighbors + 1
										neighborOccupancies = neighborOccupancies + neighbor
									end
								end

								if cellOccupancy > 0 or fullNeighbor then
									neighborOccupancies = totalNeighbors == 0 and 0 or neighborOccupancies / totalNeighbors
									desiredOccupancy = desiredOccupancy + neighborOccupancies * (strength + .1) * .25 * brushOccupancy * magnitudePercent
								end
								if cellMaterial == materialAir and desiredOccupancy > 0 then
									materials[ix][iy][iz] = desiredMaterial
								end
								if desiredOccupancy ~= cellOccupancy then
									occupancies[ix][iy][iz] = desiredOccupancy
								end
							end
						elseif operationName == ToolId.Erode then
							if cellMaterial ~= materialAir and brushOccupancy > 0.5 then
								local desiredOccupancy = cellOccupancy
								local emptyNeighbor = false
								local neighborOccupancies = 6
								for i=1, 6 do
									local nx = ix + xOffset[i]
									local ny = iy + yOffset[i]
									local nz = iz + zOffset[i]
									if nx > 0 and nx <= sizeX and ny > 0 and ny <= sizeY and nz > 0 and nz <= sizeZ then
										local neighbor = occupancies[nx][ny][nz]
										local neighborMaterial = materials[nx][ny][nz]
										if ignoreWater and neighborMaterial == materialWater then
											neighbor = 0
										end
										if neighbor <= 0 then
											emptyNeighbor = true
										end
										neighborOccupancies = neighborOccupancies - neighbor
									end
								end

								if cellOccupancy < 1 or emptyNeighbor then
									desiredOccupancy = desiredOccupancy - (neighborOccupancies / 6) * (strength + .1) * .25 * brushOccupancy * magnitudePercent
								end
								if desiredOccupancy <= one256th then
									occupancies[ix][iy][iz] = airFillerMaterial == materialWater and 1 or 0
									materials[ix][iy][iz] = airFillerMaterial
								else
									occupancies[ix][iy][iz] = desiredOccupancy
								end
							end
						elseif operationName == ToolId.Flatten then
							if differenceY > 0.1 and not (flattenMode == FlattenMode.Grow) then
							--------------------- Copy from Erode --------------------------------
								if cellMaterial ~= materialAir and brushOccupancy > 0.5 then
									local desiredOccupancy = cellOccupancy
									local emptyNeighbor = false
									local neighborOccupancies = 6
									for i=1, 6 do
										local nx = ix + xOffset[i]
										local ny = iy + yOffset[i]
										local nz = iz + zOffset[i]
										if nx > 0 and nx <= sizeX and ny > 0 and ny <= sizeY and nz > 0 and nz <= sizeZ then
											local neighbor = occupancies[nx][ny][nz]
											local neighborMaterial = materials[nx][ny][nz]
											if ignoreWater and neighborMaterial == materialWater then
												neighbor = 0
											end
											if neighbor <= 0 then
												emptyNeighbor = true
											end
											neighborOccupancies = neighborOccupancies - neighbor
										end
									end

									if cellOccupancy < 1 or emptyNeighbor then
										desiredOccupancy = desiredOccupancy - (neighborOccupancies / 6) * (strength + .1) * .25 * brushOccupancy * magnitudePercent
									end
									if desiredOccupancy <= one256th then
										occupancies[ix][iy][iz] = airFillerMaterial == materialWater and 1 or 0
										materials[ix][iy][iz] = airFillerMaterial
									else
										occupancies[ix][iy][iz] = desiredOccupancy
									end
								end
							elseif differenceY < -0.1 and not (flattenMode == FlattenMode.Erode) then
								------------------ Copy from Grow------------------------------
								if brushOccupancy >= 0.5 then
									local desiredOccupancy = cellOccupancy
									local fullNeighbor = false
									local noWater = ignoreWater and cellMaterial == materialWater
									local totalNeighbors = includeSelf and not noWater and 1 or 0
									local neighborOccupancies = includeSelf and 1 or 0
									for i=1, 6 do
										local nx = ix + xOffset[i]
										local ny = iy + yOffset[i]
										local nz = iz + zOffset[i]
										if nx > 0 and nx <= sizeX and ny > 0 and ny <= sizeY and nz > 0 and nz <= sizeZ then
											local neighbor = occupancies[nx][ny][nz]
											local neighborMaterial = materials[nx][ny][nz]
											if ignoreWater and neighborMaterial == materialWater then
												neighbor = 0
											end
											if neighbor >= 1 then
												fullNeighbor = true
											end
											totalNeighbors = totalNeighbors + 1
											neighborOccupancies = neighborOccupancies + neighbor
										end
									end

									if cellOccupancy > 0 or fullNeighbor then
										neighborOccupancies = totalNeighbors == 0 and 0 or neighborOccupancies / totalNeighbors
										desiredOccupancy = desiredOccupancy + neighborOccupancies * (strength + .1) * .25 * brushOccupancy * magnitudePercent
									end
									if cellMaterial == materialAir and desiredOccupancy > 0 then
										materials[ix][iy][iz] = desiredMaterial
									end
									if desiredOccupancy ~= cellOccupancy then
										occupancies[ix][iy][iz] = desiredOccupancy
									end
								end
							end
						elseif operationName == ToolId.Paint then
							if brushOccupancy > 0 and cellOccupancy > 0 then
								materials[ix][iy][iz] = desiredMaterial
							end
						end --End Z loop
					end
				end
			end
		end
		terrain:WriteVoxels(region, resolution, materials, occupancies)
	end

	module.On = function()
		screenGui.Parent = coreGui
		on = true

		local loopTag = {}	--using table as a unique value for debouncing
		currentLoopTag = loopTag

		local reportClick = true
		while currentLoopTag and currentLoopTag == loopTag do
			local t = tick()
			local radius = kSelectionSize * .5 * resolution
			local cameraPos = mouse.Origin.p

			local ignoreList = {selectionPart}
			if game.Players.LocalPlayer and game.Players.LocalPlayer.Character then
				table.insert(ignoreList, game.Players.LocalPlayer.Character)
			end

			local mouseRay = Ray.new(cameraPos, mouse.UnitRay.Direction*10000)
			local hitObject, mainPoint = game.Workspace:FindPartOnRayWithIgnoreList(mouseRay, ignoreList, false, kIgnoreWater)

			if kHeightPicker then
				module.PlanePositionYChanged:fire(mainPoint.Y - 1)
			end

			if kCurrentTool == ToolId.Add then
				mainPoint = mainPoint - mouse.UnitRay.Direction * .05
			elseif kCurrentTool == ToolId.Subtract or kCurrentTool == ToolId.Paint or kCurrentTool == ToolId.Grow then
				mainPoint = mainPoint + mouse.UnitRay.Direction * .05
			elseif kCurrentTool == ToolId.Flatten then
				if (not kPlaneLock) and click then
					if not kFixedPlane then
						module.PlanePositionYChanged:fire(mainPoint.Y - 1)
					end
				end
			end

			if mouse.Target == nil then	--cage the cursor so that it does not fly away
				mainPoint = cameraPos + mouse.UnitRay.Direction * lastCursorDistance --limits the distance of the mainPoint if the mouse is not hitting an object
			end

			if not kPlaneLock or not (downKeys[Enum.KeyCode.LeftShift] or downKeys[Enum.KeyCode.RightShift]) then
				if not mouseDown or click then
					lastPlanePoint = mainPoint
					lastNormal = kCurrentTool ~= ToolId.Flatten and findFace() or Vector3.new(0, 1 ,0)
					reportClick = true
				end
			end

			if kPlaneLock then
				mainPoint = lineToPlaneIntersection(cameraPos, mouse.UnitRay.Direction, lastPlanePoint, lastNormal)
			end

			if kSnapToGrid then
				local snapOffset = Vector3.new(1, 1, 1) * (radius % resolution)		--in studs
				local tempMainPoint = (mainPoint - snapOffset) / resolution + Vector3.new(.5, .5, .5)	--in voxels
				mainPoint = Vector3.new(floor(tempMainPoint.x), floor(tempMainPoint.y), floor(tempMainPoint.z)) * resolution + snapOffset
			end

			if mouseDown then
				if click then
					firstOperation = t
					lastMainPoint = mainPoint
				end

				if click or t > firstOperation + clickThreshold then
					click = false
					if reportClick then
						if FFlagTerrainToolMetrics then
							AnalyticsService:SendEventDeferred("studio", "TerrainEditorV2", "UseTerrainTool", {
								userId = StudioService:GetUserId(),
								toolName = kCurrentTool
							})
						end
					end
					reportClick = false
					if downKeys[Enum.KeyCode.LeftAlt] or downKeys[Enum.KeyCode.RightAlt] then
						--pick color
						local function filterNonTerrain(thing)
							if thing and thing == terrain then
								return false
							end
							return true
						end
						local hit, hitPosition, normal, foundMaterial = deepCast(cameraPos, cameraPos + mouse.UnitRay.Direction*10000, {}, filterNonTerrain, true)
						if hit then
							kMaterialsListObject:SetMaterialSelectionUsingEnum(foundMaterial)
						end
					else
						local difference = mainPoint - lastMainPoint
						local dragDistance = (difference).magnitude
						local crawlDistance = radius * .5			--Maybe adjustable setting? Considering using a different method of crawling, with a percent rather than a finite distance.
						if dragDistance > crawlDistance then
							local differenceVector = difference.unit
							local dragDistance = min(dragDistance, crawlDistance * 2 + 20)	--limiting this so that it does not attempt too many operations within a single drag.
							local samples = ceil(dragDistance / crawlDistance - .1)
							for i = 1, samples do
								kOperationInfo.centerPoint = lastMainPoint + differenceVector * dragDistance * (i / samples)
								operation(kOperationInfo)
							end
							mainPoint = lastMainPoint + differenceVector * dragDistance
						else
							kOperationInfo.centerPoint = mainPoint
							operation(kOperationInfo)
						end
						lastMainPoint = mainPoint

						if kCurrentTool == ToolId.Flatten and kHeightPicker then
							module.HeightPickerSet:fire(false)
						end
					end
				end
			end

			local size = kSelectionSize * resolution
			local height = kSelectionHeight * resolution

			--[[ TODO: DEVTOOLS-3103 needs CylinderSelection to work
			if useSelectionObjects then
				local cylinderSize = Vector3.new(height, size, size)
				local partSize = Vector3.new(size, size, size) + Vector3.new(.1, .1, .1)
				-- we can use this code when selectionCylinder is finished
				if not selectionPart then
					selectionPart = Instance.new('Part')
					selectionPart.Name = 'SelectionPart'
					selectionPart.Transparency = 1
					selectionPart.TopSurface = 'Smooth'
					selectionPart.BottomSurface = 'Smooth'
					selectionPart.Anchored = true
					selectionPart.CanCollide = false
					selectionPart.Size = kBrushShape == BrushShape.Cylinder and cylinderSize or partSize
					selectionPart.Parent = screenGui
				end

				if not selectionObject then
					selectionObject = Instance.new(brushShapeToSelectionShape[kBrushShape])
					selectionObject.Name = 'SelectionObject'
					selectionObject.Color = BrickColor.new('Toothpaste')
					selectionObject.SurfaceTransparency = .95 - kStrength * .3
					selectionObject.SurfaceColor = BrickColor.new('Toothpaste')
					selectionObject.Adornee = selectionPart
					selectionObject.Parent = selectionPart
				end
			end
			--]]
			if kHeightPicker then
				selectionPart = nil
			else
				local cylinderSize = Vector3.new(height, size, size)
				local partSize
				if FFlagTerrainToolsEnableHeightSlider then
					partSize = Vector3.new(size, height, size) + Vector3.new(0.1, 0.1, 0.1)
				else
					partSize = Vector3.new(size, size, size) + Vector3.new(.1, .1, .1)
				end

				if not selectionPart then
					ChangeHistoryService:SetEnabled(false)
					selectionPart = Instance.new('Part')
					selectionPart.Name = 'SelectionPart'
					selectionPart.TopSurface = 'Smooth'
					selectionPart.BottomSurface = 'Smooth'
					selectionPart.CastShadow = false
					selectionPart.Locked = true
					selectionPart.Anchored = true
					selectionPart.CanCollide = false
					selectionPart.Size = kBrushShape == BrushShape.Cylinder and cylinderSize or partSize
					selectionPart.Shape = shape[kBrushShape]
					selectionPart.BrickColor = BrickColor.new('Toothpaste')
					selectionPart.Material = Enum.Material.Neon
					selectionPart.Transparency = .9 - (kStrength * .3)
					selectionPart.Parent = workspace.Terrain
					ChangeHistoryService:SetEnabled(true)
				end
			end

			if (not userInput.TouchEnabled or mouseDown) then
				pivotMainPoint = applyPivot(mainPoint, height)
				if selectionPart then
					if mouseDown then
						selectionPart.Transparency = .9
					else
						selectionPart.Transparency = .9 - (kStrength * .3)
					end
					selectionPart.CFrame = CFrame.new(pivotMainPoint)
					selectionPart.Rotation = kBrushShape == BrushShape.Cylinder and Vector3.new(0, 0, 90) or Vector3.new(0, 0, 0)
				end

				if kCurrentTool == ToolId.Flatten then
					local mainPointIntersect
					if kFixedPlane then
						mainPointIntersect = Vector3.new(mainPoint.x, kDesiredHeight, mainPoint.z)
					else
						mainPointIntersect = lineToPlaneIntersection(mainPoint, mouse.UnitRay.Direction, lastPlanePoint, lastNormal)
					end
					local normal = Vector3.new(0, 1, 0)
					drawGrid(mainPointIntersect, normal, mouseDown and .8 or .3)

				elseif kPlaneLock then
					local mainPointIntersect = lineToPlaneIntersection(mainPoint, mouse.UnitRay.Direction, lastPlanePoint, lastNormal)	--we need to get this otherwise the plane can shift whiel drawing
					drawGrid(mainPointIntersect, lastNormal, mouseDown and .8)
				end
			end

			lastCursorDistance = max(20 + kSelectionSize * resolution * 1.5,(mainPoint - cameraPos).magnitude)

			quickWait()
		end
	end

	--Touch controls
	local fingerTouches = {}
	local NumUnsunkTouches = 0

	local StartingDiff = nil
	local startingSelectionSize = nil

	local function OnTouchBegan(input, processed)
		fingerTouches[input] = processed
		if not processed then
			click = true
			NumUnsunkTouches = NumUnsunkTouches + 1
		end
	end

	local function OnTouchChanged(input, processed)
		if fingerTouches[input] == nil then
			fingerTouches[input] = processed
			if not processed then
				NumUnsunkTouches = NumUnsunkTouches + 1
			end
		end

		if NumUnsunkTouches == 1 then
			if fingerTouches[input] == false then
				mouseDown = true
			end
		else
			mouseDown = false
		end
		if NumUnsunkTouches == 2 then
			local unsunkTouches = {}
			for touch, wasSunk in pairs(fingerTouches) do
				if not wasSunk then
					table.insert(unsunkTouches, touch)
				end
			end
			if #unsunkTouches == 2 then
				local difference = (unsunkTouches[1].Position - unsunkTouches[2].Position).magnitude
				if StartingDiff and startingSelectionSize then
					local scale = difference/max(0.01, StartingDiff)
					kSelectionSize = max(kMinSelectionSize, min(kMaxSelectionSize, startingSelectionSize/scale))
					if onSetSizeSlider then
						onSetSizeSlider(kSelectionSize)
					end
				else
					StartingDiff = difference
					startingSelectionSize = kSizeSliderObj:GetValue()
				end
			end
		else
			StartingDiff = nil
			startingSelectionSize = nil
		end
	end

	local function OnTouchEnded(input, processed)
		if fingerTouches[input] == false then
			if NumUnsunkTouches == 1 then
				mouseDown = false
			elseif NumUnsunkTouches == 2 then
				StartingDiff = nil
				startingSelectionSize = nil
				mouseDown = true
			end
		end

		if fingerTouches[input] ~= nil and fingerTouches[input] == false then
			NumUnsunkTouches = NumUnsunkTouches - 1
		end
		fingerTouches[input] = nil
	end

	-- Input Handling
	kConnections[1] = userInput.InputBegan:connect(function(event, soaked)
		downKeys[event.KeyCode] = true
		if event.UserInputType == Enum.UserInputType.MouseButton1 and not soaked and on then
			mouseDown = true
			click = true
		elseif event.UserInputType == Enum.UserInputType.Touch and on then
			OnTouchBegan(event, soaked)
		end
	end)

	kConnections[2] = userInput.InputChanged:connect(function(input, processed)
		if input.UserInputType == Enum.UserInputType.Touch then
			OnTouchChanged(input, processed)
		end
	end)

	kConnections[3] = userInput.InputEnded:connect(function(event, soaked)
		downKeys[event.KeyCode] = nil
		if event.UserInputType == Enum.UserInputType.MouseButton1 and mouseDown then
			mouseDown = false
			if changeHistory then
				changeHistory:SetWaypoint('Terrain '.. kCurrentTool)
			end
		elseif event.UserInputType == Enum.UserInputType.Touch then
			OnTouchEnded(event, soaked)
		end
	end)

	function scrollwheel(change)
		if on then
			if kBrushSizeCallback then
				if downKeys[Enum.KeyCode.LeftShift] or downKeys[Enum.KeyCode.RightShift] then
					scalingChange = 1 + change/10
					kSelectionSize = max(kMinSelectionSize, min(kMaxSelectionSize, kSelectionSize * scalingChange))
					kSelectionHeight = max(kMinSelectionSize, min(kMaxSelectionSize, kSelectionHeight * scalingChange))
					kBrushSizeCallback(ceil(kSelectionSize), ceil(kSelectionHeight))
				end
			end

			if kBrushStrengthCallback then
				if downKeys[Enum.KeyCode.LeftControl] or downKeys[Enum.KeyCode.RightControl] then
					kStrength = max(.1, min(1, kStrength + change * .1))
					kBrushStrengthCallback(kStrength)
				end
			end
			updateOperationInfo()
		end
	end

	kConnections[4] = mouse.WheelForward:connect(function()
		scrollwheel(1)
	end)

	kConnections[5] = mouse.WheelBackward:connect(function()
		scrollwheel(-1)
	end)

	-- Reset keyboard status on lost focus as key release may never come blocked by popups etc.
	kConnections[6] = userInput.WindowFocusReleased:connect(function()
		downKeys = {}
	end)
end

return module
