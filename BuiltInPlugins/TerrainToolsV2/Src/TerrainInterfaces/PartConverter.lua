local Plugin = script.Parent.Parent.Parent
local UILibrary = Plugin.Packages.UILibrary
local Signal = require(UILibrary.Utils.Signal)

local LongOperation = require(Plugin.Src.Util.LongOperation)
local LongOperationQueue = require(Plugin.Src.Util.LongOperationQueue)
local PartConverterUtil = require(Plugin.Src.Util.PartConverterUtil)

local ChangeHistoryService = game:GetService("ChangeHistoryService")

local CONVERT_MATERIAL_MAX_SHAPES_PER_STEP = 100
local CONVERT_MATERIAL_MAX_FILL_CALLS_PER_STEP = 100

local CONVERT_MATERIAL_WAYPOINT = "ConvertPart_Material"

-- Expects data.instances to be a table of instances to search through
local GetConvertibleShapesOperationDetails = {
	name = "GetConvertibleShapes",

	onStep = function(data)
		local shapes = {}
		local function getConvertibleShapes(array)
			for _, obj in ipairs(array) do
				if PartConverterUtil.isConvertibleToTerrain(obj) then
					-- Get the necessary details about the part and save it for later
					-- This means we don't have to do these checks when actually calling :FillBlock() etc.
					-- And protects against the target part being destroyed whilst the fill is running
					local shape, cframe, size = PartConverterUtil.getPartRenderedShape(obj)

					table.insert(shapes, {
						shape, cframe, size, obj
					})

				elseif obj:IsA("Model") or obj:IsA("Folder") then
					getConvertibleShapes(obj:GetChildren())
				end
			end
		end
		getConvertibleShapes(data.instances)

		data.shapes = shapes
		data.totalShapes = #data.shapes

		return false, 1
	end
}

--[[
Expects:
	data.terrain : Terrain - terrain object to call :FillBlock() etc. on
	data.shapes : { {Shape, CFrame center, Vector3 size, Instance} } - Array of shapes to fill
	data.totalShapes : number - Length of data.shapes
	data.material : Material - Material to fill the given shapes with
]]
local ConvertShapesToMaterialOperationDetails = {
	name = "ConvertShapesToMaterial",
	timeBetweenSteps = 0.1,

	onStart = function(data)
		data.currentIndex = 0
		data.totalFillCalls = 0
	end,

	onStep = function(data)
		-- currentIndex is last filled shape, so start from the next one
		local nextIndexToFill = data.currentIndex + 1

		local fillCallsThisStep = 0
		local shapesThisStep = 0

		-- Stop once we've hit the end of the list (nextIndexToFill is out of the range of shapes)
		-- Or we've done enough work this step
		while nextIndexToFill <= data.totalShapes
			and shapesThisStep < CONVERT_MATERIAL_MAX_SHAPES_PER_STEP
			and fillCallsThisStep < CONVERT_MATERIAL_MAX_FILL_CALLS_PER_STEP do

			local fillData = data.shapes[nextIndexToFill]
			local fillCalls, err = PartConverterUtil.fillShapeWithTerrain(data.terrain, data.material,
				fillData[1], -- Shape
				fillData[2], -- CFrame
				fillData[3]  -- Size
			)

			if fillCalls == 0 then
				local instance = fillData[4]
				-- TODO: Localization
				if err then
					warn(("Fill failed for instance %s: %s"):format(
						instance:GetFullName(), err))
				else
					warn(("Fill failed for instance %s"):format(instance:GetFullName()))
				end
			end

			fillCallsThisStep = fillCallsThisStep + fillCalls
			shapesThisStep = shapesThisStep + 1
			nextIndexToFill = nextIndexToFill + 1
		end

		-- Sub 1 because currentIndex is the last shape we filled
		-- But nextIndexToFill at this time points to an shape we haven't fill
		data.currentIndex = nextIndexToFill - 1
		data.totalFillCalls = data.totalFillCalls + fillCallsThisStep

		if data.currentIndex >= data.totalShapes then
			return false, 1
		else
			return true, data.currentIndex / data.totalShapes
		end
	end,

	onFinish = function(data, operation)
		ChangeHistoryService:SetWaypoint(CONVERT_MATERIAL_WAYPOINT)

		local totalTime = operation:getTimeTaken()
		local totalInstances = data.currentIndex
		local totalFillCalls = data.totalFillCalls

		-- TODO: Localization
		print(("Filling %d instance%s took %.1f seconds (%i fill call%s)"):format(
			totalInstances,
			totalInstances == 1 and "" or "s",
			totalTime,
			totalFillCalls,
			totalFillCalls == 1 and "" or "s"))
	end,
}

local PartConverter = {}
PartConverter.__index = PartConverter

PartConverter.NOT_RUNNING_CONVERT_STATE = "NotRunning"

function PartConverter.new(options)
	local self = setmetatable({
		_terrain = options.terrain,
		_operationQueue = LongOperationQueue.new({
			timeBetweenOperations = 0.1,
		}),

		_convertState = PartConverter.NOT_RUNNING_CONVERT_STATE,
		_convertStateChanged = Signal.new(),
	}, PartConverter)

	assert(self._terrain, "PartConverter needs a terrain instance")

	-- When a new operation starts (e.g. transitioning from GetConvertibleShapes->ConvertShapesToMaterial)
	-- Store this data so that the progress bar can show what's happening
	self._operationStartedConnection = self._operationQueue.NextOperationStarted:connect(function(operation)
		self:_setConvertState(operation:getName())
	end)

	-- When the queue finishes, reset our own state
	self._queueRunningChangedConnection = self._operationQueue.QueueRunningChanged:connect(function(running)
		if not running then
			self:_setConvertState(PartConverter.NOT_RUNNING_CONVERT_STATE)
		end
	end)

	return self
end

function PartConverter:destroy()
	if self._operationStartedConnection then
		self._operationStartedConnection:disconnect()
		self._operationStartedConnection = nil
	end

	if self._queueRunningChangedConnection then
		self._queueRunningChangedConnection:disconnect()
		self._queueRunningChangedConnection = nil
	end

	if self._operationQueue then
		self._operationQueue:destroy()
		self._operationQueue = nil
	end
end

function PartConverter:convertInstancesToMaterial(instances, material)
	if self:isRunning() then
		return
	end

	self._operationQueue
		:reset()
		:addToQueue(LongOperation.new(GetConvertibleShapesOperationDetails))
		:addToQueue(LongOperation.new(ConvertShapesToMaterialOperationDetails))
		:start({
			terrain = self._terrain,
			instances = instances,
			material = material,
		})
end

function PartConverter:subscribeToConvertStateChanged(...)
	return self._convertStateChanged:connect(...)
end

function PartConverter:getConvertState()
	return self._convertState
end

function PartConverter:_setConvertState(convertState)
	if self._convertState ~= convertState then
		self._convertState = convertState
		self._convertStateChanged:fire(convertState)
	end
end

--[[
	Methods that pass through to our operation queue
]]
function PartConverter:subscribeToRunningChanged(...)
	return self._operationQueue.QueueRunningChanged:connect(...)
end

function PartConverter:subscribeToPausedChanged(...)
	return self._operationQueue.PausedChanged:connect(...)
end

function PartConverter:subscribeToProgressChanged(...)
	return self._operationQueue.ProgressChanged:connect(...)
end

function PartConverter:pause()
	self._operationQueue:pause()
end

function PartConverter:resume()
	self._operationQueue:resume()
end

function PartConverter:togglePause()
	self._operationQueue:togglePause()
end

function PartConverter:cancel()
	self._operationQueue:cancel()
end

function PartConverter:isRunning()
	return self._operationQueue:isQueueRunning()
end

function PartConverter:isPaused()
	return self._operationQueue:isPaused()
end

function PartConverter:getProgress()
	return self._operationQueue:getProgress()
end
--[[
	End methods that pass through to operation queue
]]

return PartConverter
