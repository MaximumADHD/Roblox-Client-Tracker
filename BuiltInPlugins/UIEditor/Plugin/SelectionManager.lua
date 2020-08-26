--[[
	The SelectionManager module interfaces with Selection Service. It filters
	the selection down to GUI objects. It is also used for getting updates
	when a selected object's properties changes.
--]]

-- Module scripts
local FFlag = require(script.Parent.FFlag)
local Utility = require(script.Parent.Utility)

-- Services
local SelectionService = game:GetService("Selection")

local FFlagFixStarterGuiErrors = game:DefineFastFlag("FixStarterGuiErrors", false)

--filtered selection
--when selection changes register to changed event on new items

local m_rawSelection = {}
local m_filteredSelection = {}
local m_filteredSelectionAncestors = {}

local m_changedEvents = {}

local m_changedEventCallbacks = {}
local m_callbackIdentifier = 0

local m_filteredSelectionChangedListeners = {}
local m_suppressFilteredSelectionChanged = false

local function onChangedEvent(instance, property)

	for k, v in pairs(m_changedEventCallbacks) do
		v(instance, property)
	end
end


local function disconnectChangedEvents()
	for i = 1, #m_filteredSelection do
		m_changedEvents[m_filteredSelection[i]]:disconnect()
	end
end

local function connectChangedEvents()
	for i = 1, #m_filteredSelection do
		m_changedEvents[m_filteredSelection[i]] = m_filteredSelection[i].Changed:connect(
			function(property) onChangedEvent(m_filteredSelection[i], property) end)
	end
end

local function ancestorExistsInList(instance, list)
	if (not instance or
		not instance:IsA("GuiBase2d")) then
		return false
	end
	if (Utility:findItemInTable(instance, list) ~= 0) then
		return true
	end
	return ancestorExistsInList(instance.Parent, list)
end

local SelectionManager = {}

function SelectionManager:connectSelectionInstancesChanged(func)
	m_callbackIdentifier = m_callbackIdentifier + 1
	m_changedEventCallbacks[m_callbackIdentifier] = func
	
	return m_callbackIdentifier
end

function SelectionManager:disconnectSelectionInstancesChanged(identifier)
	if not identifier then return nil end
		
	m_changedEventCallbacks[identifier] = nil
	return nil
end

-- Connects a listener to when the filtered selection changes. The listener
-- must have an onSelectionChanged method.
--
-- void SelectionManager:connectFilteredSelectionChanged(object listener)
function SelectionManager:connectFilteredSelectionChanged(listener)
	table.insert(m_filteredSelectionChangedListeners, listener)
end

-- Disconnects a listener that was connected earlier.
--
-- Asserts if the listener could not be removed.
--
-- void SelectionManager:disconnectFilteredSelectionChanged(object listener)
function SelectionManager:disconnectFilteredSelectionChanged(listener)
	local success = Utility:removeItemFromTable(listener, m_filteredSelectionChangedListeners)
	assert(success, "Could not remove listener from listeners")
end

-- Notifies all the listeners when the filtered selection changes.
--
-- void SelectionManager:notifyFilteredSelectionChanged(object listener)
local function notifyFilteredSelectionChanged()
	for k, listener in ipairs(m_filteredSelectionChangedListeners) do
		listener:onSelectionChanged()
	end
end

-- Returns true if the object is a GuiObject and all of the ancestors
-- are GuiBase2d until the StarterGui.
--
-- bool areAllAncestorsGuiBase2dToStarterGui(GuiObject guiObject)
local function areAllAncestorsGuiBase2dToStarterGui(guiObject)
	if not guiObject:isA("GuiObject") then
		return
	end

	local purebredGui = false
	local ancestor = guiObject.Parent
	while ancestor ~= nil do
		if FFlagFixStarterGuiErrors then
			if ancestor == game:GetService("StarterGui") then
				purebredGui = true
				break
			elseif not ancestor:isA("GuiBase2d") and not ancestor:isA("Folder") then
				break
			end
		else
			if ancestor == game.StarterGui then
				purebredGui = true
				break
			elseif not ancestor:isA("GuiBase2d") and not ancestor:isA("Folder") then
				break
			end
		end
		
		ancestor = ancestor.Parent 
	end
	
	return purebredGui
end

-- Returns true if any of the ancestors are a ScreenGui.
--
-- bool isDescendantOfScreenGui(Instance instance)
local function isDescendantOfScreenGui(instance)
	return instance:FindFirstAncestorOfClass("ScreenGui") ~= nil
end

-- Returns true if the instance should be part of the filtered selection. That
-- is, if it's a GUI object, a descendant of StarterGui and all of the ancestors
-- are GuiBase2d, and it's under a ScreenGui.
--
-- bool passesGuiFilter(Instance instance)
local function passesGuiFilter(instance)
	-- Check that all the ancestors up to StarterGui are GuiBase2d. Otherwise
	-- you can put a Frame under another Frame under a Part and it will show up
	-- with the selection rectangle.
	local purebredGui = areAllAncestorsGuiBase2dToStarterGui(instance)
	-- Also make sure that at least one of the ancestors are a ScreenGui, otherwise
	-- we can't show it in the 3D view.
	local hasScreenGuiAncestor = isDescendantOfScreenGui(instance)
	
	return purebredGui and hasScreenGuiAncestor
end

-- void SelectionManager:onDescendantAddedToStarterGui(Instance child)
function SelectionManager:onDescendantAddedToStarterGui(child)
	if passesGuiFilter(child) then
		-- There is a new GUI object in StaterGui so it should
		-- be added to the filtered selection.
		SelectionManager:onSelectionChanged()
	end
end

-- This handler is called both when a GUI object is moved out of the StarterGui
-- and if a GUI object is re-parented to a part in the StarterGui.
--
-- void SelectionManager:onParentChanged(Instance instance)
function SelectionManager:onParentChanged(instance)
	-- The GUI object may have been moved out of the StaterGui. We
	-- need to update the filtered selection.
	SelectionManager:onSelectionChanged()
end

function SelectionManager:onSelectionChanged()
	disconnectChangedEvents()
	
	local selection = SelectionService:Get()
	
	m_rawSelection = selection
	m_filteredSelection = {}
	m_filteredSelectionAncestors = {}
	for i = 1, #m_rawSelection do
		local instance = m_rawSelection[i]

        if passesGuiFilter(instance) and instance:isA("GuiObject") then
            table.insert(m_filteredSelection, instance)
        end
	end
	
	for i = 1, #m_filteredSelection do
		if (not ancestorExistsInList(selection[i].Parent, selection)) then
            table.insert(m_filteredSelectionAncestors, m_filteredSelection[i])
		end
	end
	
	connectChangedEvents()
	if not m_suppressFilteredSelectionChanged then
		notifyFilteredSelectionChanged()
	end
end

function SelectionManager:getRawSelection()
	return {unpack(m_rawSelection)}
end

function SelectionManager:getFilteredSelection()
	return {unpack(m_filteredSelection)}
end

function SelectionManager:getFilteredSelectionCommonAncestors()
	return {unpack(m_filteredSelectionAncestors)}
end

function SelectionManager:hasSelection()
	return #m_rawSelection ~= 0
end

function SelectionManager:hasFilteredSelection()
	return #m_filteredSelection ~= 0
end

function SelectionManager:setSelection(selection)
	if (Utility:tablesAreEquivalent(m_rawSelection, selection)) then return false end

	SelectionService:Set(selection)
	return true
end

-- This method allows the filtered selection change events to be suppressed.
-- This is needed by the Rubberband, so the listeners don't react until
-- the Rubberband is done selecting.
--
-- The listeners are notified of the filtered selection change when the
-- suppression is turned off.
-- 
-- void SelectionManager:setSuppressFilteredSelectionChanged(bool suppress)
function SelectionManager:setSuppressFilteredSelectionChanged(suppress)
	-- Don't do anything if the value didn't change
	if m_suppressFilteredSelectionChanged == suppress then
		return
	end
	
	m_suppressFilteredSelectionChanged = suppress	
	
	if not suppress then
		-- Notify listeners of any changes that might have happened
		-- while the filtered selection changes were suppressed. 
		notifyFilteredSelectionChanged()
	end
end

return SelectionManager
