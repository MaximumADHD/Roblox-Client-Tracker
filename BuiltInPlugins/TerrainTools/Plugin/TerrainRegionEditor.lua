--Made by Stickmasterluke
local module = {}

--[[todo:
	-fill region (with material, action)
	-optimize resize scaling code more
]]
local FFlagTerrainToolMetrics = settings():GetFFlag("TerrainToolMetrics")
local AnalyticsService = game:GetService("AnalyticsService")
local StudioService = game:GetService("StudioService")

local GuiUtilities = require(script.Parent.Parent.Libs.GuiUtilities)
local CustomTextButton = require(script.Parent.Parent.Libs.CustomTextButton)
local VerticallyScalingListFrame = require(script.Parent.Parent.Libs.VerticallyScalingListFrame)
local CollapsibleTitledSection = require(script.Parent.Parent.Libs.CollapsibleTitledSection)
local LabeledCheckbox = require(script.Parent.Parent.Libs.LabeledCheckbox)
local ImageButtonWithText = require(script.Parent.Parent.Libs.ImageButtonWithText)
local i18n = require(script.Parent.Parent.Libs.Localization)

local MaterialsListClass = require(script.Parent.MaterialsList)

local Terrain = workspace:WaitForChild('Terrain', 86400) or workspace:WaitForChild('Terrain')
while not Terrain.IsSmooth do
	Terrain.Changed:wait()
end

local on = false
local currentTool = 'Create'

local pluginGui = nil
local contentFrame = nil
local terrainRegionFrame = nil
local fillFrame = nil

local kRegionButtonOuterWidth = 45
local kRegionButtonOuterHeight = 62
local kRegionButtonBorderSize = 0
local kRegionButtonActualWidth = (kRegionButtonOuterWidth - 2 * kRegionButtonBorderSize)
local kRegionButtonActualHeight = (kRegionButtonOuterHeight - 2 * kRegionButtonBorderSize)

local kRegionButtonActualSizeUDim2 = UDim2.new(0, kRegionButtonActualWidth, 0, kRegionButtonActualHeight)
local kRegionButtonOuterSizeUDim2 = UDim2.new(0, kRegionButtonOuterWidth, 0, kRegionButtonOuterHeight)

local kFillConfirmButtonWidth = 44
local kFillConfirmButtonHeight = 25
local kMaterialsListObject = nil
local kBottomButtonMargin = 10

local kRegionModeButtonConfigs =
{
	Select = {
		Text = "Studio.Common.Action.Select",
		Name = "ButtonSelect",
		Icon = "rbxasset://textures/TerrainTools/icon_regions_select.png",
		LayoutOrder = 1,
		Mode = 'Select',
		Tool = 'Resize',
	},
	Move = {
		Text = "Studio.Common.Action.Move",
		Name = "ButtonMove",
		Icon = "rbxasset://textures/TerrainTools/icon_regions_move.png",
		LayoutOrder = 2,
		Mode = 'Edit',
		Tool = 'Move',
	},
	Resize = {
		Text = "Studio.Common.Action.Resize",
		Name = "ButtonResize",
		Icon = "rbxasset://textures/TerrainTools/icon_regions_resize.png",
		LayoutOrder = 3,
		Mode = 'Edit',
		Tool = 'Resize',
	},
	Rotate = {
		Text = "Studio.Common.Action.Rotate",
		Name = "ButtonRotate",
		Icon = "rbxasset://textures/TerrainTools/icon_regions_rotate.png",
		LayoutOrder = 4,
		Mode = 'Edit',
		Tool = 'Rotate',
	},
}

local kRegionOperationButtonConfigs =
{
	Copy = {
		Text = "Studio.Common.Action.Copy",
		Name = "ButtonCopy",
		Icon = "rbxasset://textures/TerrainTools/icon_regions_copy.png",
		LayoutOrder = 5,
	},
	Paste = {
		Text = "Studio.Common.Action.Paste",
		Name = "ButtonPaste",
		Icon = "rbxasset://textures/TerrainTools/icon_regions_paste.png",
		LayoutOrder = 6,
	},
	Delete = {
		Text = "Studio.Common.Action.Delete",
		Name = "ButtonDelete",
		Icon = "rbxasset://textures/TerrainTools/icon_regions_delete.png",
		LayoutOrder = 7,
	},
	Fill = {
		Text = "Studio.Common.Action.Fill",
		Name = "ButtonFill",
		Icon = "rbxasset://textures/TerrainTools/icon_regions_fill.png",
		LayoutOrder = 8,
	},
}

local function reportButtonClick(name)
	if FFlagTerrainToolMetrics then
		AnalyticsService:SendEventDeferred("studio", "TerrainEditor", "RegionTool", {
			userId = StudioService:GetUserId(),
			buttonName = name
		})
	end
end

local function createRegionButton(parent, buttonConfig)
	local buttonObj = ImageButtonWithText.new(buttonConfig.Name,
		buttonConfig.LayoutOrder,
		buttonConfig.Icon,
		i18n.TranslateId(buttonConfig.Text),
		kRegionButtonActualSizeUDim2,
		UDim2.new(0,45,0,36),
		UDim2.new(0,0,0,0),
		UDim2.new(1,0,0,22),
		UDim2.new(0,0,1,-22))

	buttonObj:getButton().Parent = parent
	buttonConfig.ButtonObj = buttonObj
end

function MakeButtonGridInFrameWithTitle(buttonConfigs, name, title)
	local vsf = VerticallyScalingListFrame.new(name)
	vsf:AddBottomPadding()

	local labelFrame = GuiUtilities.MakeFrameWithSubSectionLabel("Label", title)
	vsf:AddChild(labelFrame)

	local buttonListFrame = GuiUtilities.MakeFixedHeightFrame("grid", kRegionButtonOuterHeight)
	vsf:AddChild(buttonListFrame)
	buttonListFrame.BackgroundTransparency = 1

	local uiGridLayout = Instance.new("UIGridLayout")
	uiGridLayout.CellSize = kRegionButtonOuterSizeUDim2
	uiGridLayout.CellPadding = UDim2.new(0,0,0,0)
	uiGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
	uiGridLayout.VerticalAlignment = Enum.VerticalAlignment.Top
	uiGridLayout.Parent = buttonListFrame
	uiGridLayout.SortOrder = Enum.SortOrder.LayoutOrder

	local uiPadding = Instance.new("UIPadding")
	uiPadding.PaddingBottom = UDim.new(0, 0)
	uiPadding.PaddingTop = UDim.new(0, 0)
	uiPadding.PaddingLeft = UDim.new(0, GuiUtilities.kStandardHMargin)
	uiPadding.PaddingRight = UDim.new(0, GuiUtilities.kStandardHMargin)
	uiPadding.Parent = buttonListFrame

	for buttonId, buttonConfig in pairs(buttonConfigs) do
		createRegionButton(buttonListFrame, buttonConfig)
	end

	return vsf:GetFrame()
end

function MakeModeButtonsFrame()
	local frame = MakeButtonGridInFrameWithTitle(kRegionModeButtonConfigs,
		 "ModeFrame",
		 i18n.TranslateId('Studio.TerrainEditor.Regions.Tools'))
	return frame
end

function MakeOperationButtonsFrame()
	local frame = MakeButtonGridInFrameWithTitle(kRegionOperationButtonConfigs,
		"OperationFrame",
		i18n.TranslateId('Studio.Common.Action.Edit'))
	return frame
end

function AddToFrameInOrder(childElement, parentFrame, order)
	childElement.Parent = parentFrame
	childElement.LayoutOrder = order
end

local function MakeButtonsFrame()
	local frame = GuiUtilities.MakeFixedHeightFrame("Buttons", GuiUtilities.kBottomButtonsFrameHeight + kBottomButtonMargin)
	frame.BackgroundTransparency = 1

	local okButtonObj = CustomTextButton.new("OkButton",
		i18n.TranslateId('Studio.Common.Action.OK'))
	okButtonObj:getButton().Parent = frame
	okButtonObj:getButton().Size = UDim2.new(0, GuiUtilities.kBottomButtonsWidth, 0, GuiUtilities.kBottomButtonsHeight)
	okButtonObj:getButton().Position = UDim2.new(0.5, -GuiUtilities.kBottomButtonsWidth/2,
		 1, -GuiUtilities.kBottomButtonsHeight - kBottomButtonMargin)

	return frame
end


function MakeFillFrame(pluginGui)
	local vsl = VerticallyScalingListFrame.new("mwt")
	vsl:AddBottomPadding()

	local titleLabel = GuiUtilities.MakeFrameWithSubSectionLabel("Material",
		i18n.TranslateId('Studio.TerrainEditor.Regions.FillSelection'))
	vsl:AddChild(titleLabel)

	kMaterialsListObject = MaterialsListClass.new()
	local materialsFrame = kMaterialsListObject:GetMaterialsFrame()
	vsl:AddChild(materialsFrame)

	local buttonFrame = MakeButtonsFrame()
	vsl:AddChild(buttonFrame)

	vsl:GetFrame().Visible = false
	return vsl:GetFrame()
end

module.FirstTimeSetup = function(theMouse, thePluginGui, theContentFrame)
	----SETTINGS----
	local mode = 'Select'	--Select, Edit
	local tool = 'None'		--None, Resize, Move, Rotate
	local currentButtonId = 'Select'

	local fillAir = true
	local fillWater = true
	----------------

	--SUB SETTINGS--
	local resolution = 4			--This is the size of voxels on Roblox. Why is this a variable? ;)
	local textSelectColor = Color3.new(72/255, 145/255, 212/255)
	local white = Color3.new(238/255, 238/255, 238/255)
	local editColor1 = 'Institutional white'
	local editColor2 = 'Light stone grey'
	local rotationInterval = math.pi * .5
	local regionLengthLimit = 125
	----------------

	mouse = theMouse
	pluginGui = thePluginGui
	contentFrame = theContentFrame
	local changeHistory = game:GetService('ChangeHistoryService')
	local terrain = game.Workspace.Terrain
	local coreGui = game:GetService('CoreGui')

	screenGui = Instance.new("ScreenGui")

	-- Size will be updated dynamically.
	local editCollapsibleSectionObj = CollapsibleTitledSection.new("Edit",
		i18n.TranslateId('Studio.TerrainEditor.Regions.EditTools'),
		true,
		true)
	GuiUtilities.MakeFrameAutoScalingList(editCollapsibleSectionObj:GetContentsFrame())
	editCollapsibleSectionObj:GetSectionFrame().Parent = contentFrame

	-- First child: the "merge empty" button(s).
	local checkboxObj = LabeledCheckbox.new("CheckboxFrame",
		i18n.TranslateId('Studio.TerrainEditor.Regions.MergeEmpty'),
		fillAir)

	-- Second child: the "Mode" buttons.
	local modeButtonsFrame = MakeModeButtonsFrame()

	-- Third child: the "Operation" buttons.
	local operationButtonsFrame = MakeOperationButtonsFrame()

	-- Fourth child: the "Fill" frame.
	local fillFrame = MakeFillFrame()

	GuiUtilities.AddStripedChildrenToListFrame(editCollapsibleSectionObj:GetContentsFrame(), {
		checkboxObj:GetFrame(),
		modeButtonsFrame,
		operationButtonsFrame,
		fillFrame})

	editCollapsibleSectionObj:GetSectionFrame().Visible = false
	terrainRegionFrame = editCollapsibleSectionObj:GetSectionFrame()

	local buttonSelect = modeButtonsFrame.grid.ButtonSelect
	local buttonMove = modeButtonsFrame.grid.ButtonMove
	local buttonResize = modeButtonsFrame.grid.ButtonResize
	local buttonRotate = modeButtonsFrame.grid.ButtonRotate
	local buttonCopy = operationButtonsFrame.grid.ButtonCopy
	local buttonPaste = operationButtonsFrame.grid.ButtonPaste
	local buttonDelete = operationButtonsFrame.grid.ButtonDelete
	local buttonFill = operationButtonsFrame.grid.ButtonFill

	local materialsTable = MaterialsListClass.MaterialsTable
	local buttonFillConfirm = fillFrame.Buttons.OkButton
	--local mouse = plugin:GetMouse()

	--Variables--
	local faceToNormal = {
		[Enum.NormalId.Top] = Vector3.new(0, 1, 0),
		[Enum.NormalId.Bottom] = Vector3.new(0, -1, 0),
		[Enum.NormalId.Left] = Vector3.new(-1, 0, 0),
		[Enum.NormalId.Right] = Vector3.new(1, 0, 0),
		[Enum.NormalId.Front] = Vector3.new(0, 0, -1),
		[Enum.NormalId.Back] = Vector3.new(0, 0, 1),
	}
	local undefined=0/0
	local selectionStart = nil
	local selectionEnd = nil
	local selectionPart = nil
	local selectionObject = nil
	local selectionHandles = nil
	kMaterialsListObject:SetMaterialSelection(materialsTable[5])
	local downLoop = nil
	local clickStart = Vector3.new(0, 0, 0)
	local dragVector = nil
	local dragStart = true
	local lockedMaterials, lockedOccupancies = nil, nil
	local lockedRegion = nil
	local behindThis = nil
	local axis = 'X'
	local materialAir = Enum.Material.Air
	local materialWater = Enum.Material.Water
	local floor = math.floor		--Scaling linear resize
	local ceil = math.ceil
	-------------

	function updateButtonSelectionState(newButtonId, buttonId)
		kRegionModeButtonConfigs[buttonId].ButtonObj:setSelected(newButtonId == buttonId)
	end

	function setButton(newButtonId)
		lockInMap()

		for buttonId, buttonConfig in pairs(kRegionModeButtonConfigs) do
			updateButtonSelectionState(newButtonId, buttonId)
		end

		if (newButtonId ~= nil) then
			mode = kRegionModeButtonConfigs[newButtonId].Mode
			tool = kRegionModeButtonConfigs[newButtonId].Tool
		end

		currentButtonId = newButtonId
		renderSelection()
	end

	buttonSelect.MouseButton1Down:connect(function()
		setButton('Select')
		reportButtonClick('Select')
	end)
	buttonMove.MouseButton1Down:connect(function()
		setButton('Move')
		reportButtonClick('Move')
	end)
	buttonResize.MouseButton1Down:connect(function()
		setButton('Resize')
		reportButtonClick('Resize')
	end)
	buttonRotate.MouseButton1Down:connect(function()
		setButton('Rotate')
		reportButtonClick('Rotate')
	end)

	checkboxObj:SetValueChangedFunction(function(value)
		fillAir = value
		if selectionStart and selectionEnd then
			if currentButtonId=='Move' or currentButtonId=='Resize' then
				updateDragOperation()
			elseif currentButtonId=='Rotate' then
				updateRotateOperation()
			end
		end
	end)

	function lockInMap()	--Should call this every time the terrain under your selection changes. Don't for resize though, it uses the original lockin for rescaling.
		if selectionStart and selectionEnd then
			local region = Region3.new((selectionStart - Vector3.new(1,1,1)) * resolution, selectionEnd * resolution)
			lockedRegion = region
			lockedMaterials, lockedOccupancies = terrain:ReadVoxels(region, resolution)
		end
	end

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

	function clearSelection()
		if selectionArcHandles then
			selectionArcHandles:Destroy()
			selectionArcHandles = nil
		end
		if selectionHandles then
			selectionHandles:Destroy()
			selectionHandles = nil
		end
		if selectionObject then
			selectionObject:Destroy()
			selectionObject = nil
		end
		if selectionPart then
			selectionPart:Destroy()
			selectionPart = nil
		end
	end

	local function round(n)
		return n + .5 - ((n + .5)%1)
	end

	local function positionWorldToVoxel(pos)
		return Vector3.new(ceil(pos.x / resolution), ceil(pos.y / resolution), ceil(pos.z / resolution))
	end

	local function make3DTable(size,fill)
		local size = size or Vector3.new(1,1,1)
		local newTable = {}
		for x = 1, size.x do
			local xt = {}
			for y = 1, size.y do
				local yt = {}
				for z = 1, size.z do
					yt[z] = fill
				end
				xt[y] = yt
			end
			newTable[x] = xt
		end
		return newTable
	end

	local function linInterp(a,b,p)
		return a+(b-a)*p
	end

	local function exaggerate(n,exaggeration)
		return (n-.5)*exaggeration + .5		--optimized
		--return n*exaggeration - exaggeration*.5 + .5
	end
	local function exaggeratedLinInterp(a,b,p,exaggeration)
		local unclamped = (a+(b-a)*p-.5)*exaggeration+.5
		return (unclamped < 0 and 0) or (unclamped > 1 and 1) or unclamped

		--At first I thought this didn't need to be clamped because the terrain clamps that anways.
		--But I then realized I am using this number a bit more before handing it to terrain.
		--After doing some tests. Clamping is necessary for artificial structures being streched. If unclamped, rounding of artificial edges occurs.
		--return (a+(b-a)*p-.5)*exaggeration+.5
		--Maybe this extra dimension of unclamping might be desired for natural terrain, but not artificuial?
	end

	function updateDragOperation()
		local dragVector = dragVector or Vector3.new(0,0,0)
		local temporaryStart = selectionStart
		local temporaryEnd = selectionEnd
		if tool == 'Resize' then
			if dragStart then
				temporaryStart = Vector3.new(
					math.min(
						math.max(temporaryStart.x+dragVector.x,temporaryEnd.x-regionLengthLimit),
						temporaryEnd.x),
					math.min(
						math.max(temporaryStart.y+dragVector.y,temporaryEnd.y-regionLengthLimit),
						temporaryEnd.y),
					math.min(
						math.max(temporaryStart.z+dragVector.z,temporaryEnd.z-regionLengthLimit),
						temporaryEnd.z)
				)
			else
				temporaryEnd = Vector3.new(
					math.max(
						math.min(temporaryEnd.x+dragVector.x,temporaryStart.x+regionLengthLimit),
						temporaryStart.x),
					math.max(
						math.min(temporaryEnd.y+dragVector.y,temporaryStart.y+regionLengthLimit),
						temporaryStart.y),
					math.max(
						math.min(temporaryEnd.z+dragVector.z,temporaryStart.z+regionLengthLimit),
						temporaryStart.z)
				)
			end
			if mode == 'Edit' then
				local region = Region3.new((temporaryStart - Vector3.new(1,1,1)) * resolution, temporaryEnd * resolution)
				if behindThis then
					terrain:WriteVoxels(behindThis.region, resolution, behindThis.materials, behindThis.occupancies)
				else
					if selectionStart and selectionEnd then
						local region = Region3.new((selectionStart - Vector3.new(1,1,1)) * resolution, selectionEnd * resolution)
						local regionSize = region.Size / resolution
						terrain:WriteVoxels(region, resolution, make3DTable(regionSize,materialAir), make3DTable(regionSize,0))
					end
				end
				behindThis = {}
				behindThis.region = region
				behindThis.materials, behindThis.occupancies = terrain:ReadVoxels(region, resolution)

				local behindMaterials, behindOccupancies = behindThis.materials, behindThis.occupancies

				local loopx = #lockedMaterials - 1
				local loopy = #lockedMaterials[1] - 1
				local loopz = #lockedMaterials[1][1] - 1
				local tempRegionSize = Vector3.new(1,1,1) + temporaryEnd - temporaryStart
				local tempSizeX = tempRegionSize.x
				local tempSizeY = tempRegionSize.y
				local tempSizeZ = tempRegionSize.z
				local newMat = {}
				local newOcc = {}
				for x=1, tempSizeX do
					local scalex = (x-1)/(tempSizeX-1)*loopx
					if scalex ~= scalex then
						scalex = 0
					end
					local startx = floor(scalex)+1
					local endx = startx+1
					local interpScalex = scalex-startx+1
					if startx > loopx then
						endx = startx
					end

					local xtm = {}
					local xto = {}
					for y=1, tempSizeY do
						local scaley = (y-1)/(tempSizeY-1)*loopy
						if scaley ~= scaley then
							scaley = 0
						end
						local starty = floor(scaley)+1
						local endy = starty+1
						local interpScaley = scaley-starty+1
						if starty > loopy then
							endy = starty
						end

						local ytm = {}
						local yto = {}
						for z=1, tempSizeZ do
							local scalez = (z-1)/(tempSizeZ-1)*loopz	--consider adding 1 here and removing +1's elsewhere
							if scalez ~= scalez then		--undefined check
								scalez = 0
							end
							local startz = floor(scalez)+1
							local endz = startz+1
							local interpScalez = scalez-startz+1
							if startz > loopz then
								endz = startz
							end

							local interpz1 = exaggeratedLinInterp(lockedOccupancies[startx][starty][startz],lockedOccupancies[startx][starty][endz],interpScalez, tempSizeZ/(loopz+1))
							local interpz2 = exaggeratedLinInterp(lockedOccupancies[startx][endy][startz],lockedOccupancies[startx][endy][endz],interpScalez, tempSizeZ/(loopz+1))
							local interpz3 = exaggeratedLinInterp(lockedOccupancies[endx][starty][startz],lockedOccupancies[endx][starty][endz],interpScalez, tempSizeZ/(loopz+1))
							local interpz4 = exaggeratedLinInterp(lockedOccupancies[endx][endy][startz],lockedOccupancies[endx][endy][endz],interpScalez, tempSizeZ/(loopz+1))

							local interpy1 = exaggeratedLinInterp(interpz1,interpz2,interpScaley, tempSizeY/(loopy+1))
							local interpy2 = exaggeratedLinInterp(interpz3,interpz4,interpScaley, tempSizeY/(loopy+1))

							local interpx1 = exaggeratedLinInterp(interpy1,interpy2,interpScalex, tempSizeX/(loopx+1))

							local newMaterial = lockedMaterials[round(scalex)+1][round(scaley)+1][round(scalez)+1]

							if fillAir and newMaterial == materialAir then
								ytm[z]=behindMaterials[x][y][z]
								yto[z]=behindOccupancies[x][y][z]
							elseif fillWater and newMaterial == materialWater and behindMaterials[x][y][z] ~= materialAir then
								ytm[z]=behindMaterials[x][y][z]
								yto[z]=behindOccupancies[x][y][z]
							else
								ytm[z]=newMaterial
								yto[z]=interpx1
							end
						end
						xtm[y] = ytm
						xto[y] = yto
					end
					newMat[x] = xtm
					newOcc[x] = xto
				end

				terrain:WriteVoxels(region, resolution, newMat, newOcc)
			else
				behindThis = nil
			end
		elseif tool == 'Move' then
			temporaryStart = temporaryStart + dragVector
			temporaryEnd = temporaryEnd + dragVector
			if mode == 'Edit' then
				local region = Region3.new((temporaryStart - Vector3.new(1,1,1)) * resolution, temporaryEnd * resolution)
				if behindThis then
					terrain:WriteVoxels(behindThis.region, resolution, behindThis.materials, behindThis.occupancies)
				else
					if selectionStart and selectionEnd then
						local region = Region3.new((selectionStart - Vector3.new(1,1,1)) * resolution, selectionEnd * resolution)
						local regionSize = region.Size / resolution
						terrain:WriteVoxels(region, resolution, make3DTable(regionSize,materialAir), make3DTable(regionSize,0))
					end
				end
				behindThis = {}
				behindThis.region = region
				behindThis.materials, behindThis.occupancies = terrain:ReadVoxels(region, resolution)

				local behindMaterials, behindOccupancies = behindThis.materials, behindThis.occupancies

				if not (fillAir or fillWater) then
					terrain:WriteVoxels(region, resolution, lockedMaterials, lockedOccupancies)
				else
					local newMat = {}
					local newOcc = {}

					for x,xv in ipairs(lockedMaterials) do
						local xtm = {}
						local xto = {}
						for y,yv in ipairs(xv) do
							local ytm = {}
							local yto = {}
							for z,zv in ipairs(yv) do
								if fillAir and zv == materialAir then
									ytm[z]=behindMaterials[x][y][z]
									yto[z]=behindOccupancies[x][y][z]
								elseif fillWater and zv == materialWater and behindMaterials[x][y][z] ~= materialAir then
									ytm[z]=behindMaterials[x][y][z]
									yto[z]=behindOccupancies[x][y][z]
								else
									ytm[z]=lockedMaterials[x][y][z]
									yto[z]=lockedOccupancies[x][y][z]
								end
							end
							xtm[y] = ytm
							xto[y] = yto
						end
						newMat[x] = xtm
						newOcc[x] = xto
					end
					terrain:WriteVoxels(region, resolution, newMat, newOcc)
				end
			end
		end
		renderSelection(temporaryStart,temporaryEnd)
	end

	function dragHandles(face, delta)
		local normal = faceToNormal[face]
		local delta = delta
		local newDragVector = normal * floor((delta + .5) / resolution)
		dragStart = normal.x < 0 or normal.y < 0 or normal.z < 0	--This determines if we are dragging a side on the min or max bounds
		if newDragVector ~= dragVector then
			dragVector = newDragVector
			updateDragOperation()
		end
	end

	local function rotate(mx,x,my,y,rotation)
		if rotation == 1 then
			return my + 1 - y, x
		elseif rotation == 2 then
			return mx + 1 - x, my + 1 - y
		elseif rotation == 3 then
			return y, mx + 1 - x
		end
		return x,y
	end

	function updateRotateOperation()
		local dragAngle = dragAngle or 0
		local rotationCFrame = CFrame.Angles(
			axis ~= 'X' and 0 or dragAngle * rotationInterval,
			axis ~= 'Y' and 0 or dragAngle * rotationInterval,
			axis ~= 'Z' and 0 or dragAngle * rotationInterval
		)
		local temporarySize = Vector3.new(1,1,1) + selectionEnd - selectionStart
		local centerOffset = Vector3.new(ceil(temporarySize.x * .5),
			ceil(temporarySize.y * .5),
			ceil(temporarySize.z * .5))

		temporarySize = rotationCFrame * temporarySize
		local temporarySizeX = round(math.abs(temporarySize.x))	--I need to round these because of floating point imprecision
		local temporarySizeY = round(math.abs(temporarySize.y))
		local temporarySizeZ = round(math.abs(temporarySize.z))
		centerOffset = centerOffset - Vector3.new(ceil(temporarySizeX * .5), ceil(temporarySizeY * .5), ceil(temporarySizeZ * .5))

		local temporaryEnd = selectionStart + centerOffset + Vector3.new(temporarySizeX, temporarySizeY, temporarySizeZ) - Vector3.new(1, 1, 1)
		local temporaryStart = selectionStart + centerOffset

		if mode == 'Edit' then
			local region = Region3.new((temporaryStart - Vector3.new(1,1,1)) * resolution, temporaryEnd * resolution)
			if behindThis then
				terrain:WriteVoxels(behindThis.region, resolution, behindThis.materials, behindThis.occupancies)
			else
				if selectionStart and selectionEnd then
					local region = Region3.new((selectionStart - Vector3.new(1,1,1)) * resolution, selectionEnd * resolution)
					local regionSize = region.Size / resolution
					terrain:WriteVoxels(region, resolution, make3DTable(regionSize,materialAir), make3DTable(regionSize,0))
				end
				--local regionSize = lockedRegion.Size / resolution
				--terrain:WriteVoxels(lockedRegion, resolution, make3DTable(regionSize,materialAir), make3DTable(regionSize,0))
			end
			behindThis = {}
			behindThis.region = region
			behindThis.materials, behindThis.occupancies = terrain:ReadVoxels(region, resolution)

			local newMat = {}
			local newOcc = {}

			for x=1, temporarySizeX do
				local xtm = {}
				local xto = {}
				for y=1, temporarySizeY do
					local ytm = {}
					local yto = {}
					for z=1, temporarySizeZ do
						local targetx = x
						local targety = y
						local targetz = z
						if axis == 'Y' then	--prioritize y because I know this is the primary rotation axis
							targetx, targetz = rotate(temporarySizeX, x, temporarySizeZ, z, dragAngle)
						elseif axis == 'X' then
							targetz, targety = rotate(temporarySizeZ, z, temporarySizeY, y, dragAngle)
						elseif axis == 'Z' then
							targety, targetx = rotate(temporarySizeY, y, temporarySizeX, x, dragAngle)
						end
						local newMaterial = lockedMaterials[targetx][targety][targetz]

						if fillAir and newMaterial == materialAir then
							ytm[z]=behindThis.materials[x][y][z]
							yto[z]=behindThis.occupancies[x][y][z]
						elseif fillWater and newMaterial == materialWater and behindThis.materials[x][y][z] ~= materialAir then
							ytm[z]=behindThis.materials[x][y][z]
							yto[z]=behindThis.occupancies[x][y][z]
						else
							ytm[z]=newMaterial
							yto[z]=lockedOccupancies[targetx][targety][targetz]
						end
					end
					xtm[y] = ytm
					xto[y] = yto
				end
				newMat[x] = xtm
				newOcc[x] = xto
			end

			terrain:WriteVoxels(region, resolution, newMat, newOcc)
		end
		renderSelection(temporaryStart,temporaryEnd,rotationCFrame)
	end

	function dragArcHandles(rotationAxis,relativeAngle,deltaRadius)
		axis = rotationAxis.Name
		local newDragAngle = round(relativeAngle / rotationInterval) % 4
		if newDragAngle ~= dragAngle then
			dragAngle = newDragAngle
			updateRotateOperation()
		end
	end

	buttonCopy.MouseButton1Down:connect(function()
		if selectionStart and selectionEnd then
			local selectionStartInt16=Vector3int16.new(selectionStart.x-1,selectionStart.y-1,selectionStart.z-1)
			local selectionEndInt16=Vector3int16.new(selectionEnd.x-1,selectionEnd.y-1,selectionEnd.z-1)
			local region = Region3int16.new(selectionStartInt16,selectionEndInt16)
			copyRegion = terrain:CopyRegion(region)
			selectionEffect(nil,nil,'New Yeller',1,1.2,.5)
			reportButtonClick('Copy')
		end
	end)

	buttonPaste.MouseButton1Down:connect(function()
		if copyRegion then
			selectionEnd=selectionStart+copyRegion.SizeInCells-Vector3.new(1,1,1)

			local region = Region3.new((selectionStart - Vector3.new(1,1,1)) * resolution, selectionEnd * resolution)
			behindThis = {}
			behindThis.region = region
			behindThis.materials, behindThis.occupancies = terrain:ReadVoxels(region, resolution)

			terrain:PasteRegion(copyRegion,Vector3int16.new(selectionStart.x-1,selectionStart.y-1,selectionStart.z-1),true)
			setButton('Move')
			changeHistory:SetWaypoint('Terrain Paste')
			selectionEffect(nil,nil,'Lime green',1.2,1,.5)
			reportButtonClick('Paste')
		end
	end)

	buttonDelete.MouseButton1Down:connect(function()
		if selectionStart and selectionEnd then
			local region = Region3.new((selectionStart - Vector3.new(1,1,1)) * resolution, selectionEnd * resolution)
			local regionSize = region.Size / resolution
			local emptyMaterialMap = make3DTable(regionSize,materialAir)
			local emptyOccupancyMap = make3DTable(regionSize,0)

			--[[behindThis = {}
			behindThis.region = region
			behindThis.materials, behindThis.occupancies = emptyMaterialMap, emptyOccupancyMap

			terrain:WriteVoxels(region, resolution, emptyMaterialMap, emptyOccupancyMap)]]
			if behindThis then
				terrain:WriteVoxels(behindThis.region, resolution, behindThis.materials, behindThis.occupancies)
			else
				if selectionStart and selectionEnd then
					terrain:WriteVoxels(region, resolution, emptyMaterialMap, emptyOccupancyMap)
				end
			end
			behindThis = {}
			behindThis.region = region
			behindThis.materials, behindThis.occupancies = terrain:ReadVoxels(region, resolution)

			--[[lockedRegion = region
			lockedMaterials, lockedOccupancies = emptyMaterialMap, emptyOccupancyMap]]
			local oldStart, oldEnd = selectionStart, selectionEnd
			selectionStart, selectionEnd = nil, nil
			setButton('Select')

			changeHistory:SetWaypoint('Terrain Delete')
			selectionEffect(oldStart,oldEnd,'Really red',1,1.2,.5)
			reportButtonClick('Delete')
		end
	end)

	buttonFill.MouseButton1Down:connect(function()
		fillFrame.Visible = not fillFrame.Visible
		-- Toggle button state as well.
		kRegionOperationButtonConfigs["Fill"].ButtonObj:setSelected(fillFrame.Visible)
		reportButtonClick('Fill')
	end)

	buttonFillConfirm.MouseButton1Down:connect(function()
		if selectionStart and selectionEnd then
			local region = Region3.new((selectionStart - Vector3.new(1,1,1)) * resolution, selectionEnd * resolution)
			local regionSize = region.Size / resolution
			local emptyMaterialMap = make3DTable(regionSize,materialAir)
			local emptyOccupancyMap = make3DTable(regionSize,0)

			local beforeMaterialMap, beforeOccupancyMap = terrain:ReadVoxels(region, resolution)
			local newMaterialMap = {}
			local newOccupancyMap = {}
			for x = 1, regionSize.x do
				local xtm = {}
				local xto = {}
				for y = 1, regionSize.y do
					local ytm = {}
					local yto = {}
					for z = 1, regionSize.z do
						local beforeMaterial = beforeMaterialMap[x][y][z]

						if beforeMaterial == materialAir or beforeOccupancyMap[x][y][z] == 0 or not fillAir then	--'fillAir' variable is actually 'Merge Empty' to the user
							ytm[z] = kMaterialsListObject:GetCurrentMaterialSelection().enum
						else
							ytm[z] = beforeMaterial
						end

						yto[z] = 1
					end
					xtm[y] = ytm
					xto[y] = yto
				end
				newMaterialMap[x] = xtm
				newOccupancyMap[x] = xto
			end


			terrain:WriteVoxels(region, resolution, newMaterialMap, newOccupancyMap)

			behindThis = {}
			behindThis.region = region
			behindThis.materials, behindThis.occupancies = emptyMaterialMap, emptyOccupancyMap

			fillFrame.Visible = false

			lockInMap()
			changeHistory:SetWaypoint('Terrain Fill')
			selectionEffect(nil,nil,'Lime green',1.2,1,.5)
		end
	end)

	function selectionEffect(temporaryStart, temporaryEnd, color, sizeFrom, sizeTo, effectTime)
		local temporaryStart = temporaryStart or selectionStart
		local temporaryEnd = temporaryEnd or selectionEnd

		local effectPart = Instance.new('Part')
		effectPart.Name = 'EffectPart'
		effectPart.Transparency = 1
		effectPart.TopSurface = 'Smooth'
		effectPart.BottomSurface = 'Smooth'
		effectPart.Anchored = true
		effectPart.CanCollide = false
		effectPart.Parent = screenGui

		local selectionEffectObject = Instance.new('SelectionBox')
		selectionEffectObject.Name = 'SelectionObject'
		selectionEffectObject.Transparency = 1
		selectionEffectObject.SurfaceTransparency = .75
		selectionEffectObject.SurfaceColor = BrickColor.new(color)
		selectionEffectObject.Adornee = effectPart
		selectionEffectObject.Parent = effectPart

		local baseSize = ((temporaryEnd - temporaryStart + Vector3.new(1,1,1)) * resolution + Vector3.new(.21,.21,.21))
		effectPart.CFrame = CFrame.new((temporaryStart + temporaryEnd - Vector3.new(1, 1, 1)) * .5 * resolution)
		effectPart.Size = baseSize * sizeFrom
		local endTick=tick()+effectTime
		while endTick>tick() do
			local percent=1-(endTick-tick())/effectTime
			selectionEffectObject.SurfaceTransparency = .75 + percent*.25
			effectPart.Size = baseSize * (sizeFrom+(sizeTo-sizeFrom)*percent)
			wait()
		end
		effectPart:Destroy()
	end

	function renderSelection(temporaryStart,temporaryEnd,rotation)
		local temporaryStart = temporaryStart or selectionStart
		local temporaryEnd = temporaryEnd or selectionEnd
		local seeable = false
		if temporaryStart and temporaryEnd and selectionPart then
			seeable = true
			local temporarySize = ((temporaryEnd - temporaryStart + Vector3.new(1,1,1)) * resolution + Vector3.new(.2,.2,.2))
			if rotation then
				local rotatedSize = rotation * temporarySize
				temporarySize = Vector3.new(math.abs(rotatedSize.x), math.abs(rotatedSize.y), math.abs(rotatedSize.z))
			end
			selectionPart.Size = temporarySize
			selectionPart.CFrame = CFrame.new((temporaryStart + temporaryEnd - Vector3.new(1, 1, 1)) * .5 * resolution) * (rotation or CFrame.new(0,0,0))
		end
		if selectionObject then
			selectionObject.Visible = seeable
			selectionObject.Color = BrickColor.new(mode == 'Select' and 'Toothpaste' or editColor1)
			selectionObject.SurfaceColor = BrickColor.new(mode == 'Select' and 'Toothpaste' or editColor1)
		end
		if selectionHandles then
			selectionHandles.Visible = seeable and (tool == 'Move' or tool == 'Resize')
			selectionHandles.Color = BrickColor.new(mode == 'Select' and 'Cyan' or editColor2)
			selectionHandles.Style = tool == 'Move' and Enum.HandlesStyle.Movement or Enum.HandlesStyle.Resize
		end
		if selectionArcHandles then
			selectionArcHandles.Visible = seeable and tool == 'Rotate'
			selectionArcHandles.Color = BrickColor.new(mode == 'Select' and 'Cyan' or editColor2)
		end
	end

	mouse.Button1Down:connect(function()
		if on and mode == 'Select' then
			mouseDown = true
			behindThis = nil
			local mousePos = mouse.Hit.p + mouse.UnitRay.Direction * .05
			if mouse.Target == nil then	--cage the cursor so that it does not fly away
				mousePos = game.Workspace.CurrentCamera.CoordinateFrame.p + mouse.UnitRay.Direction * 100
			end
			clickStart = positionWorldToVoxel(mousePos)
			local thisDownLoop = {}
			downLoop = thisDownLoop
			while thisDownLoop == downLoop and mouseDown and on and mode == 'Select' do
				local mousePos = mouse.Hit.p + mouse.UnitRay.Direction * .05
				if mouse.Target == nil then	--cage the cursor so that it does not fly away
					mousePos = game.Workspace.CurrentCamera.CoordinateFrame.p + mouse.UnitRay.Direction * 100
				end
				local voxelCurrent = positionWorldToVoxel(mousePos)
				voxelCurrent = Vector3.new(
					math.max(math.min(voxelCurrent.x,clickStart.x+regionLengthLimit),clickStart.x-regionLengthLimit),
					math.max(math.min(voxelCurrent.y,clickStart.y+regionLengthLimit),clickStart.y-regionLengthLimit),
					math.max(math.min(voxelCurrent.z,clickStart.z+regionLengthLimit),clickStart.z-regionLengthLimit))
				selectionStart = Vector3.new(math.min(clickStart.x, voxelCurrent.x), math.min(clickStart.y, voxelCurrent.y), math.min(clickStart.z, voxelCurrent.z))
				selectionEnd = Vector3.new(math.max(clickStart.x, voxelCurrent.x), math.max(clickStart.y, voxelCurrent.y), math.max(clickStart.z, voxelCurrent.z))
				renderSelection()
				quickWait()
			end
		end
	end)
	mouse.Button1Up:connect(function()
		mouseDown = false
		if dragVector and dragVector.magnitude > 0 then
			if tool == 'Resize' then
				--[[if dragStart then
					selectionStart = Vector3.new(math.min(selectionStart.x+dragVector.x,selectionEnd.x),math.min(selectionStart.y+dragVector.y,selectionEnd.y),math.min(selectionStart.z+dragVector.z,selectionEnd.z))
				else
					selectionEnd = Vector3.new(math.max(selectionEnd.x+dragVector.x,selectionStart.x),math.max(selectionEnd.y+dragVector.y,selectionStart.y),math.max(selectionEnd.z+dragVector.z,selectionStart.z))
				end]]
				if dragStart then
					selectionStart = Vector3.new(
						math.min(
							math.max(selectionStart.x+dragVector.x,selectionEnd.x-regionLengthLimit),
							selectionEnd.x),
						math.min(
							math.max(selectionStart.y+dragVector.y,selectionEnd.y-regionLengthLimit),
							selectionEnd.y),
						math.min(
							math.max(selectionStart.z+dragVector.z,selectionEnd.z-regionLengthLimit),
							selectionEnd.z)
					)
				else
					selectionEnd = Vector3.new(
						math.max(
							math.min(selectionEnd.x+dragVector.x,selectionStart.x+regionLengthLimit),
							selectionStart.x),
						math.max(
							math.min(selectionEnd.y+dragVector.y,selectionStart.y+regionLengthLimit),
							selectionStart.y),
						math.max(
							math.min(selectionEnd.z+dragVector.z,selectionStart.z+regionLengthLimit),
							selectionStart.z)
					)
				end
			elseif tool == 'Move' then
				selectionStart = selectionStart + dragVector
				selectionEnd = selectionEnd + dragVector
			end

			changeHistory:SetWaypoint('Terrain '..currentButtonId)
		end
		if dragAngle and dragAngle ~= 0 then
			local rotationCFrame = CFrame.Angles(
				axis ~= 'X' and 0 or dragAngle * rotationInterval,
				axis ~= 'Y' and 0 or dragAngle * rotationInterval,
				axis ~= 'Z' and 0 or dragAngle * rotationInterval
			)
			local temporarySize = Vector3.new(1,1,1) + selectionEnd - selectionStart
			local centerOffset = Vector3.new(ceil(temporarySize.x * .5), ceil(temporarySize.y * .5), ceil(temporarySize.z * .5))
			temporarySize = rotationCFrame * temporarySize
			local temporarySizeX = round(math.abs(temporarySize.x))	--I need to round these because of floating point imprecision
			local temporarySizeY = round(math.abs(temporarySize.y))
			local temporarySizeZ = round(math.abs(temporarySize.z))
			centerOffset = centerOffset - Vector3.new(ceil(temporarySizeX * .5), ceil(temporarySizeY * .5), ceil(temporarySizeZ * .5))

			selectionEnd = selectionStart + centerOffset + Vector3.new(temporarySizeX, temporarySizeY, temporarySizeZ) - Vector3.new(1, 1, 1)
			selectionStart = selectionStart + centerOffset
			lockInMap()
			changeHistory:SetWaypoint('Terrain '..currentButtonId)
		end

		dragVector = nil
		dragAngle = nil
		renderSelection()
		--lockInMap()
	end)

	local function historyChanged()
		selectionStart = nil
		selectionEnd = nil
		lockedMaterials = nil
		lockedOccupancies = nil
		setButton('Select')
	end

	changeHistory.OnUndo:connect(historyChanged)
	changeHistory.OnRedo:connect(historyChanged)

	module.On = function()
		on = true
		screenGui.Parent = coreGui
		terrainRegionFrame.Visible = true

		if not selectionPart then
			selectionPart = Instance.new('Part')
			selectionPart.Name = 'SelectionPart'
			selectionPart.Transparency = 1
			selectionPart.TopSurface = 'Smooth'
			selectionPart.BottomSurface = 'Smooth'
			selectionPart.Anchored = true
			selectionPart.CanCollide = false
			selectionPart.Parent = screenGui
		end
		if not selectionObject then
			selectionObject = Instance.new('SelectionBox')
			selectionObject.Name = 'SelectionObject'
			selectionObject.Color = BrickColor.new(mode == 'Select' and 'Toothpaste' or editColor1)
			selectionObject.SurfaceTransparency = .85
			selectionObject.SurfaceColor = BrickColor.new(mode == 'Select' and 'Toothpaste' or editColor1)
			selectionObject.Adornee = selectionPart
			selectionObject.Visible = false
			selectionObject.Parent = selectionPart
		end
		if not selectionHandles then
			selectionHandles = Instance.new('Handles')
			selectionHandles.Name = 'SelectionHandles'
			selectionHandles.Color = BrickColor.new(mode == 'Select' and 'Toothpaste' or editColor2)
			selectionHandles.Adornee = selectionPart
			selectionHandles.Visible = false
			selectionHandles.Parent = coreGui--game.Workspace--terrainRegionFrame--selectionPart
			selectionHandles.MouseDrag:connect(dragHandles)
		end
		if not selectionArcHandles then
			selectionArcHandles = Instance.new('ArcHandles')
			selectionArcHandles.Name = 'SelectionArcHandles'
			selectionArcHandles.Color = BrickColor.new(mode == 'Select' and 'Toothpaste' or editColor2)
			selectionArcHandles.Adornee = selectionPart
			selectionArcHandles.Visible = false
			selectionArcHandles.Parent = coreGui--game.Workspace--terrainRegionFrame--selectionPart
			selectionArcHandles.MouseDrag:connect(dragArcHandles)
		end
		renderSelection()
		setButton(currentButtonId)
	end

	module.Off = function()
		setButton('Select')
		terrainRegionFrame.Visible = false
		fillFrame.Visible = false
		clearSelection()
		behindThis = nil
		on = false
	end
end


return module


