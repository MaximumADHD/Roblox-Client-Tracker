--[[
	The DebugInterface class controls interactions between consumers of the DeveloperTools library
	and the DeveloperTools inspector plugin itself.
]]
local HttpService = game:GetService("HttpService")

local Source = script.Parent.Parent
local Packages = Source.Parent

local Dash = require(Packages.Dash)
local class = Dash.class
local forEach = Dash.forEach
local map = Dash.map

local insert = table.insert

local Services = require(Source.Services)
local EventName = require(Source.EventName)
local PluginEventRouter = require(Source.Classes.PluginEventRouter)
local RoactInspectorWorker = require(Source.RoactInspector.Classes.RoactInspectorWorker)
local Roact17TargetWatcher = require(Source.Roact17.Classes.Roact17TargetWatcher)

local DebugInterface = class("DebugInterface", function(sourceKind: string, sourceName: string, bridges)
	return {
		sourceId = HttpService:GenerateGUID(),
		sourceKind = sourceKind,
		sourceName = sourceName, 
		bridges = bridges,
		routers = {},
		targets = {},
		workers = {},
		connectionsForListener = {},
		outboundBridgeForBridgeId = {},
	}
end)

type Roact = any
type RoactTree = any

function DebugInterface:addRoactTree(targetName: string, roactTree: RoactTree, roact: Roact)
	assert(typeof(targetName) == "string", "targetName must be a string")
	assert(roactTree, "roactTree must be defined")
	
	return self:addTarget(targetName, function(targetId: string, toBridgeId: string)
		return RoactInspectorWorker.new(self, targetId, toBridgeId, roactTree, roact)
	end)
end

function DebugInterface:initRoact(devtoolsShared, debugMode: boolean)
	local devtools = devtoolsShared.setup(debugMode)
	self.workers.reactTargetWatcher = Roact17TargetWatcher.new(self, devtools)
end

function DebugInterface:addPluginRouter(plugin: Plugin)
	insert(self.routers, PluginEventRouter.new(self.sourceName, plugin, self.bridges))
end

function DebugInterface:_connectTargets()
	-- Ensure that GetTargets is only connected to once.
	-- If targets have already been added we don't need to add another listener
	if next(self.targets) then
		return
	end
	self:_connect({
		eventName = EventName.GetTargets,
		onEvent = function(message)
			self:_send({
				eventName = EventName.ShowTargets,
				toBridgeId = message.fromBridgeId,
				sourceId = self.sourceId,
				sourceName = self.sourceName,
				sourceKind = self.sourceKind,
				targets = map(self.targets, function(target)
					return {
						id = target.id,
						name = target.name,
					}
				end),
			})
		end
	})
end

function DebugInterface:_send(message)
	if not message.toBridgeId then
		forEach(self.bridges, function(bridge)
			bridge:send(message)
		end)
	else
		local bridge = self.outboundBridgeForBridgeId[message.toBridgeId]
		if not bridge then
			error(("[DeveloperTools] No bridge to other bridge %s"):format(message.toBridgeId))
		end
		bridge:send(message)
	end
end

function DebugInterface:_connect(listener)
	local connections = {}
	self.connectionsForListener[listener] = connections
	forEach(self.bridges, function(bridge)
		local newListener = function(message)
			self.outboundBridgeForBridgeId[message.fromBridgeId] = bridge
			local matchesEvent = listener.eventName == nil or listener.eventName == message.eventName
			local matchesBridge = listener.bridgeId == nil or listener.bridgeId == message.toBridgeId
			local matchesTarget = listener.targetId == nil or listener.targetId == message.toTargetId
			if matchesEvent and matchesBridge and matchesTarget then
				listener.onEvent(message)
			end
		end
		local connection = bridge:connect(newListener)
		insert(connections, connection)
	end)
end

function DebugInterface:_disconnect(listener)
	local connections = self.connectionsForListener[listener]
	forEach(connections, function(connection)
		connection:Disconnect()
	end)
end

function DebugInterface:addTarget(targetName: string, getWorker)
	self:_connectTargets()
	local id = HttpService:GenerateGUID()
	local target = {
		id = id,
		name = targetName,
		listener = {
			targetId = id,
			eventName = EventName.AttachTarget,
			onEvent = function(message)
				local worker = self.workers[id] or getWorker(id, message.fromBridgeId)
				self.workers[id] = worker
			end
		}
	}
	self.targets[id] = target
	self:_connect(target.listener)
	return id
end

function DebugInterface:removeTarget(targetId: number)
	local target = self.targets[targetId]
	if target ~= nil then
		self:_disconnect(target.listener)
		self.targets[targetId] = nil
	end
end

function DebugInterface:removeWorker(id: number)
	local worker = self.workers[id]
	if worker then
		worker:destroy()
	end
	self.workers[id] = nil
end

function DebugInterface:setGuiOptions(guiOptions)
	self.rootInstance = guiOptions.rootInstance
	self.pickerParent = guiOptions.pickerParent
	self.rootPath = guiOptions.rootPath
	self.rootPrefix = guiOptions.rootPrefix
end

function DebugInterface:destroy()
	forEach(self.bridges, function(bridge)
		bridge:destroy()
	end)
	forEach(self.routers, function(router)
		router:destroy()
	end)
	forEach(self.workers, function(worker)
		worker:destroy()
	end)
end

return DebugInterface
