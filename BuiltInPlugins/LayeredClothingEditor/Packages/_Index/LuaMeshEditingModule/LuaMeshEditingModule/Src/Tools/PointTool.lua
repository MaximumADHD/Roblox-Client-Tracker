--[[
	Child class of MeshEditingContextBase the specifically handles getting mesh data from a
	BaseWrap.
]]

local LuaMeshEditingModule = script.Parent.Parent.Parent

local VertexToolBase = require(script.Parent.VertexToolBase)

local PointTool = setmetatable({}, { __index = VertexToolBase })
PointTool.__index = PointTool

function PointTool.new()
	local pointToolObject = setmetatable(VertexToolBase.new(), PointTool)

	local _addContextBase = pointToolObject.addContext
	-- private functions
	local function _checkPointVisited(markedSeamPoints, meshName, pointIndex)
		return markedSeamPoints[meshName] and markedSeamPoints[meshName][pointIndex]
	end

	local function _visitPoint(markedSeamPoints, meshName, pointIndex, seamData)

		local linkedPoints = seamData[meshName] and seamData[meshName][pointIndex]
		if linkedPoints then
			for _, linkPoint in ipairs(linkedPoints) do
				if not markedSeamPoints[linkPoint.MeshName] then
					markedSeamPoints[linkPoint.MeshName] = {}
				end
				markedSeamPoints[linkPoint.MeshName][linkPoint.Index] = true
			end
		end
		if not markedSeamPoints[meshName] then
			markedSeamPoints[meshName] = {}
		end
		markedSeamPoints[meshName][pointIndex] = true
	end

	-- override functions
	function pointToolObject:addContext(context)
		if not context then
			error("Could not add context: Context was nil.")
			return
		end

		local controlPointLocationData = {}
		local vertexData = context:getVertexData()
		local seamData = context:getSeamData()
		local markedSeamPoints = {}
		for meshName, pointsPerMesh in pairs(vertexData) do
			for pointIndex, point in pairs(pointsPerMesh) do
				if not _checkPointVisited(markedSeamPoints, meshName, pointIndex) then
					_visitPoint(markedSeamPoints, meshName, pointIndex, seamData)
					controlPointLocationData[pointIndex] = point
				end
			end
		end

		controlPointLocationData.Positions = context:getVertexData()
		controlPointLocationData.Edges = {}

		_addContextBase(self, context, controlPointLocationData)
	end

	function pointToolObject:getVertexWeights()
		return pointToolObject:_getSelectedControlWeights()
	end

	return pointToolObject
end

return PointTool
