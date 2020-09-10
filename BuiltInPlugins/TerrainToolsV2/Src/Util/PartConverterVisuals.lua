--[[
	Class to control the rendering of the selected instances used during a conversion, so that the results can be seen.

	The lifetime of this object is from start of conversion until either the last instance is deselected after
	the conversion finishes (see _checkAndMaybeFireVisualsFinished()), or when a new conversion start.

	Because a PartSelectionModel only exists whilst the Convert Tool is active, but this class is still around,
	it dynamically connects to/disconnects from PartSelectionModels.

	The transparency visuals effect is only shown whilst we're connected to a PartSelectionModel

	Example flow of the object
		- Select part
		- Start conversion
		- We change part transparency
		- Deselect part
		- Reset the part transparency
		- Reselect the part
		- Change the transparency again
		- Conversion finishes
		- We enter cleanup mode
		- Deselect part
		- Reset transparency and stop tracking the part
		- Select part again
		- Because the conversion has finished and we've stopped tracking the part, we do nothing
	Once we reach a point where we're no longer tracking any objects, this object is no longer needed.
]]

local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local FrameworkUtil = FFlagTerrainToolsUseDevFramework and Framework.Util or nil
local Signal = FFlagTerrainToolsUseDevFramework and FrameworkUtil.Signal or UILibrary.Util.Signal

local PartConverterUtil = require(Plugin.Src.Util.PartConverterUtil)

local PartConverterVisuals = {}
PartConverterVisuals.__index = PartConverterVisuals

function PartConverterVisuals.new(instances)
	local self = setmetatable({
		_selectionModel = nil,

		-- Because references to targetInstances and originalVisualsPerInstance are passed to other components
		-- Avoid directly setting them = something
		-- Only modify them with targetInstances[foo] = bar etc.

		-- Store the instances being used in the conversion so we can correctly update their transparencies
		_targetInstances = instances or {},
		-- Map of instances to maps of property names to values
		-- { [Instance]: { [string]: any } }
		_originalVisualsPerInstance = {},

		_cleanupMode = false,

		-- Fired when this object is no longer needed because:
		-- - targetInstances is empty
		-- - originalVisualsPerInstance is empty
		-- - cleanupMode is true
		-- All 3 together imply that if the user selects an instance that was used in the conversion
		-- Then we won't change its visuals
		-- And all instances we did change have been reset
		-- So this object can be destroyed
		_visualsFinished = Signal.new(),
		_hasVisualsFinished = false,
	}, PartConverterVisuals)

	self._onInstanceSelected = function(instance)
		self:_maybeApplyInstanceVisuals(instance)
	end

	self._onInstanceDeselected = function(instance)
		self:_maybeResetInstanceVisuals(instance)
		self:_checkAndMaybeFireVisualsFinished()
	end

	return self
end

-- Returns a reference to the targetInstances set
function PartConverterVisuals:getTargetInstancesRef()
	return self._targetInstances
end

-- Returns a reference to the originalVisualsPerInstance map
function PartConverterVisuals:getOriginalVisualsPerInstanceRef()
	return self._originalVisualsPerInstance
end

function PartConverterVisuals:hasFinished()
	return self._hasVisualsFinished
end

function PartConverterVisuals:enterCleanupMode()
	self._cleanupMode = true
	self:_checkAndMaybeFireVisualsFinished()
end

function PartConverterVisuals:destroy()
	self._cleanupMode = true
	self._hasVisualsFinished = true
	self:_stopListeningToSelectionModel()
	for inst in pairs(self._targetInstances) do
		self._targetInstances[inst] = nil
	end
end

function PartConverterVisuals:subscribeToVisualsFinished(...)
	return self._visualsFinished:Connect(...)
end

function PartConverterVisuals:setSelectionModel(selectionModel)
	if selectionModel then
		self:_listenToSelectionModel(selectionModel)
	else
		self:_stopListeningToSelectionModel()
		self:_checkAndMaybeFireVisualsFinished()
	end
end

function PartConverterVisuals:_listenToSelectionModel(selectionModel)
	if self._selectionModel then
		self:_stopListeningToSelectionModel()
	end

	self._selectionModel = selectionModel
	self._instanceSelectedConnection = selectionModel:subscribeToInstanceSelected(self._onInstanceSelected)
	self._instanceDeselectedConnection = selectionModel:subscribeToInstanceDeselected(self._onInstanceDeselected)

	-- Similar to a InstanceSelected event for everything currently selected
	self:_applyAllSelectedInstanceVisuals()
end

function PartConverterVisuals:_stopListeningToSelectionModel()
	if self._instanceSelectedConnection then
		self._instanceSelectedConnection:Disconnect()
		self._instanceSelectedConnection = nil
	end

	if self._instanceDeselectedConnection then
		self._instanceDeselectedConnection:Disconnect()
		self._instanceDeselectedConnection = nil
	end

	self._selectionModel = nil

	-- Similar to a InstanceDeselected event for all instances
	self:_resetAllInstanceVisuals()
end

function PartConverterVisuals:_checkAndMaybeFireVisualsFinished()
	-- No need to check again
	if self._hasVisualsFinished then
		return
	end

	-- If we haven't yet been told to cleanup things
	if not self._cleanupMode then
		return
	end

	-- Must not be tracking any instances
	if next(self._targetInstances) then
		return
	end

	-- All instances we applied visuals too must have been reset
	if next(self._originalVisualsPerInstance) then
		return
	end

	-- All cases have been met, this object is no longer needed
	self._hasVisualsFinished = true
	self._visualsFinished:Fire()
end

function PartConverterVisuals:_applyAllSelectedInstanceVisuals()
	if not self._selectionModel then
		return
	end

	for checkInstance in pairs(self._targetInstances) do
		-- Check we haven't already applied visuals to this instance as we don't want to overwrite our saved originalVisuals
		if not self._originalVisualsPerInstance[checkInstance] then
			-- Only apply to instances that are selected (or their ancestors are selected)
			if self._selectionModel:isInstanceOrAncestorsSelected(checkInstance) then
				self._originalVisualsPerInstance[checkInstance] = PartConverterUtil.applyVisualsToInstance(checkInstance)
			end
		end
	end
end

function PartConverterVisuals:_resetAllInstanceVisuals()
	for instance, props in pairs(self._originalVisualsPerInstance) do
		PartConverterUtil.resetVisualsOnInstance(props, instance)
		self._originalVisualsPerInstance[instance] = nil
	end
end

function PartConverterVisuals:_maybeApplyInstanceVisuals(targetInstance)
	if not self._selectionModel then
		return
	end

	-- "targetInstance" doesn't have to be a part, it could be a model
	-- So we want to look at all tracked instances to see if any of them are the given instance, or a descendant of it
	-- Because if we're applying visuals to a model, we actually want to do it to all parts contained within the model
	for checkInstance in pairs(self._targetInstances) do
		-- Check we haven't already applied visuals to this instance as we don't want to overwrite our saved originalVisuals
		if not self._originalVisualsPerInstance[checkInstance] then
			if checkInstance == targetInstance or checkInstance:IsDescendantOf(targetInstance) then
				self._originalVisualsPerInstance[checkInstance] = PartConverterUtil.applyVisualsToInstance(checkInstance)
			end
		end
	end
end

function PartConverterVisuals:_maybeResetInstanceVisuals(targetInstance)
	-- When reseting a part, we remove its data from _originalVisualsPerInstance
	-- So store a set of the instances to remove after the main loop
	local instToRemove = {}

	-- If the target instance has children, then we need to reset those as well
	for checkInstance, props in pairs(self._originalVisualsPerInstance) do
		-- If the target instance is the instance we're looking at, or a parent of it
		-- Then the instance we're looking at has likely been deselected and can be reset
		if checkInstance == targetInstance or checkInstance:IsDescendantOf(targetInstance) then
			-- Only reset the instance if it's not technically selected through an ancestor
			-- We could have a situation where A < B < C (where < means parent-child)
			-- If targetInstance == A and checkInstance == C, then we still need to check if B is selected
			if not self._selectionModel or not self._selectionModel:isInstanceOrAncestorsSelected(checkInstance) then
				PartConverterUtil.resetVisualsOnInstance(props, checkInstance)
				instToRemove[checkInstance] = true
			end
		end
	end

	for checkInstance in pairs(instToRemove) do
		self._originalVisualsPerInstance[checkInstance] = nil

		-- Once we're in cleaning up mode, then we want to stop tracking the part completely
		if self._cleanupMode then
			self._targetInstances[checkInstance] = nil
		end
	end
end

return PartConverterVisuals
