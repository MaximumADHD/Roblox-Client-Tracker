local Src = script.Parent.Parent.Parent
local Actions = Src.Actions
local MetaBreakpoint = require(Src.Models.MetaBreakpoint)
local AddBreakpoint = require(Actions.BreakpointsWindow.AddBreakpoint)
local ModifyBreakpoint = require(Actions.BreakpointsWindow.ModifyBreakpoint)
local DeleteBreakpoint = require(Actions.BreakpointsWindow.DeleteBreakpoint)
local SetFilenameForGuidAction = require(Actions.Common.SetFilenameForGuid)

local FFlagStudioDebuggerGetChangedBreakpointSet2 = game:GetFastFlag("StudioDebuggerGetChangedBreakpointSet2")

local MetaBreakpointManagerListener = {}
MetaBreakpointManagerListener.__index = MetaBreakpointManagerListener

function MetaBreakpointManagerListener:onMetaBreakpointAdded(metaBreakpoint)
	local convertedBreakpoint = MetaBreakpoint.fromMetaBreakpoint(metaBreakpoint)
	local state = self.store:getState()
	self.store:dispatch(AddBreakpoint(state.Common.currentDebuggerConnectionId, convertedBreakpoint))
	self.store:dispatch(SetFilenameForGuidAction(metaBreakpoint.Script, ""))

	self:updateScriptWatcher(metaBreakpoint)
end

function MetaBreakpointManagerListener:updateScriptWatcher(metaBreakpoint)
	local contextBreakpoints = metaBreakpoint:GetContextBreakpoints()
	for _, connectionIdAndBreakpoints in pairs(contextBreakpoints) do
		local connectionId = connectionIdAndBreakpoints.connectionId
		local breakpoints = connectionIdAndBreakpoints.breakpoints
		for _, breakpoint in ipairs(breakpoints) do
			self._crossDmScriptChangeListenerService:StartWatchingScriptLine(
				breakpoint.Script,
				connectionId,
				breakpoint.Line
			)
		end
	end
end

function MetaBreakpointManagerListener:onMetaBreakpointChanged(metaBreakpoint)
	local convertedBreakpoint = MetaBreakpoint.fromMetaBreakpoint(metaBreakpoint)
	self:updateScriptWatcher(metaBreakpoint)
	self.store:dispatch(ModifyBreakpoint(convertedBreakpoint))
end

function MetaBreakpointManagerListener:onMetaBreakpointRemoved(metaBreakpoint)
	self.store:dispatch(DeleteBreakpoint(metaBreakpoint.Id))
end

local function setUpConnections(metaBreakpointManagerListener, metaBreakpointManager, scriptChangeService)
	local MetaBreakpointManager = metaBreakpointManager or game:GetService("MetaBreakpointManager")
	metaBreakpointManagerListener._crossDmScriptChangeListenerService = scriptChangeService
		or game:GetService("CrossDMScriptChangeListener")

	metaBreakpointManagerListener._metaBreakpointAddedConnection = MetaBreakpointManager.MetaBreakpointAdded:Connect(
		function(metaBreakpoint)
			metaBreakpointManagerListener:onMetaBreakpointAdded(metaBreakpoint)
		end
	)
	metaBreakpointManagerListener._metaBreakpointChangedConnection = MetaBreakpointManager.MetaBreakpointChanged:Connect(
		function(metaBreakpoint)
			metaBreakpointManagerListener:onMetaBreakpointChanged(metaBreakpoint)
		end
	)
	if FFlagStudioDebuggerGetChangedBreakpointSet2 then
		metaBreakpointManagerListener._metaBreakpointSetChangedConnection = MetaBreakpointManager.MetaBreakpointSetChanged:Connect(
			function(metaBreakpoint, detail)
				metaBreakpointManagerListener:onMetaBreakpointChanged(metaBreakpoint)
			end
		)
	end
	metaBreakpointManagerListener._metaBreakpointRemovedConnection = MetaBreakpointManager.MetaBreakpointRemoved:Connect(
		function(metaBreakpoint)
			metaBreakpointManagerListener:onMetaBreakpointRemoved(metaBreakpoint)
		end
	)
end

function MetaBreakpointManagerListener:destroy()
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
	if FFlagStudioDebuggerGetChangedBreakpointSet2 then
		if self._metaBreakpointSetChangedConnection then
			self._metaBreakpointSetChangedConnection:Disconnect()
			self._metaBreakpointSetChangedConnection = nil
		end
	end
end

function MetaBreakpointManagerListener.new(store, metaBreakpointManager, scriptChangeService)
	local self = { store = store }
	setUpConnections(self, metaBreakpointManager, scriptChangeService)
	setmetatable(self, MetaBreakpointManagerListener)
	return self
end

return MetaBreakpointManagerListener
