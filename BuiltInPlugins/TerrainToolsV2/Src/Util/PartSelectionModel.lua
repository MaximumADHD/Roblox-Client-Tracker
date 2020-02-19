local Plugin = script.Parent.Parent.Parent
local UILibrary = Plugin.Packages.UILibrary
local Signal = require(UILibrary.Utils.Signal)

local PartConverterUtil = require(Plugin.Src.Util.PartConverterUtil)

local PartSelectionModel = {}
PartSelectionModel.__index = PartSelectionModel

function PartSelectionModel.new(options)
	local self = setmetatable({
		_getSelection = options.getSelection,
		_selectionChanged = options.selectionChanged,

		_selection = {},
		_selectionIsConvertible = false,
		_selectionIsConvertibleChanged = Signal.new(),
	}, PartSelectionModel)

	assert(self._getSelection, "PartSelectionModel requires a getSelection function")
	assert(self._selectionChanged, "PartSelectionModel requires a selectionChanged event")

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

function PartSelectionModel:subscribeToSelectionIsConvertibleChanged(...)
	return self._selectionIsConvertibleChanged:connect(...)
end

function PartSelectionModel:isSelectionConvertible()
	return self._selectionIsConvertible
end

function PartSelectionModel:_setSelectionIsConvertible(selectionIsConvertible)
	if self._selectionIsConvertible ~= selectionIsConvertible then
		self._selectionIsConvertible = selectionIsConvertible
		self._selectionIsConvertibleChanged:fire(selectionIsConvertible)
	end
end

function PartSelectionModel:_updateSelection()
	self._selection = self._getSelection()
	self:_setSelectionIsConvertible(PartConverterUtil.hasInstancesConvertibleToTerrain(self._selection))
end

return PartSelectionModel
