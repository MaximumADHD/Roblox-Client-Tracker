local Plugin = script.Parent.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local CrossDMScriptChangeListener = require(Plugin.Src.Util.CrossDMScriptChangeListener.CrossDMScriptChangeListener)
local DebugConnectionListener = require(Plugin.Src.Util.DebugConnectionListener.DebugConnectionListener)
local Mocks = Plugin.Src.Mocks
local MockDebuggerConnection =require(Mocks.MockDebuggerConnection)
local MockDebuggerConnectionManager = require(Mocks.MockDebuggerConnectionManager)
local MockCrossDMScriptChangeListenerService = require(Mocks.MockCrossDMScriptChangeListenerService)
local Actions = Plugin.Src.Actions
local SetFilenameForGuidAction = require(Actions.Common.SetFilenameForGuid)

local function fakeDebuggerConnect(store)
	local mainConnectionManager = MockDebuggerConnectionManager.new()
	local _mainListener = DebugConnectionListener.new(store, mainConnectionManager)
	local currentMockConnection = MockDebuggerConnection.new(1)
	mainConnectionManager.ConnectionStarted:Fire(currentMockConnection)
end

return function()
	it("should create and destroy CrossDMScriptChangeListener without errors", function()
		local mainStore = Rodux.Store.new(MainReducer, {})
		fakeDebuggerConnect(mainStore)
		local mockCrossDMScriptChangeListenerService = MockCrossDMScriptChangeListenerService.new()
		local scriptChangeServiceListener = CrossDMScriptChangeListener.new(mainStore, mockCrossDMScriptChangeListenerService)
		expect(scriptChangeServiceListener)
		scriptChangeServiceListener:destroy()
	end)
	
	it("should send nameChangeSignal", function()
		local mainStore = Rodux.Store.new(MainReducer, {})
		mainStore:dispatch(SetFilenameForGuidAction("testGuid", ""))
		fakeDebuggerConnect(mainStore)
		local mockCrossDMScriptChangeListenerService = MockCrossDMScriptChangeListenerService.new()
		local scriptChangeServiceListener = CrossDMScriptChangeListener.new(mainStore, mockCrossDMScriptChangeListenerService)
		
		mockCrossDMScriptChangeListenerService.GuidNameChanged:Fire("testGuid", "testName.lua")
		local state = mainStore:getState()
		expect(state.ScriptInfo.ScriptInfo["testGuid"]).to.equal("testName.lua")
		scriptChangeServiceListener:destroy()
	end)
end
