local ContextActionService = game:GetService("ContextActionService")
local Signal = require(script.Parent.Parent.Parent.Signal)

local instance
local ActionBindingsData = {}
ActionBindingsData.__index = ActionBindingsData

function ActionBindingsData.new()
	local self = {}
	setmetatable(self, ActionBindingsData)

	self._bindingsUpdated = Signal.new()
	self._bindingsData = {}
	return self
end

function ActionBindingsData:Signal()
	return self._bindingsUpdated
end

function ActionBindingsData:getCurrentData()
	return self._bindingsData
end

function ActionBindingsData:start()
	local boundActions = ContextActionService:GetAllBoundActionInfo()
	for actionName, actionInfo in pairs(boundActions) do
		actionInfo.isCore = false
		self._bindingsData[actionName] = actionInfo
	end

	local boundCoreActions = ContextActionService:GetAllBoundCoreActionInfo()
	for actionName, actionInfo in pairs(boundCoreActions) do
		actionInfo.isCore = true
		self._bindingsData[actionName] = actionInfo
	end

	if not self._actionChangedConnection then
		self._actionChangedConnection = ContextActionService.BoundActionChanged:connect(
			function(actionName, changeName, changeTable)
				self._bindingsData[actionName] = nil

				self._bindingsData[changeName] = changeTable
				self._bindingsUpdated:Fire(self._bindingsData)
			end)
	end

	if not self._actionAddedConnection then
		self._actionAddedConnection = ContextActionService.BoundActionAdded:connect(
			function(actionName, createTouchButton, actionInfo, isCore)
				actionInfo.isCore = isCore
				self._bindingsData[actionName] = actionInfo
				self._bindingsUpdated:Fire(self._bindingsData)
			end)

	end
	if not self._actionRemovedConnection then
		self._actionRemovedConnection = ContextActionService.BoundActionRemoved:connect(
			function(actionName, actionInfo, isCore)
				self._bindingsData[actionName] = nil
				self._bindingsUpdated:Fire(self._bindingsData)
			end)
	end
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
end

local function GetInstance()
	if not instance then
		instance = ActionBindingsData.new()
	end
	return instance
end

return GetInstance()
