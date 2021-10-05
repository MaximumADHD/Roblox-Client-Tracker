local Plugin = script.Parent.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local MainFolder = Plugin.Src.Util.DebugConnectionListener
local DebugConnectionListener = require(MainFolder.DebugConnectionListener)
local MockDebuggerConnection =require(MainFolder.Mock.MockDebuggerConnection)
local MockDebuggerConnectionManager = require(MainFolder.Mock.MockDebuggerConnectionManager)

return function()
	it("should create and destroy DebugConnectionListener without errors", function()
		local mainStore = Rodux.Store.new(MainReducer, {})
		local mainConnectionManager = MockDebuggerConnectionManager.new()
		local mainListener = DebugConnectionListener.new(mainStore, mainConnectionManager)
		expect(mainListener)
		mainListener:destroy()
	end)
	
	it("should create and destroy DebugConnections", function()
		local mainStore = Rodux.Store.new(MainReducer, {})
		local mainConnectionManager = MockDebuggerConnectionManager.new()
		local mainListener = DebugConnectionListener.new(mainStore, mainConnectionManager)
		local currentMockConnection = MockDebuggerConnection.new(1)
		mainConnectionManager.ConnectionStarted:Fire(currentMockConnection)
		mainConnectionManager.ConnectionEnded:Fire(currentMockConnection)
		mainListener:destroy()
	end)
	
	it("should pause DebugConnections", function()
		local mainStore = Rodux.Store.new(MainReducer, {})
		local mainConnectionManager = MockDebuggerConnectionManager.new()
		local mainListener = DebugConnectionListener.new(mainStore, mainConnectionManager)
		local currentMockConnection = MockDebuggerConnection.new(1)
		mainConnectionManager.ConnectionStarted:Fire(currentMockConnection)
		currentMockConnection.Paused:Fire("arg1", "arg2")
		mainConnectionManager.ConnectionEnded:Fire(currentMockConnection)
		mainListener:destroy()
	end)
end
