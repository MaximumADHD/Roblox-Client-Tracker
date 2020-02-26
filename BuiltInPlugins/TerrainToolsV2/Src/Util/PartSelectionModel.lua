local Plugin = script.Parent.Parent.Parent
local UILibrary = Plugin.Packages.UILibrary
local Signal = require(UILibrary.Utils.Signal)

local SetHelper = require(Plugin.Src.Util.SetHelper)

local PartSelectionModel = {}
PartSelectionModel.__index = PartSelectionModel

function PartSelectionModel.new(options)
	assert(type(options) == "table", "PartSelectionModel needs an options table")
	local self = setmetatable({
		_getSelection = options.getSelection,
		_selectionChanged = options.selectionChanged,
		_validFilter = options.validFilter,

		_selection = {},
		_selectionSet = {},
		_validInstancesSet = {},
		_invalidInstancesSet = {},

		_selectionStateChanged = Signal.new(),
		_instanceSelected = Signal.new(),
		_instanceDeselected = Signal.new(),
	}, PartSelectionModel)

	assert(self._getSelection, "PartSelectionModel requires a getSelection function")
	assert(self._selectionChanged, "PartSelectionModel requires a selectionChanged event")
	assert(self._validFilter, "PartSelectionModel requires a validFilter predicate")

	self._selectionChangedConnection = self._selectionChanged:Connect(function()
		self:_updateSelection()
	end)

	self:_updateSelection()

	return self
end

function PartSelectionModel:destroy()
	if self._selectionChangedConnection then
		self._selectionChangedConnection:Disconnect()
		self._selectionChangedConnection = nil
	end
end

function PartSelectionModel:getSelection()
	return self._selection
end

function PartSelectionModel:getSelectionSet()
	return self._selectionSet
end

function PartSelectionModel:subscribeToSelectionStateChanged(...)
	return self._selectionStateChanged:connect(...)
end

function PartSelectionModel:subscribeToInstanceSelected(...)
	return self._instanceSelected:connect(...)
end

function PartSelectionModel:subscribeToInstanceDeselected(...)
	return self._instanceDeselected:connect(...)
end

function PartSelectionModel:getValidInstancesSet()
	return self._validInstancesSet
end

function PartSelectionModel:getInvalidInstancesSet()
	return self._invalidInstancesSet
end

function PartSelectionModel:hasValidInstances()
	-- _validInstances is a set so # will return 0
	-- Instead use next to check if there's something in the set
	return next(self._validInstancesSet) ~= nil
end

function PartSelectionModel:hasInvalidInstances()
	return next(self._invalidInstancesSet) ~= nil
end

function PartSelectionModel:isInstanceOrAncestorsSelected(instance)
	return SetHelper.isAnyInstanceAncestorInSet(instance, self._selectionSet)
end

function PartSelectionModel:_updateSelection()
	self._selection = self._getSelection()
	self._validInstancesSet, self._invalidInstancesSet = SetHelper.splitArrayIntoValidSets(self._selection,
		self._validFilter)

	local oldSelectionSet = self._selectionSet
	local newSelectionSet = SetHelper.arrayToSet(self._selection)

	local wasSelected = SetHelper.diff(oldSelectionSet, newSelectionSet)
	local newlySelected = SetHelper.diff(newSelectionSet, oldSelectionSet)

	self._selectionSet = newSelectionSet

	-- All of our state should be updated before firing signals as they might query our state

	for inst in pairs(newlySelected) do
		self._instanceSelected:fire(inst)
	end

	for inst in pairs(wasSelected) do
		self._instanceDeselected:fire(inst)
	end

	self._selectionStateChanged:fire()
end

return PartSelectionModel
