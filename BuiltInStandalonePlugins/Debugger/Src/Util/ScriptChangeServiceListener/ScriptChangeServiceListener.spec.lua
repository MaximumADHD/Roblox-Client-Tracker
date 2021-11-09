local Plugin = script.Parent.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local ScriptChangeServiceListener = require(Plugin.Src.Util.ScriptChangeServiceListener.ScriptChangeServiceListener)
local DebugConnectionListener = require(Plugin.Src.Util.DebugConnectionListener.DebugConnectionListener)
local Mocks = Plugin.Src.Mocks
local MockDebuggerConnection =require(Mocks.MockDebuggerConnection)
local MockDebuggerConnectionManager = require(Mocks.MockDebuggerConnectionManager)
local MockScriptChangeService = require(Mocks.MockScriptChangeService)
local MockLuaSourceContainer = require(Mocks.LuaSourceContainer)
local Actions = Plugin.Src.Actions
local SetFilenameForGuidAction = require(Actions.Common.SetFilenameForGuid)

local function fakeDebuggerConnect(store)
	local mainConnectionManager = MockDebuggerConnectionManager.new()
	local _mainListener = DebugConnectionListener.new(store, mainConnectionManager)
	local currentMockConnection = MockDebuggerConnection.new(1)
	mainConnectionManager.ConnectionStarted:Fire(currentMockConnection)
end

return function()
	it("should create and destroy ScriptChangeServiceListener without errors", function()
		local mainStore = Rodux.Store.new(MainReducer, {})
		fakeDebuggerConnect(mainStore)
		local mockScriptChangeService = MockScriptChangeService.new()
		local scriptChangeServiceListener = ScriptChangeServiceListener.new(mainStore, mockScriptChangeService)
		expect(scriptChangeServiceListener)
		scriptChangeServiceListener:destroy()
	end)
	
	it("should modify ScriptRef info for ScriptFullNameChanged signal", function()
		local mainStore = Rodux.Store.new(MainReducer, {})
		mainStore:dispatch(SetFilenameForGuidAction("ScriptRefGuid1", "previous.lua"))
		fakeDebuggerConnect(mainStore)
		local mockScriptChangeService = MockScriptChangeService.new()
		local scriptChangeServiceListener = ScriptChangeServiceListener.new(mainStore, mockScriptChangeService)
		
		local modifiedLuaSourceContainer = MockLuaSourceContainer.new("ScriptRefGuid1", "new.lua")
		mockScriptChangeService.ScriptFullNameChanged:Fire(modifiedLuaSourceContainer)
		local state = mainStore:getState()
		expect(state.ScriptInfo.ScriptInfo["ScriptRefGuid1"]).to.equal("new.lua")
		scriptChangeServiceListener:destroy()
	end)
end
