local Src = script.Parent.Parent.Parent
local Actions = Src.Actions
local Breakpoint = require(Src.Models.Breakpoint)
local AddBreakpoint = require(Actions.BreakpointsWindow.AddBreakpoint)
local ModifyBreakpoint = require(Actions.BreakpointsWindow.ModifyBreakpoint)
local DeleteBreakpoint = require(Actions.BreakpointsWindow.DeleteBreakpoint)

local BreakpointManagerListener = {}
BreakpointManagerListener.__index = BreakpointManagerListener

function BreakpointManagerListener:onMetaBreakpointAdded(metaBreakpoint)
	local convertedBreakpoint = Breakpoint.fromMetaBreakpoint(metaBreakpoint)
	local state = self.store:getState()
	self.store:dispatch(AddBreakpoint(state.Common.currentDebuggerConnectionId, convertedBreakpoint))
end

function BreakpointManagerListener:onMetaBreakpointChanged(metaBreakpoint)
	local convertedBreakpoint = Breakpoint.fromMetaBreakpoint(metaBreakpoint)
	self.store:dispatch(ModifyBreakpoint(convertedBreakpoint))
end

function BreakpointManagerListener:onMetaBreakpointRemoved(metaBreakpoint)
	self.store:dispatch(DeleteBreakpoint(metaBreakpoint.Id))
end

local function setUpConnections(breakpointManagerListener, breakpointManager)
	local BreakpointManager = breakpointManager or game:GetService("BreakpointManager")
	breakpointManagerListener._metaBreakpointAddedConnection = BreakpointManager.MetaBreakpointAdded:Connect(function(metaBreakpoint)
		breakpointManagerListener:onMetaBreakpointAdded(metaBreakpoint) 
	end)
	breakpointManagerListener._metaBreakpointChangedConnection = BreakpointManager.MetaBreakpointChanged:Connect(function(metaBreakpoint) 
		breakpointManagerListener:onMetaBreakpointChanged(metaBreakpoint) 
	end)
	breakpointManagerListener._metaBreakpointRemovedConnection = BreakpointManager.MetaBreakpointRemoved:Connect(function(metaBreakpoint)
		breakpointManagerListener:onMetaBreakpointRemoved(metaBreakpoint) 
	end)
end

function BreakpointManagerListener:destroy()
	if self._metaBreakpointAddedConnection then
		self._metaBreakpointAddedConnection:Disconnect()
		self._metaBreakpointAddedConnection = nil
	end

	if self._metaBreakpointRemovedConnection then
		self._metaBreakpointRemovedConnection:Disconnect()
		self._metaBreakpointRemovedConnection = nil
	end

	if self._focusChangedConnection then
		self._focusChangedConnection:Disconnect()
		self._focusChangedConnection = nil
	end
end

function BreakpointManagerListener.new(store, breakpointManager)
	local self = {store = store}
	setUpConnections(self, breakpointManager)
	setmetatable(self, BreakpointManagerListener)
	return self
end

return BreakpointManagerListener
