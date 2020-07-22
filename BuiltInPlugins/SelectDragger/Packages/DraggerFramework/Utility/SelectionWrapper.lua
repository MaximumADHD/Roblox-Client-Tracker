
local Selection = game:GetService("Selection")

local DraggerFramework = script.Parent.Parent
local Signal = require(DraggerFramework.Utility.Signal)
local isProtectedInstance = require(DraggerFramework.Utility.isProtectedInstance)

local getEngineFeatureActiveInstanceHighlight = require(DraggerFramework.Flags.getEngineFeatureActiveInstanceHighlight)

local SelectionWrapper = {}

local function getSanitizedSelection()
	local unsafeSelection = Selection:Get()
	local safeSelection = {}
	for _, unsafeInstance in ipairs(unsafeSelection) do
		if not isProtectedInstance(unsafeInstance) then
			table.insert(safeSelection, unsafeInstance)
		end
	end
	return safeSelection
end

SelectionWrapper._selection = getSanitizedSelection()
SelectionWrapper._currentlySettingSeFlection = false
SelectionWrapper._initialized = false

SelectionWrapper.SelectionChangedByStudio = Signal.new()

function SelectionWrapper:init()
	self._selectionChangedConnection = Selection.SelectionChanged:Connect(function()
		SelectionWrapper._selection = getSanitizedSelection()
		if not SelectionWrapper._currentlySettingSelection then
			SelectionWrapper.SelectionChangedByStudio:Fire()
		end
	end)
	self._selection = getSanitizedSelection()
	self._initialized = true
end

function SelectionWrapper:destroy()
	self._selectionChangedConnection:disconnect()
	self._selectionChangedConnection = nil
	self._initialized = false
end

function SelectionWrapper:Set(objects)
	self._currentlySettingSelection = true
	Selection:Set(objects)
	self._currentlySettingSelection = false
end

function SelectionWrapper:Get()
	if self._initialized then
		return self._selection
	else
		return getSanitizedSelection()
	end
end

function SelectionWrapper:getActiveInstance()
	assert(getEngineFeatureActiveInstanceHighlight())
	return Selection.ActiveInstance
end

return SelectionWrapper
