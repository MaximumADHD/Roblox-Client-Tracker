local Workspace = game:GetService("Workspace")

local LuaMeshEditingModule = script.Parent.Parent.Parent

local Util = LuaMeshEditingModule.Src.Util
local BoundingBoxUtil = require(Util.BoundingBoxUtil)
local Constants = require(Util.Constants)

local SelectionInfo = {}
SelectionInfo.__index = SelectionInfo

local function getPoints(selection)
	local allControlPointsFolder = Workspace:FindFirstChild(Constants.ControlPointsFolderName)

	local pointTable = {}
	local points = {}
	if allControlPointsFolder then
		for _, controlPointsForMesh in ipairs(allControlPointsFolder:GetChildren()) do
			pointTable[part.Name] = {}
			for _, controlPointPart in ipairs(controlPointsForMesh:GetChildren()) do
				pointTable[controlPointPart.Name][tonumber(controlPointPart.Name)] = controlPointPart.CFrame.p
			end
		end

		for _, entry in pairs(selection) do
			table.insert(points, pointTable[entry.MeshName][entry.Index])
		end
	end
	return points
end

local function computeBoundingBox(selection, localSpace)
	local points = getPoints(selection)
	if localSpace then
		return BoundingBoxUtil.getWeightBalanceOrientedBoundingBox(points)
	else
		return BoundingBoxUtil.getAxisAlignedBoundingBox(points)
	end
end

local function getSelectionTable(selection)
	local selectionTable = {}
	for _, selectable in ipairs(selection) do
		if not selectionTable[selectable.MeshName] then
			selectionTable[selectable.MeshName] = {}
		end
		selectionTable[selectable.MeshName][selectable.Index] = true
	end
	return selectionTable
end

function SelectionInfo.new(draggerContext, selection)
	local self = setmetatable({}, SelectionInfo)

	local localSpace = draggerContext:shouldUseLocalSpace()

	self._selectionTable = getSelectionTable(selection)
	self._bounds = computeBoundingBox(selection, localSpace)

	return self
end

function SelectionInfo:isEmpty()
	return self._selectionTable == nil or next(self._selectionTable) == nil
end

function SelectionInfo:getBoundingBox(empty)
	local selectionSize = Vector3.new(
		self._bounds.Width,
		self._bounds.Height,
		self._bounds.Depth
	)

	return self._bounds.CFrame, Vector3.new(), selectionSize
end

function SelectionInfo:doesContainItem(item)
	if type(item) ~= "table" then
		return false
	end

	return self._selectionTable[item.MeshName] ~= nil and self._selectionTable[item.MeshName][item.Index] ~= nil
end

function SelectionInfo:isDynamic()
	return false
end

return SelectionInfo