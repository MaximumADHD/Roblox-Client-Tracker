local Src = script.Parent.Parent.Parent
local Actions = Src.Actions
local MetaBreakpoint = require(Src.Models.MetaBreakpoint)
local AddBreakpoint = require(Actions.BreakpointsWindow.AddBreakpoint)
local ModifyBreakpoint = require(Actions.BreakpointsWindow.ModifyBreakpoint)
local DeleteBreakpoint = require(Actions.BreakpointsWindow.DeleteBreakpoint)
local SetFilenameForGuidAction = require(Actions.Common.SetFilenameForGuid)

local BreakpointManagerListener = {}
BreakpointManagerListener.__index = BreakpointManagerListener

function BreakpointManagerListener:onMetaBreakpointAdded(metaBreakpoint)
	local convertedBreakpoint = MetaBreakpoint.fromMetaBreakpoint(metaBreakpoint)
	local state = self.store:getState()
	self.store:dispatch(AddBreakpoint(state.Common.currentDebuggerConnectionId, convertedBreakpoint))
	self.store:dispatch(SetFilenameForGuidAction(metaBreakpoint.Script, ""))

	self:updateScriptWatcher(metaBreakpoint)
end

function BreakpointManagerListener:updateScriptWatcher(metaBreakpoint)
	local contextBreakpoints = metaBreakpoint:GetContextBreakpoints();
	for _, connectionIdAndBreakpoints in pairs(contextBreakpoints) do
		local connectionId = connectionIdAndBreakpoints.connectionId
		local breakpoints = connectionIdAndBreakpoints.breakpoints
		for _, breakpoint in ipairs(breakpoints) do
			self._crossDmScriptChangeListenerService:StartWatchingScriptLine(breakpoint.Script, connectionId, breakpoint.Line)
		end
	end
end

function BreakpointManagerListener:onMetaBreakpointChanged(metaBreakpoint)
	local convertedBreakpoint = MetaBreakpoint.fromMetaBreakpoint(metaBreakpoint)
	self:updateScriptWatcher(metaBreakpoint)
	self.store:dispatch(ModifyBreakpoint(convertedBreakpoint))
end

function BreakpointManagerListener:onMetaBreakpointRemoved(metaBreakpoint)
	self.store:dispatch(DeleteBreakpoint(metaBreakpoint.Id))
end

local function setUpConnections(breakpointManagerListener, breakpointManager, scriptChangeService)
	local BreakpointManager = breakpointManager or game:GetService("BreakpointManager")
	breakpointManagerListener._crossDmScriptChangeListenerService = scriptChangeService or game:GetService("CrossDMScriptChangeListener")

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

	if self._metaBreakpointChangedConnection then
		self._metaBreakpointChangedConnection:Disconnect()
		self._metaBreakpointChangedConnection = nil
	end
end

function BreakpointManagerListener.new(store, breakpointManager, scriptChangeService)
	local self = {store = store}
	setUpConnections(self, breakpointManager, scriptChangeService)
	setmetatable(self, BreakpointManagerListener)
	return self
end

return BreakpointManagerListener
