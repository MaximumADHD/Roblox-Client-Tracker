--[[
	The TargetApi class is a base for functionality that tracks and notifies the inspector of any
	changes to a local state value.
]]
local Source = script.Parent.Parent
local Packages = Source.Parent

local EventName = require(Source.EventName)

local Dash = require(Packages.Dash)
local join = Dash.join
local class = Dash.class

local TargetApi = class("TargetApi", function(debugInterface, bridgeId, targetId)
	return {
		debugInterface = debugInterface,
		bridgeId = bridgeId,
		targetId = targetId
	}
end)

function TargetApi:_send(message)
	local newMessage = join(message, {
		toBridgeId = self.bridgeId,
		toTargetId = self.targetId,
	})
	self.debugInterface:_send(newMessage)
end

function TargetApi:_connect(listener)
	local newListener = join(listener, {
		fromTargetId = self.targetId,
	})
	self.debugInterface:_connect(newListener)
end

function TargetApi:attach()
	self:_send({
		eventName = EventName.AttachTarget,
	})
end

return TargetApi