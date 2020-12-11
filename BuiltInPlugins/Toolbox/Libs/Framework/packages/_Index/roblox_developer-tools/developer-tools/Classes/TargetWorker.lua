--[[
	The TargetWorker class is a base for functionality that tracks and notifies the inspector of
	any changes to a local state value.
]]
local Source = script.Parent.Parent
local Packages = Source.Parent

local Dash = require(Packages.Dash)
local class = Dash.class
local join = Dash.join

local TargetWorker = class("TargetWorker", function(debugInterface, targetId, toBridgeId)
	return {
		targetId = targetId,
		toBridgeId = toBridgeId,
		debugInterface = debugInterface,
		connections = {}
	}
end)

function TargetWorker:connect(listener)
	local newListener = join(listener, {
		targetId = self.targetId,
	})
	self.debugInterface:_connect(newListener)
end

function TargetWorker:send(message)
	local newMessage = join(message, {
		fromTargetId = self.targetId,
		toBridgeId = self.toBridgeId,
	})
	self.debugInterface:_send(newMessage)
end

function TargetWorker:destroy()
	-- NOOP Override with cleanup functionality
end

return TargetWorker