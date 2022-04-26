--[[
	Base implementation for vertex editing tools. Given any number of contexts, a tool is
	responsible for creating and displaying Control Points that the user can interact with in order to
	modify vertex data from the current context it is using. The DraggerFramework will also interface
	with the tool to get the information it needs.
]]

local LuaMeshEditingModule = script.Parent.Parent.Parent

local Util = LuaMeshEditingModule.Src.Util
local deepCopy = require(Util.deepCopy)
local Signal = require(Util.Signal)
local softSelectPoints = require(Util.softSelectPoints)
local TransformPointsHelpers = require(Util.TransformPointsHelpers)

local Views = LuaMeshEditingModule.Src.Views
local ControlEdgeViews = require(Views.ControlEdgeViews)
local ControlPointViews = require(Views.ControlPointViews)
local ToolAdornees = require(Views.ToolAdornees)

local VertexToolBase = {}
VertexToolBase.__index = VertexToolBase

local CONTROL_POINT_DATA_KEY = "_controlPointLocationData"

function VertexToolBase.new()
	local vertexToolBaseObject = setmetatable({}, VertexToolBase)

	-- private variables
	local _adornees
	local _controlPointLocationData = {}
	local _currentContext
	local _edgeViews
	local _falloff = 0
	local _futureStack = {}
	local _hoveredControlPoint
	local _pastStack = {}
	local _pointViews
	local _selectedControlPoints = {}
	local _selectedControlPointWeights = {}
	local _selectedMesh = nil
	local _selectionChanged = Signal.new()
	local _toolDisplayChanged = Signal.new()
	local _toolStates = {}
	local _transparency = 0
	local _wireframeOn = true

	-- private functions
	local function _isHovered(meshName, id)
		return _hoveredControlPoint ~= nil and _hoveredControlPoint.MeshName == meshName and _hoveredControlPoint.ID == id
	end

	local function _isSelected(meshName, id)
		if _selectedControlPointWeights[meshName] then
			if _selectedControlPointWeights[meshName][id] then
				return true
			end
		end
		return false
	end

	local function _transformHelper(transformPointFunc)
		TransformPointsHelpers.transformControlPoints(
			_currentContext,
			_controlPointLocationData.Positions,
			_selectedControlPointWeights,
			transformPointFunc
		)
		TransformPointsHelpers.transformVertices(_currentContext, vertexToolBaseObject:getVertexWeights(), transformPointFunc)
		vertexToolBaseObject:render()
	end

	local function _softSelect()
		_selectedControlPointWeights = softSelectPoints(_currentContext, _selectedControlPoints, _falloff)
		vertexToolBaseObject:render()
		_selectionChanged:Fire()
	end

	local function _cleanupViews()
		if _edgeViews then
			_edgeViews:cleanup()
			_edgeViews = nil
		end
		if _pointViews then
			_pointViews:cleanup()
			_pointViews = nil
		end
		if _adornees then
			_adornees:cleanup()
			_adornees = nil
		end
	end

	local function _onContextChanged(context, controlPointLocationData)
		_cleanupViews()
		_selectedControlPoints = {}
		_selectedControlPointWeights = {}
		_selectedMesh = nil
		_selectionChanged:Fire()

		_futureStack = {}
		_pastStack = {}

		_currentContext = context
		_controlPointLocationData = controlPointLocationData
	end

	-- protected functions
	-- "Protected" does not truly exist in Lua. You should avoid using these functions outside of VertexToolBase
	-- or any child its classes.
	function vertexToolBaseObject:_setCurrentToolStateData(data)
		if not _currentContext then
			error("Tool has no active context. Data was not updated.")
			return
		end

		local toolState = _toolStates[_currentContext]
		if not toolState then
			error("No tool state found for the current context. Data was not updated.")
			return
		end

		for key, value in pairs(data) do
			toolState[key] = deepCopy(value)
			if key == CONTROL_POINT_DATA_KEY then
				_controlPointLocationData = toolState[key]
			end
		end

		self:render()
	end

	function vertexToolBaseObject:_getCurrentToolStateData()
		if not _currentContext then
			error("Tool has no active context. State was not returned.")
			return {}
		end

		local currentState = _toolStates[_currentContext]
		assert(currentState, "No state found for current context.")

		return deepCopy(currentState)
	end

	-- public functions
	function vertexToolBaseObject:addContext(context, controlPointLocationData)
		if not context then
			error("Could not add context: Context was nil.")
			return
		end

		assert(controlPointLocationData.Positions, "ControlPointLocationData missing array at key: Positions")
		assert(controlPointLocationData.Edges, "ControlPointLocationData missing array at key: Edges")

		if _toolStates[context] then
			error("Context was already added to the tool.")
			return
		end

		_toolStates[context] = {
			[CONTROL_POINT_DATA_KEY] = controlPointLocationData
		}
	end

	function vertexToolBaseObject:getCurrentContext()
		return _currentContext
	end

	function vertexToolBaseObject:setCurrentContext(context)
		if not context then
			error("Could not set context: Context was nil.")
			return
		end

		local nextToolState = _toolStates[context]
		if not nextToolState then
			error("No tool state found for this context. Context was not changed. "..
				"Try calling AddContext(context, controlPointLocationData) before invoking this method.")
			return
		end
		if context ~= _currentContext then
			_onContextChanged(context, nextToolState[CONTROL_POINT_DATA_KEY])

			_adornees = ToolAdornees.new(_currentContext)
			_pointViews = ControlPointViews.new(_currentContext)
			_edgeViews = ControlEdgeViews.new(_currentContext)

			self:render()
		end
	end

	function vertexToolBaseObject:removeContext(context)
		if not context then
			error("Could not remove context: Context was nil.")
			return
		end

		if not _toolStates[context] then
			error("Context not found in tool.")
			return
		end

		if context == _currentContext then
			_onContextChanged()
		end

		_toolStates[context] = nil
	end

	function vertexToolBaseObject:render()
		if not _currentContext then
			return
		end

		_adornees:render()
		_pointViews:render({
			ControlPointPositions = _controlPointLocationData.Positions,
			Adornees = _adornees,
			Transparency = _transparency,
			IsSelected = _isSelected,
			IsHovered = _isHovered,
			SelectedMesh = _selectedMesh,
		})
		_edgeViews:render({
			ControlPointPositions = _controlPointLocationData.Positions,
			ControlPointEdges = _controlPointLocationData.Edges,
			Adornees = _adornees,
			Transparency =_transparency,
			SelectedMesh = _selectedMesh,
		})
	end

	function vertexToolBaseObject:getSelectedMesh()
		return _selectedMesh
	end

	function vertexToolBaseObject:setSelectedMesh(selectedMesh)
		if _selectedMesh ~= selectedMesh then
			_selectedMesh = selectedMesh
			self:render()
			_toolDisplayChanged:Fire()
		end
	end

	function vertexToolBaseObject:cleanup()
		_edgeViews:cleanup()
		_pointViews:cleanup()
		_adornees:cleanup()
	end

	function vertexToolBaseObject:getWireframeEnabled()
		return _wireframeOn
	end

	function vertexToolBaseObject:setWireframeEnabled(on)
		if _wireframeOn ~= on then
			_wireframeOn = on
			self:render()
			_toolDisplayChanged:Fire()
		end
	end

	function vertexToolBaseObject:getTransparency()
		return _transparency
	end

	function vertexToolBaseObject:setTransparency(transparency)
		if _transparency ~= transparency then
			_transparency = transparency
			self:render()
			_toolDisplayChanged:Fire()
		end
	end

	function vertexToolBaseObject:getFalloff()
		return _falloff
	end

	function vertexToolBaseObject:setFalloff(falloff)
		if _falloff ~= falloff then
			_falloff = falloff
			_softSelect()
			_toolDisplayChanged:Fire()
		end
	end

	function vertexToolBaseObject:setMirrorPlane(offset, planeEnum)
		-- todo AVBURST-7427
	end

	function vertexToolBaseObject:getMirrorPlane()
		-- todo AVBURST-7427
	end

	function vertexToolBaseObject:setMirroringEnabled(enabled)
		-- todo AVBURST-7427
	end

	function vertexToolBaseObject:getMirroringEnabled()
		-- todo AVBURST-7427
	end

	function vertexToolBaseObject:addWaypoint()
		table.insert(_pastStack, {
			ToolStateData = self:_getCurrentToolStateData(),
			VertexData = _currentContext:getVertexData(),
		})

		_futureStack = {}
	end

	function vertexToolBaseObject:undo()
		if #_pastStack > 0 then
			table.insert(_futureStack, {
				ToolStateData = self:_getCurrentToolStateData(),
				VertexData = _currentContext:getVertexData(),
			})

			local newState = _pastStack[#_pastStack]
			_currentContext:updateVertexData(newState.VertexData)
			self:_setCurrentToolStateData(newState.ToolStateData)

			_pastStack[#_pastStack] = nil
		end
	end

	function vertexToolBaseObject:redo()
		if #_futureStack > 0 then
			table.insert(_pastStack, {
				ToolStateData = self:_getCurrentToolStateData(),
				VertexData = _currentContext:getVertexData(),
			})

			local newState = _futureStack[#_futureStack]
			_currentContext:updateVertexData(newState.VertexData)
			self:_setCurrentToolStateData(newState.ToolStateData)

			_futureStack[#_futureStack] = nil
		end
	end

	function vertexToolBaseObject:getSelectionChangedSignal()
		return _selectionChanged
	end

	function vertexToolBaseObject:getToolDisplayChangedSignal()
		return _toolDisplayChanged
	end

	function vertexToolBaseObject:getVertexWeights()
		-- Use this function to calculate what vertices are affected by the selected control points moving.
		assert("GetVertexWeights must be implemented for VertexToolBase child classes.")
	end

	-- Functions for DraggerFramework
	function vertexToolBaseObject:getSelected()
		return deepCopy(_selectedControlPoints)
	end

	function vertexToolBaseObject:setSelected(selected)
		_selectedControlPoints = deepCopy(selected)
		_softSelect()
	end

	function vertexToolBaseObject:getSelectables()
		if _pointViews then
			return _pointViews:getSelectables()
		end

		error("No Control_pointViews exist that can be selected.")
		return {}
	end

	function vertexToolBaseObject:setHovered(hovered)
		_hoveredControlPoint = hovered
	end

	function vertexToolBaseObject:getSelectionBoundingBox()
		-- todo AVBURST-7429
	end

	function vertexToolBaseObject:translateSelected(transform)
		_transformHelper(function(meshOrigin, position, weight)
			return TransformPointsHelpers.translatePoint(position, transform, meshOrigin, weight)
		end)
	end

	function vertexToolBaseObject:rotateSelected(pivot, transform)
		_transformHelper(function(meshOrigin, position, weight)
			return TransformPointsHelpers.rotatePoint(position, transform, pivot, meshOrigin, weight)
		end)
	end

	function vertexToolBaseObject:scaleSelected(pivot, scale)
		_transformHelper(function(meshOrigin, position, weight)
			return TransformPointsHelpers.scalePoint(position, scale, pivot, meshOrigin, weight)
		end)
	end

	return vertexToolBaseObject
end

return VertexToolBase
