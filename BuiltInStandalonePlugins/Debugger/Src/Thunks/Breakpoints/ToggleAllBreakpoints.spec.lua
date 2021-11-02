local Plugin = script.Parent.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Reducers = Plugin.Src.Reducers
local MainReducer = require(Reducers.MainReducer)
local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)

local Util = Plugin.Src.Util

local BreakpointManagerListener = require(Util.BreakpointManagerListener.BreakpointManagerListener)
local DebugConnectionListener = require(Util.DebugConnectionListener.DebugConnectionListener)

local Mocks = Plugin.Src.Mocks

local MockBreakpointManager = require(Mocks.MockBreakpointManager)
local MockDebuggerConnection =require(Mocks.MockDebuggerConnection)
local MockDebuggerConnectionManager = require(Mocks.MockDebuggerConnectionManager)
local MockMetaBreakpoint = require(Mocks.MetaBreakpoint)

local ToggleAllBreakpoints = require(script.Parent.ToggleAllBreakpoints)

local function fakeDebuggerConnect(store)
	local mainConnectionManager = MockDebuggerConnectionManager.new()
	local _mainListener = DebugConnectionListener.new(store, mainConnectionManager)
	local currentMockConnection = MockDebuggerConnection.new(1)
	mainConnectionManager.ConnectionStarted:Fire(currentMockConnection)
end

local function createMockMetaBreakpoint(id, scriptString, breakpointManager)
	local mockMetaBreakpoint = MockMetaBreakpoint.new(scriptString, 123, "conditionString", id, "testLogMessage", true, true, true,true)
	mockMetaBreakpoint:SetMockBreakpointManager(breakpointManager)
	return mockMetaBreakpoint
end

return function()
	it("should set all BP to same state", function()
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		fakeDebuggerConnect(store)
		
		local mockBreakpointManager = MockBreakpointManager.new()
		local _mainBreakpointListener = BreakpointManagerListener.new(store, mockBreakpointManager)

		-- add breakpoints to the store
		local metaBreakpoint1 = createMockMetaBreakpoint(1,"scriptString1", mockBreakpointManager)
		local metaBreakpoint2 = createMockMetaBreakpoint(2,"scriptString2", mockBreakpointManager)
		mockBreakpointManager.MetaBreakpointAdded:Fire(metaBreakpoint1)
		mockBreakpointManager.MetaBreakpointAdded:Fire(metaBreakpoint2)
		
		-- before toggling all breakpoints, all should be enabled
		local state = store:getState()
		for id, info in pairs(state.Breakpoint.BreakpointInfo) do
			expect(info.isEnabled).to.equal(true)
		end
		
		store:dispatch(ToggleAllBreakpoints(mockBreakpointManager))
		
		state = store:getState()
		-- after toggling all breakpoints, all should be disabled
		for id, info in pairs(state.Breakpoint.BreakpointInfo) do
			expect(info.isEnabled).to.equal(false)
		end
	end)
end
