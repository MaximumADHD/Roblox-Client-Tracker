local Plugin = script.Parent.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local BreakpointManagerListener = require(Plugin.Src.Util.BreakpointManagerListener.BreakpointManagerListener)
local DebugConnectionListener = require(Plugin.Src.Util.DebugConnectionListener.DebugConnectionListener)
local Mocks = Plugin.Src.Mocks
local MockDebuggerConnection =require(Mocks.MockDebuggerConnection)
local MockDebuggerConnectionManager = require(Mocks.MockDebuggerConnectionManager)
local MockBreakpointManager = require(Mocks.MockBreakpointManager)
local MockMetaBreakpoint = require(Mocks.MetaBreakpoint)

local function fakeDebuggerConnect(store)
	local mainConnectionManager = MockDebuggerConnectionManager.new()
	local _mainListener = DebugConnectionListener.new(store, mainConnectionManager)
	local currentMockConnection = MockDebuggerConnection.new(1)
	mainConnectionManager.ConnectionStarted:Fire(currentMockConnection)
end

local function createMockMetaBreakpoint(id, scriptString)
	return MockMetaBreakpoint.new(scriptString, 123, "conditionString", id, "testLogMessage", true, true, true,true)
end

return function()
	it("should create and destroy BreakpointManagerListener without errors", function()
		local mainStore = Rodux.Store.new(MainReducer, {})
		fakeDebuggerConnect(mainStore)
		local mockBreakpointManager = MockBreakpointManager.new()
		local mainBreakpointListener = BreakpointManagerListener.new(mainStore, mockBreakpointManager)
		expect(mainBreakpointListener)
		mainBreakpointListener:destroy()
	end)
	
	it("should add, modify, and remove MetaBreakpoints", function()
		local mainStore = Rodux.Store.new(MainReducer, {})
		fakeDebuggerConnect(mainStore)
		local mockBreakpointManager = MockBreakpointManager.new()
		local mainBreakpointListener = BreakpointManagerListener.new(mainStore, mockBreakpointManager)
		
		-- added breakpoint should show up
		local metaBreakpoint1 = createMockMetaBreakpoint(1,"scriptString1")
		mockBreakpointManager.MetaBreakpointAdded:Fire(metaBreakpoint1)
		local state = mainStore:getState()
		expect(state.Breakpoint.BreakpointInfo[1].scriptName).to.equal("scriptString1")
		
		-- breakpoint should modify
		local modifiedBreakpoint1 = createMockMetaBreakpoint(1,"modifiedString1")
		mockBreakpointManager.MetaBreakpointChanged:Fire(modifiedBreakpoint1)
		state = mainStore:getState()
		expect(state.Breakpoint.BreakpointInfo[1].scriptName).to.equal("modifiedString1")
		
		-- breakpoint should be removed
		mockBreakpointManager.MetaBreakpointRemoved:Fire(modifiedBreakpoint1)
		state = mainStore:getState()
		expect(state.Breakpoint.BreakpointInfo[1]).to.equal(nil)
		
		mainBreakpointListener:destroy()
	end)
end
