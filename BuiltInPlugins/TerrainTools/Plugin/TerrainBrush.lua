--Made by Stickmasterluke

local module = {}

local FFlagTerrainToolMetrics = settings():GetFFlag("TerrainToolMetrics")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local StudioService = game:GetService("StudioService")

GuiUtilities = require(script.Parent.Parent.Libs.GuiUtilities)
CollapsibleTitledSection = require(script.Parent.Parent.Libs.CollapsibleTitledSection)
VerticallyScalingListFrame = require(script.Parent.Parent.Libs.VerticallyScalingListFrame)
LabeledCheckbox = require(script.Parent.Parent.Libs.LabeledCheckbox)
LabeledSlider = require(script.Parent.Parent.Libs.LabeledSlider)
StatefulImageButton = require(script.Parent.Parent.Libs.StatefulImageButton)
MaterialsListClass = require(script.Parent.MaterialsList)
local i18n = require(script.Parent.Parent.Libs.Localization)

local on
local kCurrentTool
local plugin
local pluginGui
local kMaterialsListObject = nil

-- FIXME(dbanks)
-- Clean this up, ugly globals.
local kSizeSliderObj = nil
local kStrengthSliderObj = nil
local kMinSelectionSize = 1
local kMaxSelectionSize = 32
local kSelectionSize = 6
local kStrength = .5

local kShapeButtonRowHeight = 50

local kShapeButtonSphereAssetId = "rbxasset://textures/TerrainTools/icon_shape_sphere.png"
local kShapeButtonCubeAssetId = "rbxasset://textures/TerrainTools/icon_shape_cube.png"

local kBrushShapes = {
	{
		Name = 'Sphere',
		Image = kShapeButtonSphereAssetId,
	},
	{
		Name = 'Box',
		Image = kShapeButtonCubeAssetId,
	},
}

local function MakeNthBrushShapeButton(index, position)
	local config = kBrushShapes[index]

	local shapeButtonObj = StatefulImageButton.new(config.Name,
		config.Image,
		UDim2.new(0, GuiUtilities.kShapeButtonSize, 0, GuiUtilities.kShapeButtonSize))
	shapeButtonObj:getButton().AnchorPoint = Vector2.new(0, 0.5)
	shapeButtonObj:getButton().Position = position

	config.ButtonObj = shapeButtonObj
end

local function MakeShapeButtonsRow()
	local row = GuiUtilities.MakeFixedHeightFrame("ShapeButtonRow", kShapeButtonRowHeight)

	local shapeLabel = GuiUtilities.MakeStandardPropertyLabel(
		i18n.TranslateId('Studio.TerrainEditor.Brush.Shape'))
	shapeLabel.Parent = row
	shapeLabel.AnchorPoint = Vector2.new(0, 0.5)
	shapeLabel.Position = UDim2.new(0, GuiUtilities.StandardLineLabelLeftMargin, 0, kShapeButtonRowHeight/2)

	MakeNthBrushShapeButton(1, UDim2.new(0, GuiUtilities.StandardLineElementLeftMargin,
		0, kShapeButtonRowHeight/2))
	MakeNthBrushShapeButton(2, UDim2.new(0, GuiUtilities.StandardLineElementLeftMargin + GuiUtilities.kShapeButtonSize + GuiUtilities.kStandardHMargin,
		0, kShapeButtonRowHeight/2))

	kBrushShapes[1].ButtonObj:getButton().Parent = row
	kBrushShapes[2].ButtonObj:getButton().Parent = row

	return row
end

local function MakeMaterialsSectionWithTitle()
	local vsl = VerticallyScalingListFrame.new("mwt")
	vsl:AddBottomPadding()

	local titleLabel = GuiUtilities.MakeFrameWithSubSectionLabel("Material",
		i18n.TranslateId('Studio.TerrainEditor.Brush.Material'))
	vsl:AddChild(titleLabel)

	kMaterialsListObject = MaterialsListClass.new()
	local materialsFrame = kMaterialsListObject:GetMaterialsFrame()
	vsl:AddChild(materialsFrame)

	return vsl:GetFrame()
end

module.FirstTimeSetup = function(theMouse, thePluginGui, theContentFrame)
	mouse = theMouse
	pluginGui = thePluginGui
	contentFrame = theContentFrame
	local changeHistory = game:GetService('ChangeHistoryService')
	local terrain = game.Workspace.Terrain
	local coreGui = game:GetService("CoreGui")

	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "TerrainBrushGui"

	-- Create top level container.
	-- It has no title bar.
	local verticallyScalingListFrameObj = VerticallyScalingListFrame.new("BrushFrame")
	local verticallyScalingListFrame = verticallyScalingListFrameObj:GetFrame()
	verticallyScalingListFrame.Parent = contentFrame
	verticallyScalingListFrame.Visible = false

	-- Top level container has 3 collapsible sections:
	-- 1) Brush Settings.
	local brushSettingsObj = CollapsibleTitledSection.new('BrushSettings',
		i18n.TranslateId('Studio.TerrainEditor.Brush.BrushSettings'),
		true,
		true)
	GuiUtilities.MakeFrameAutoScalingList(brushSettingsObj:GetContentsFrame())

	kSizeSliderObj = LabeledSlider.new("Size",
		i18n.TranslateId('Studio.TerrainEditor.Brush.Size'),
		kMaxSelectionSize,
		kSelectionSize)
	local sizeSliderRow =kSizeSliderObj:GetFrame()

	kStrengthSliderObj = LabeledSlider.new("Strength",
		i18n.TranslateId('Studio.TerrainEditor.Brush.Strength'),
		101,
		kStrength*100)
	local strengthSliderRow = kStrengthSliderObj:GetFrame()

	local shapeButtonsRow = MakeShapeButtonsRow()

	GuiUtilities.AddStripedChildrenToListFrame(brushSettingsObj:GetContentsFrame(),
		{sizeSliderRow, strengthSliderRow, shapeButtonsRow})

	verticallyScalingListFrameObj:AddChild(brushSettingsObj:GetSectionFrame())

	-- 2) Materials Settings.
	local materialSettingsObj = CollapsibleTitledSection.new("MaterialSettings",
		i18n.TranslateId('Studio.TerrainEditor.Brush.MaterialSettings'),
		true,
		true)
	GuiUtilities.MakeFrameAutoScalingList(materialSettingsObj:GetContentsFrame())

	local autoColorObj= LabeledCheckbox.new("Auto",
		i18n.TranslateId('Studio.TerrainEditor.Brush.Auto'))

	-- Variable is *not* local, needs to live inside callback below.
	local materialSectionWithTitle = MakeMaterialsSectionWithTitle()

	GuiUtilities.AddStripedChildrenToListFrame(materialSettingsObj:GetContentsFrame(),
		{autoColorObj:GetFrame(), materialSectionWithTitle})

	autoColorObj:SetValueChangedFunction(function()
		-- When 'auto' material selection is on, hide material selection panel.
		materialSectionWithTitle.Visible = (not autoColorObj:GetValue())
	end)

	verticallyScalingListFrameObj:AddChild(materialSettingsObj:GetSectionFrame())

	-- 3) Advanced settings.
	local advancedSettingsObj = CollapsibleTitledSection.new("AdvancedSettings",
		i18n.TranslateId('Studio.TerrainEditor.Brush.Advanced'),
		true,
		true)
	GuiUtilities.MakeFrameAutoScalingList(advancedSettingsObj:GetContentsFrame())

	local planeLockObj = LabeledCheckbox.new("PLock",
		i18n.TranslateId('Studio.TerrainEditor.Brush.PlaneLock'))
	local snapToGridObj = LabeledCheckbox.new("STG",
		i18n.TranslateId('Studio.TerrainEditor.Brush.SnapToGrid'))
	local ignoreWaterObj = LabeledCheckbox.new("IGW",
		i18n.TranslateId('Studio.TerrainEditor.Brush.IgnoreWater'),
	 	true)
	planeLockObj:SetValueChangedFunction(function(value)
		if not planeLockObj:GetValue() then
			clearGrid()
		end
	end)

	GuiUtilities.AddStripedChildrenToListFrame(advancedSettingsObj:GetContentsFrame(),
		{planeLockObj:GetFrame(),
		 snapToGridObj:GetFrame(),
		 ignoreWaterObj:GetFrame()})

	verticallyScalingListFrameObj:AddChild(advancedSettingsObj:GetSectionFrame())





	local userInput = game:GetService('UserInputService')
	local prevCameraType = game.Workspace.CurrentCamera.CameraType

	--SUB SETTINGS--	(Non-userfacing Settings)
	local resolution = 4			--This is the size of voxels on Roblox. Why is this a variable? ;)
	local clickThreshold = .1
	local toolTipShowTime = 3.5
	local materialsTable = MaterialsListClass.MaterialsTable
	----------------

	----SETTINGS----	(Interface Settings)
	local brushShape = 'Sphere'
	----------------

	----Variables----
	local forceMaterial = nil
	local nearMaterial = nil
	local selectionPart = nil
	local selectionObject = nil
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

	---------------

	kSizeSliderObj:SetValueChangedFunction(function(newValue)
		kSelectionSize = newValue
		if selectionPart then
			selectionPart.Size = Vector3.new(1, 1, 1) * kSelectionSize * resolution + Vector3.new(.1, .1, .1)
		end
	end)

	kStrengthSliderObj:SetValueChangedFunction(function(newValue)
		kStrength = (newValue - 1) / 100
		if selectionObject then
			selectionObject.SurfaceTransparency = .95 - kStrength * .3
		end
	end)

	function setBrushShape(newBrushShape)
		brushShape = newBrushShape
		for _,v in ipairs(kBrushShapes) do
			v.ButtonObj:setSelected(newBrushShape == v.Name)
		end
		clearSelection()
	end

	for _,v in ipairs(kBrushShapes) do
		v.ButtonObj:getButton().MouseButton1Down:connect(function()
			setBrushShape(v.Name)
		end)
	end

	-- If this diabled condition is true, fix checkbox in disabled state
	-- with given override.
	-- Else fix checkbox in enabled state.
	local function updateCheckboxDisabledStateWithOverride(checkboxObj,
		disabledCondition,
		disabledOverride)
		if (disabledCondition) then
			checkboxObj:DisableWithOverrideValue(disabledOverride)
		else
			checkboxObj:SetDisabled(false)
		end
	end

	local function updateUsabilityLocks()
		if kCurrentTool then
			updateCheckboxDisabledStateWithOverride(snapToGridObj,
				kCurrentTool.UsesMaterials and kMaterialsListObject:GetCurrentMaterialSelection().forceSnapToGrid,
				true)

			updateCheckboxDisabledStateWithOverride(planeLockObj,
				kCurrentTool.DisablesPlaneLock,
				true)

			updateCheckboxDisabledStateWithOverride(autoColorObj,
				kCurrentTool.DisablesAutoColor,
					kCurrentTool.Name ~= 'Paint')

			updateCheckboxDisabledStateWithOverride(ignoreWaterObj,
				(kMaterialsListObject:GetCurrentMaterialSelection().forceIgnoreWater and not autoColorObj:GetValue()) or kCurrentTool.Name == 'Smooth',
				(kCurrentTool.Name ~= 'Smooth' and kMaterialsListObject:GetCurrentMaterialSelection().forceIgnoreWaterTo))

			autoColorObj:GetFrame().Visible = kCurrentTool.UsesMaterials
			materialSettingsObj:GetSectionFrame().Visible = not not kCurrentTool.UsesMaterials
		end
	end

	kMaterialsListObject:SetCallbackOnSelectionChanged(updateUsabilityLocks)

	-------------

	do
		local runService = game:GetService('RunService').RenderStepped
		function quickWait(waitTime)
			if not waitTime then
				runService:wait()
			elseif waitTime < .033333 then
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

	function clearSelection()
		if selectionObject then
			selectionObject:Destroy()
			selectionObject = nil
		end
		if selectionPart then
			selectionPart:Destroy()
			selectionPart = nil
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

	function drawGrid(point, normal, transparency, color)
		local transparency = transparency or .95
		local color = BrickColor.new(color or 'Institutional white')--'Pastel light blue')
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

	local function getCell(list, x, y, z, materialList)
		-- only include materialsList if you want to ignore water
		return (materialList and materialList[x] and materialList[x][y] and materialList[x][y][z]) == materialWater and 0
				or list and list[x] and list[x][y] and list[x][y][z]
	end

	local function getNeighborOccupancies(list, x, y, z, materialsList, includeSelf)
		--only include materialsList if you want to ignore water
		local fullNeighbor = false
		local emptyNeighbor = false
		local neighborOccupancies = includeSelf and getCell(list, x, y, z, materialsList) or 0
		local totalNeighbors = includeSelf and 1 or 0
		local nearMaterial = kMaterialsListObject:GetCurrentMaterialSelection().enum
		for axis = 1, 3 do
			for offset = -1, 1, 2 do
				local neighbor = nil
				local neighborMaterial = nil
				if axis == 1 then
					neighbor = list[x + offset] and list[x + offset][y][z]
				elseif axis == 2 then
					neighbor = list[x][y + offset] and list[x][y + offset][z]
				elseif axis == 3 then
					neighbor = list[x][y][z + offset]
				end
				if neighbor then
					if materialsList then
						if axis == 1 then
							neighborMaterial = materialsList[x + offset] and materialsList[x + offset][y][z]
						elseif axis == 2 then
							neighborMaterial = materialsList[x][y + offset] and materialsList[x][y + offset][z]
						elseif axis == 3 then
							neighborMaterial = materialsList[x][y][z + offset]
						end
						if neighborMaterial == materialWater then
							neighbor = 0
						end
					end
					if neighbor >= 1 then
						fullNeighbor = true
					end
					if neighbor <= 0 then
						emptyNeighbor = true
					end
					totalNeighbors = totalNeighbors + 1
					neighborOccupancies = neighborOccupancies + neighbor
				end
			end
		end
		return neighborOccupancies / (totalNeighbors ~= 0 and totalNeighbors or getCell(list, x, y, z, materialsList)), fullNeighbor, emptyNeighbor
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

	function operation(centerPoint)
		local desiredMaterial = autoColorObj:GetValue() and nearMaterial or kMaterialsListObject:GetCurrentMaterialSelection().enum

		local radius = kSelectionSize * .5 * resolution
		local minBounds = Vector3.new(
			floor((centerPoint.x - radius) / resolution) * resolution,
			floor((centerPoint.y - radius) / resolution) * resolution,
			floor((centerPoint.z - radius) / resolution) * resolution)
		local maxBounds = Vector3.new(
			ceil((centerPoint.x + radius) / resolution) * resolution,
			ceil((centerPoint.y + radius) / resolution) * resolution,
			ceil((centerPoint.z + radius) / resolution) * resolution)
		local region = Region3.new(minBounds, maxBounds)

		local materials, occupancies = terrain:ReadVoxels(region, resolution)
		local toolBrushOperation = nil
		for _, toolModule in pairs(kCurrentTool.Modules) do
			if toolModule.BrushOperation then
				toolBrushOperation = toolModule.BrushOperation
				break
			end
		end
		if toolBrushOperation then
			local middle = materials[ceil(#materials * .5)]	--This little section of code sets nearMaterial to middle of matrix
			if middle then	--dig X
				local middle = middle[ceil(#middle * .5)]
				if middle then	--dig Y
					local middle = middle[ceil(#middle * .5)]
					if middle and middle ~= materialAir and middle ~= materialWater then	--dig Z
						nearMaterial = middle
						desiredMaterial = autoColorObj:GetValue() and nearMaterial or desiredMaterial
					end
				end
			end

			toolBrushOperation(centerPoint, materials, occupancies, resolution, kSelectionSize, kStrength, desiredMaterial, brushShape, minBounds, maxBounds)
		else
			local airFillerMaterial = materialAir
			local waterHeight = 0
			if ignoreWaterObj:GetValue() and (kCurrentTool.Name == 'Erode' or kCurrentTool.Name == 'Subtract') then
				--[[local centerPointCell = Vector3.new(floor((centerPoint.x+.5)/resolution) * resolution, floor((centerPoint.y+.5)/resolution) * resolution, floor((centerPoint.z+.5)/resolution) * resolution)
				local sampleRegion = Region3.new(centerPointCell - Vector3.new(resolution,resolution,resolution), centerPointCell + Vector3.new(resolution,resolution,resolution))
				local sampleMaterials, sampleOccupancies = terrain:ReadVoxels(sampleRegion, resolution)]]

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

			for ix, vx in ipairs(occupancies) do
				local cellVectorX = minBounds.x + (ix - .5) * resolution - centerPoint.x

				for iy, vy in pairs(vx) do
					local cellVectorY = minBounds.y + (iy - .5) * resolution - centerPoint.y

					for iz, cellOccupancy in pairs(vy) do
						local cellVectorZ = minBounds.z + (iz - .5) * resolution - centerPoint.z

						local cellMaterial = materials[ix][iy][iz]
						local distance = sqrt(cellVectorX * cellVectorX + cellVectorY * cellVectorY + cellVectorZ * cellVectorZ)

						local magnitudePercent = 1
						local brushOccupancy = 1
						if brushShape == 'Sphere' then
							magnitudePercent = cos(min(1, distance / (radius + resolution * .5)) * pi * .5)
							brushOccupancy = max(0, min(1, (radius + .5 * resolution - distance) / resolution))
						elseif brushShape == 'Box' then
							if not snapToGridObj:GetValue() then
								local xOutside = 1 - max(0, abs(cellVectorX / resolution) + .5 - kSelectionSize * .5)
								local yOutside = 1 - max(0, abs(cellVectorY / resolution) + .5 - kSelectionSize * .5)
								local zOutside = 1 - max(0, abs(cellVectorZ / resolution) + .5 - kSelectionSize * .5)
								brushOccupancy = xOutside * yOutside * zOutside
							end
						end

						if cellMaterial ~= materialAir and cellMaterial ~= materialWater and cellMaterial ~= nearMaterial then
							nearMaterial = cellMaterial
							if autoColorObj:GetValue() then
								desiredMaterial = nearMaterial
							end
						end

						if ignoreWaterObj:GetValue() and cellMaterial == materialWater then
							cellMaterial = materialAir
							cellOccupancy = 0
						end
						local airFillerMaterial = waterHeight >= iy and airFillerMaterial or materialAir

						if kCurrentTool.Name == 'Add' then
							if kSelectionSize <= 2 then
								if brushOccupancy >= .5 then
									if cellMaterial == materialAir or cellOccupancy <= 0 then
										materials[ix][iy][iz] = desiredMaterial
									end
									occupancies[ix][iy][iz] = 1
								end
							else
								if brushOccupancy > cellOccupancy then
									occupancies[ix][iy][iz] = brushOccupancy
								end
								if brushOccupancy >= .5 and cellMaterial == materialAir then
									materials[ix][iy][iz] = desiredMaterial
								end
							end
						elseif kCurrentTool.Name == 'Subtract' then
							if cellMaterial ~= materialAir then
								if kSelectionSize <= 2 then
									if brushOccupancy >= .5 then
										occupancies[ix][iy][iz] = airFillerMaterial == materialWater and 1 or 0
										materials[ix][iy][iz] = airFillerMaterial
									end
								else
									local desiredOccupancy = max(0,1 - brushOccupancy)
									if desiredOccupancy < cellOccupancy then
										if desiredOccupancy <= one256th then
											occupancies[ix][iy][iz] = airFillerMaterial == materialWater and 1 or 0
											materials[ix][iy][iz] = airFillerMaterial
										else
											occupancies[ix][iy][iz] = min(cellOccupancy, desiredOccupancy)
										end
									end
								end
							end
						elseif kCurrentTool.Name == 'Grow' then
							if brushOccupancy >= .5 then --working on
								local desiredOccupancy = cellOccupancy
								local neighborOccupancies, fullNeighbor, emptyNeighbor = getNeighborOccupancies(occupancies, ix, iy, iz, ignoreWaterObj:GetValue() and materials)
								if cellOccupancy > 0 or fullNeighbor then	--problem if selection size is small.
									desiredOccupancy = desiredOccupancy + neighborOccupancies * (kStrength + .1) * .25 * brushOccupancy * magnitudePercent
								end
								if cellMaterial == materialAir and desiredOccupancy > 0 then
									materials[ix][iy][iz] = desiredMaterial
								end
								if desiredOccupancy ~= cellOccupancy then
									occupancies[ix][iy][iz] = desiredOccupancy
								end
							end
						elseif kCurrentTool.Name == 'Erode' then
							if cellMaterial ~= materialAir then
								local flippedBrushOccupancy = 1 - brushOccupancy
								if flippedBrushOccupancy <= .5 then
									local desiredOccupancy = cellOccupancy
									local emptyNeighbor = false
									local neighborOccupancies = 6
									for axis = 1, 3 do
										for offset = -1, 1, 2 do
											local neighbor = nil
											local neighborMaterial = nil
											if axis == 1 then
												neighbor = occupancies[ix + offset] and occupancies[ix + offset][iy][iz]
												neighborMaterial = materials[ix + offset] and materials[ix + offset][iy][iz]
											elseif axis == 2 then
												neighbor = occupancies[ix][iy + offset] and occupancies[ix][iy + offset][iz]
												neighborMaterial = materials[ix][iy + offset] and materials[ix][iy + offset][iz]
											elseif axis == 3 then
												neighbor = occupancies[ix][iy][iz + offset]
												neighborMaterial = materials[ix][iy][iz + offset]
											end
											if neighbor then
												if ignoreWaterObj:GetValue() and neighborMaterial == materialWater then
													neighbor = 0
												end
												if neighbor <= 0 then
													emptyNeighbor = true
												end
												neighborOccupancies = neighborOccupancies - neighbor
											end
										end
									end
									if cellOccupancy < 1 or emptyNeighbor then
										desiredOccupancy = max(0,desiredOccupancy - (neighborOccupancies / 6) * (kStrength + .1) * .25 * brushOccupancy * magnitudePercent)
									end
									if desiredOccupancy <= one256th then
										occupancies[ix][iy][iz] = airFillerMaterial == materialWater and 1 or 0
										materials[ix][iy][iz] = airFillerMaterial
									else
										occupancies[ix][iy][iz] = desiredOccupancy
									end
								end
							end
						elseif kCurrentTool.Name == 'Paint' then
							if brushOccupancy > 0 and cellOccupancy > 0 then
								materials[ix][iy][iz] = desiredMaterial
							end
						end
					end
				end
			end
		end
		terrain:WriteVoxels(region, resolution, materials, occupancies)
	end


	module.On = function(theTool)
		kCurrentTool = theTool
		screenGui.Parent = coreGui
		verticallyScalingListFrame.Visible = true
		on = true

		updateUsabilityLocks()

		local loopTag = {}	--using table as a unique value for debouncing
		currentLoopTag = loopTag

		local reportClick = true
		while currentLoopTag and currentLoopTag == loopTag do
			local t = tick()
			local radius = kSelectionSize * .5 * resolution
			local cameraPos = mouse.Origin.p

			local ignoreModel = nil
			if game.Players.LocalPlayer and game.Players.LocalPlayer.Character then
				ignoreModel = game.Players.LocalPlayer.Character
			end
			local mouseRay = Ray.new(cameraPos, mouse.UnitRay.Direction*10000)
			local hitObject, mainPoint = game.Workspace:FindPartOnRay(mouseRay, ignoreModel, false, ignoreWaterObj:GetValue())

			if kCurrentTool.Name == 'Add' then
				mainPoint = mainPoint - mouse.UnitRay.Direction * .05
			elseif kCurrentTool.Name == 'Subtract' or kCurrentTool.Name == 'Paint' or kCurrentTool.Name == 'Grow' then
				mainPoint = mainPoint + mouse.UnitRay.Direction * .05
			end

			if mouse.Target == nil then	--cage the cursor so that it does not fly away
				mainPoint = cameraPos + mouse.UnitRay.Direction * lastCursorDistance --limits the distance of the mainPoint if the mouse is not hitting an object
			end

			if not mouseDown or click then
				lastPlanePoint = mainPoint
				lastNormal = findFace()
				reportClick = true
			end

			if planeLockObj:GetValue() then
				mainPoint = lineToPlaneIntersection(cameraPos, mouse.UnitRay.Direction, lastPlanePoint, lastNormal)
			end

			if snapToGridObj:GetValue() then
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
							AnalyticsService:SendEventDeferred("studio", "TerrainEditor", "UseTerrainTool", {
								userId = StudioService:GetUserId(),
								toolName = kCurrentTool.Name
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
								operation(lastMainPoint + differenceVector * dragDistance * (i / samples))
							end
							mainPoint = lastMainPoint + differenceVector * dragDistance
						else
							operation(mainPoint)
						end
						lastMainPoint = mainPoint
					end
				end
			end

			if not selectionPart then
				selectionPart = Instance.new('Part')
				selectionPart.Name = 'SelectionPart'
				selectionPart.Transparency = 1
				selectionPart.TopSurface = 'Smooth'
				selectionPart.BottomSurface = 'Smooth'
				selectionPart.Anchored = true
				selectionPart.CanCollide = false
				selectionPart.Size = Vector3.new(1, 1, 1) * kSelectionSize * resolution + Vector3.new(.1, .1, .1)
				selectionPart.Parent = screenGui
			end
			if not selectionObject then
				selectionObject = Instance.new(brushShape == 'Sphere' and 'SelectionSphere' or 'SelectionBox')
				selectionObject.Name = 'SelectionObject'
				selectionObject.Color = BrickColor.new('Toothpaste')
				selectionObject.SurfaceTransparency = .95 - kStrength * .3
				selectionObject.SurfaceColor = BrickColor.new('Toothpaste')
				selectionObject.Adornee = selectionPart
				selectionObject.Parent = selectionPart
			end

			if not userInput.TouchEnabled or mouseDown then
				selectionPart.CFrame = CFrame.new(mainPoint)

				if planeLockObj:GetValue() then
					local mainPointIntersect = lineToPlaneIntersection(mainPoint, mouse.UnitRay.Direction, lastPlanePoint, lastNormal)	--we need to get this otherwise the plane can shift whiel drawing
					drawGrid(mainPointIntersect, lastNormal, mouseDown and .8)
				end
			end

			lastCursorDistance = max(20 + kSelectionSize * resolution * 1.5,(mainPoint - cameraPos).magnitude)

			quickWait()
		end
	end

	module.Off = function()
		currentLoopTag = nil
		screenGui.Parent = script.Parent
		verticallyScalingListFrame.Visible = false
		on = false

		clearSelection()
		clearGrid()
		mouseDown = false
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
					kSizeSliderObj:SetValue(kSelectionSize)
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
	userInput.InputBegan:connect(function(event, soaked)
		downKeys[event.KeyCode] = true
		if event.UserInputType == Enum.UserInputType.MouseButton1 and not soaked and on then
			mouseDown = true
			click = true
		elseif event.UserInputType == Enum.UserInputType.Touch and on then
			OnTouchBegan(event, soaked)
		end
	end)

	userInput.InputChanged:connect(function(input, processed)
		if input.UserInputType == Enum.UserInputType.Touch then
			OnTouchChanged(input, processed)
		end
	end)

	userInput.InputEnded:connect(function(event, soaked)
		downKeys[event.KeyCode] = nil
		if event.UserInputType == Enum.UserInputType.MouseButton1 and mouseDown then
			mouseDown = false
			if changeHistory then
				changeHistory:SetWaypoint('Terrain '..kCurrentTool.Name)
			end
		elseif event.UserInputType == Enum.UserInputType.Touch then
			OnTouchEnded(event, soaked)
		end
	end)

	function scrollwheel(change)
		if on then
			if downKeys[Enum.KeyCode.LeftShift] or downKeys[Enum.KeyCode.RightShift] then
				kSelectionSize = max(kMinSelectionSize, min(kMaxSelectionSize, kSelectionSize + change))
				kSizeSliderObj:SetValue(kSelectionSize)
			end
			if downKeys[Enum.KeyCode.LeftControl] or downKeys[Enum.KeyCode.RightControl] then
				kStrength = max(0, min(1, kStrength + change * (1/(kMaxSelectionSize-kMinSelectionSize))))
				kStrengthSliderObj:SetValue(round(kStrength * 100 + 1))
			end
		end
	end

	mouse.WheelForward:connect(function()
		scrollwheel(1)
	end)

	mouse.WheelBackward:connect(function()
		scrollwheel(-1)
	end)

	setBrushShape(brushShape)
	kMaterialsListObject:SetMaterialSelection(kMaterialsListObject:GetCurrentMaterialSelection())

	-- Reset keyboard status on lost focus as key release may never come blocked by popups etc.
	userInput.WindowFocusReleased:connect(function()
		downKeys = {}
	end)
end


return module