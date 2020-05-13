local ContextActionService = game:GetService("ContextActionService")
local Signal = require(script.Parent.Parent.Parent.Signal)

local Constants = require(script.Parent.Parent.Parent.Constants)
local HEADER_NAMES = Constants.ActionBindingsFormatting.ChartHeaderNames

local SORT_COMPARATOR = {
	[HEADER_NAMES[1]] = function(a,b) -- "Name"
		return a.counter < b.counter
	end,
	[HEADER_NAMES[2]] = function(a,b) -- "Priority"
		if a.actionInfo.priorityLevel == b.actionInfo.priorityLevel then
			return a.counter < b.counter
		end
		return a.actionInfo.priorityLevel < b.actionInfo.priorityLevel
	end,
	[HEADER_NAMES[3]] = function(a,b) -- "Security"
		if a.actionInfo.isCore == b.actionInfo.isCore then
			return a.counter < b.counter
		else
			return a.actionInfo.isCore
		end
	end,
	[HEADER_NAMES[4]] = function(a,b) -- "Action Name"
		return a.name:lower() < b.name:lower()
	end,
	[HEADER_NAMES[5]] = function(a,b) -- "Input Types"
		return tostring(a.actionInfo.inputTypes[1]) < tostring(b.actionInfo.inputTypes[1])
	end,
}

local ActionBindingsData = {}
ActionBindingsData.__index = ActionBindingsData

function ActionBindingsData.new()
	local self = {}
	setmetatable(self, ActionBindingsData)

	self._bindingsUpdated = Signal.new()
	self._bindingsData = {}
	self._bindingCounter = 0
	self._sortedBindingData = {}
	self._sortType = HEADER_NAMES[1] -- Name
	self._isRunning = false
	return self
end

function ActionBindingsData:setSortType(sortType)
	if SORT_COMPARATOR[sortType] then
		self._sortType = sortType
		table.sort(self._sortedBindingData, SORT_COMPARATOR[self._sortType])
		self._bindingsUpdated:Fire(self._sortedBindingData)
	else
		error(string.format("attempted to pass invalid sortType: %s", tostring(sortType)), 2)
	end
end

function ActionBindingsData:getSortType()
	return self._sortType
end

function ActionBindingsData:Signal()
	return self._bindingsUpdated
end

function ActionBindingsData:getCurrentData()
	return self._sortedBindingData
end

-- this funciton will require some extra work to handle  the
-- case a entry insert occurs during the end of the list
function ActionBindingsData:updateBindingDataEntry(name, info)
	if info == nil then
		--remove element and clean up sorted
		self._bindingsData[name] = nil
		for i, v in pairs(self._sortedBindingData) do
			if v.name == name then
				table.remove(self._sortedBindingData, i)
				return
			end
		end

	elseif not self._bindingsData[name] then
		self._bindingCounter = self._bindingCounter + 1
		self._bindingsData[name] = info
		local newEntry = {
			name = name,
			actionInfo = self._bindingsData[name],
			counter = self._bindingCounter,
		}
		table.insert(self._sortedBindingData, newEntry)
	else
		self._bindingsData[name] = info
	end
end

function ActionBindingsData:isRunning()
	return self._isRunning
end

function ActionBindingsData:start()
	local boundActions = ContextActionService:GetAllBoundActionInfo()
	for actionName, actionInfo in pairs(boundActions) do
		actionInfo.isCore = false
		self:updateBindingDataEntry(actionName, actionInfo)
	end

	local boundCoreActions = ContextActionService:GetAllBoundCoreActionInfo()
	for actionName, actionInfo in pairs(boundCoreActions) do
		actionInfo.isCore = true
		self:updateBindingDataEntry(actionName, actionInfo)
	end

	if not self._actionChangedConnection then
		self._actionChangedConnection = ContextActionService.BoundActionChanged:connect(
			function(actionName, changeName, changeTable)
				self:updateBindingDataEntry(actionName, nil)
				self:updateBindingDataEntry(changeName, changeTable)
				self._bindingsUpdated:Fire(self._sortedBindingData)
			end)
	end

	if not self._actionAddedConnection then
		self._actionAddedConnection = ContextActionService.BoundActionAdded:connect(
			function(actionName, createTouchButton, actionInfo, isCore)
				actionInfo.isCore = isCore
				self:updateBindingDataEntry(actionName, actionInfo)
				self._bindingsUpdated:Fire(self._sortedBindingData)
			end)

	end
	if not self._actionRemovedConnection then
		self._actionRemovedConnection = ContextActionService.BoundActionRemoved:connect(
			function(actionName, actionInfo, isCore)
				self:updateBindingDataEntry(actionName, nil)
				self._bindingsUpdated:Fire(self._sortedBindingData)
			end)
	end
	self._isRunning = true
end

function ActionBindingsData:stop()
	if self.actionChangedConnector then
		self.actionChangedConnector:Disconnect()
		self.actionChangedConnector = nil
	end
	if self.actionAddedConnector then
		self.actionAddedConnector:Disconnect()
		self.actionAddedConnector = nil
	end
	if self.actionRemovedConnector then
		self.actionRemovedConnector:Disconnect()
		self.actionRemovedConnector = nil
	end
	self._isRunning = false
end

return ActionBindingsData