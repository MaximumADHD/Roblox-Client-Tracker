local Plugin = script.Parent.Parent.Parent.Parent

local ModelUtil = require(Plugin.Src.Util.ModelUtil)
local ToolUtil = require(Plugin.Src.Util.ToolUtil)
local TableUtil = require(Plugin.Src.Util.TableUtil)

local Workspace = game:GetService("Workspace")

local SelectionInfo = {}
SelectionInfo.__index = SelectionInfo

local function getPoints(selection, isPointMode)
	local pointInstances
	if isPointMode then
		pointInstances = Workspace:FindFirstChild("RbfPoints")
	else
		pointInstances = Workspace:FindFirstChild("Lattices")
	end

	local pointTable = {}
	local points = {}
	if pointInstances then
		for _, deformerFolder in ipairs(pointInstances:GetChildren()) do
			pointTable[deformerFolder.Name] = {}
			for _, point in ipairs(deformerFolder:GetChildren()) do
				if isPointMode then
					pointTable[deformerFolder.Name][tonumber(point.Name)] = point.CFrame.p
				else
					pointTable[deformerFolder.Name][point.Name] = point.CFrame.p
				end
			end
		end

		for _, entry in pairs(selection) do
			if isPointMode then
				table.insert(points, pointTable[entry.Deformer][entry.Index])
			else
				table.insert(points, pointTable[entry.Deformer][entry.ID])
			end
		end
	end
	return points
end

local function useSoftSelectedPoints(context)
	local selectedPoints = context.selectedPoints
	local selection = {}
	for deformer, pointsPerDeformer in pairs(selectedPoints) do
		for index in pairs(pointsPerDeformer) do
			table.insert(selection, {
				Deformer = deformer,
				Index = index,
			})
		end
	end
	return selection
end

local function computeBoundingBox(context, selection)
	local points = getPoints(selection, ToolUtil:isDraggerPointMode(context))
	return ModelUtil:getBounds(points)
end

local function computeBoundingBoxSoftSelect(context)
	local selection = {}
	if ToolUtil:isDraggerPointMode(context) then
		selection = useSoftSelectedPoints(context)
	end

	return computeBoundingBox(context, selection)
end

local function buildPointSelection(selection)
	local selectionTable = {}
	for _, vert in pairs(selection) do
		TableUtil:setNested(selectionTable, {vert.Deformer, vert.Index}, vert.Index)
	end
	return selectionTable
end

local function buildSelectionTable(context, selection)
	local editingItem = context.editingItem
	local latticeBoundsData = context.latticeBoundsData
	local editingCage = context.editingCage
	local selectedLattice = context.selectedLattice

	if not editingItem or not editingCage then
		return {}
	end

	if ToolUtil:isDraggerPointMode(context) then
		return buildPointSelection(selection)
	elseif ToolUtil:isDraggerLatticeMode(context) then
		if latticeBoundsData and selectedLattice then
			return selection
		else
			return {}
		end
	end
end

function SelectionInfo.new(draggerContext, selection)
	local self = setmetatable({}, SelectionInfo)

	self._draggerContext = draggerContext
	self._selectionTable = buildSelectionTable(draggerContext, selection)
	self._bounds = computeBoundingBoxSoftSelect(draggerContext)
	self._boundsMainSelection = computeBoundingBox(draggerContext, selection)

	return self
end

function SelectionInfo:isEmpty()
	return self._selectionTable == nil or next(self._selectionTable) == nil
end

function SelectionInfo:getBoundingBox(empty)
	local editingItem = self._draggerContext.editingItem
	local latticeBoundsData = self._draggerContext.latticeBoundsData
	local editingCage = self._draggerContext.editingCage
	local selectedLattice = self._draggerContext.selectedLattice

	local rootCFrame = ModelUtil:getRootCFrame(editingItem)
	local boundsCenter = self._bounds.Center
	local boundsCenterMainSelection = self._boundsMainSelection.Center
	local selectionSizeSoftSelection = Vector3.new(self._bounds.Width, self._bounds.Height, self._bounds.Depth)
	local selectionSizeMainSelection = Vector3.new(self._boundsMainSelection.Width,self._boundsMainSelection.Height, self._boundsMainSelection.Depth)
	if self._draggerContext:shouldUseLocalSpace() then
		local rootRotOnly = rootCFrame - rootCFrame.p
		if ToolUtil:isDraggerPointMode(self._draggerContext) then
			-- size of bounding box should match bounds of entire selection including soft select points
			-- center point of draggers should follow points that were selected directly, not with soft select
			-- offset to account dragger location to account for this
			if self._draggerContext.draggerType == Enum.RibbonTool.Scale then
				return rootRotOnly + boundsCenter, Vector3.new(), selectionSizeSoftSelection
			else
				return rootRotOnly + boundsCenterMainSelection, Vector3.new(), selectionSizeMainSelection
			end
		elseif ToolUtil:isDraggerLatticeMode(self._draggerContext) then
			local latticeBounds = latticeBoundsData[editingCage][selectedLattice]
			if latticeBounds then
				local boundsRotOnly = latticeBounds.CFrame - latticeBounds.CFrame.p
				return (rootRotOnly * boundsRotOnly) + boundsCenterMainSelection, Vector3.new(), selectionSizeMainSelection
			else
				return CFrame.new(), Vector3.new(), Vector3.new()
			end
		else
			return CFrame.new(), Vector3.new(), Vector3.new()
		end
	else
		if ToolUtil:isDraggerPointMode(self._draggerContext) then
			-- size of bounding box should match bounds of entire selection including soft select points
			-- center point of draggers should follow points that were selected directly, not with soft select
			-- offset to account dragger location to account for this
			if self._draggerContext.draggerType == Enum.RibbonTool.Scale then
				return CFrame.new() + boundsCenter, Vector3.new(), selectionSizeSoftSelection
			else
				return CFrame.new() + boundsCenterMainSelection, Vector3.new(), selectionSizeMainSelection
			end
		else
			return CFrame.new() + boundsCenterMainSelection, Vector3.new(), selectionSizeMainSelection
		end
	end
end

function SelectionInfo:doesContainItem(item)
	if type(item) ~= "table" then
		return false
	end
	if ToolUtil:isDraggerPointMode(self._draggerContext) then
		return self._selectionTable[item.Deformer] ~= nil and self._selectionTable[item.Deformer][item.Index] ~= nil
	elseif ToolUtil:isDraggerLatticeMode(self._draggerContext) then
		return self._selectionTable[item.Deformer] ~= nil and self._selectionTable[item.Deformer][item.ID] ~= nil
	end
end

function SelectionInfo:isDynamic()
	return false
end

return SelectionInfo