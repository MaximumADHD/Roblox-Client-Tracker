local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Framework = require(Plugin.Packages.Framework)
local TestHelpers = Framework.TestHelpers
local testImmutability = TestHelpers.testImmutability

local CallstackReducer = require(script.Parent.Callstack)
local Actions = Plugin.Src.Actions
local Models = Plugin.Src.Models
local AddCallstackAction = require(Actions.Callstack.AddCallstack)
local AddThreadIdAction = require(Actions.Callstack.AddThreadId)
local ColumnFilterChangeAction = require(Actions.Callstack.ColumnFilterChange)
local ResumedAction = require(Actions.Common.Resumed)
local SimPaused = require(Actions.Common.SimPaused)
local ClearConnectionData = require(Actions.Common.ClearConnectionData)
local DebuggerStateToken = require(Models.DebuggerStateToken)

local defaultDebuggerToken = DebuggerStateToken.fromData({debuggerConnectionId = 1})
local defaultThreadId = 1

return function()
	it("should return its expected default state", function()
		local callstackReducer = Rodux.Store.new(CallstackReducer)
		expect(callstackReducer:getState()).to.be.ok()
		expect(callstackReducer:getState().listOfEnabledColumns).to.be.ok()
		expect(#callstackReducer:getState().listOfEnabledColumns).to.equal(5)
		expect(callstackReducer:getState().stateTokenToCallstackVars).to.be.ok()
	end)

	describe(AddCallstackAction.name, function()
		it("should Add the Callstack", function()

			local testInfo = {
				frameColumn = "a",
				layerColumn = "b",
				functionColumn = "c",
				lineColumn = "d",
				sourceColumn = "e",
			}
			local prepState = CallstackReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))
			local state = CallstackReducer(prepState, AddCallstackAction(123, testInfo, defaultDebuggerToken))
			expect(state).to.be.ok()
			expect(state.stateTokenToCallstackVars).to.be.ok()
			expect(state.listOfEnabledColumns).to.be.ok()
			expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadList).to.be.ok()
			expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadIdToFrameList[123].frameColumn).to.equal("a")
			expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadIdToFrameList[123].layerColumn).to.equal("b")
			expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadIdToFrameList[123].functionColumn).to.equal("c")
			expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadIdToFrameList[123].lineColumn).to.equal("d")
			expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadIdToFrameList[123].sourceColumn).to.equal("e")
		end)

		it("should preserve immutability", function()
			
			local testInfo2 = {
				frameColumn = "aa",
				layerColumn = "b",
				functionColumn = "c",
				lineColumn = "d",
				sourceColumn = "e",
			}
			local previousState = {stateTokenToCallstackVars = {
				[defaultDebuggerToken] = {
					threadList = {},
					threadIdToFrameList = {},
				}
			}}
			local immutabilityPreserved = testImmutability(CallstackReducer, AddCallstackAction(1234, testInfo2, defaultDebuggerToken), previousState)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(AddThreadIdAction.name, function()
		it("should Add the ThreadId", function()
			local prepState = CallstackReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))
			local state = CallstackReducer(prepState, AddThreadIdAction(123, "TestScript.Lua", defaultDebuggerToken))

			expect(state).to.be.ok()
			expect(state.listOfEnabledColumns).to.be.ok()
			expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadIdToFrameList).to.be.ok()
			expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadList).to.be.ok()
			expect(#state.stateTokenToCallstackVars[defaultDebuggerToken].threadList).to.equal(1)
			expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadList[1].threadId).to.equal(123)
			expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadList[1].displayString).to.equal("TestScript.Lua")
		end)

		local previousState = {stateTokenToCallstackVars = {
			[defaultDebuggerToken] = {
				threadList = {},
				threadIdToFrameList = {},
			}
		}}
		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(CallstackReducer, AddThreadIdAction(1234, "TestScript2.Lua", defaultDebuggerToken), previousState)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(ResumedAction.name, function()
		it("should should add empty data to state map", function()
			local state = CallstackReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))
			state = CallstackReducer(state, ResumedAction(defaultDebuggerToken, defaultThreadId))
			expect(state).to.be.ok()
			expect(state.listOfEnabledColumns).to.be.ok()
			expect(state.stateTokenToCallstackVars).to.be.ok()
			expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadList).to.be.ok()
			expect(#state.stateTokenToCallstackVars[defaultDebuggerToken].threadList).to.equal(0)
			expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadIdToFrameList).to.be.ok()
			expect(#state.stateTokenToCallstackVars[defaultDebuggerToken].threadIdToFrameList).to.equal(0)
		end)
		
		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(CallstackReducer, ResumedAction)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(SimPaused.name, function()
		it("should should add empty data to state map", function()
			local state = CallstackReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))
			expect(state).to.be.ok()
			expect(state.listOfEnabledColumns).to.be.ok()
			expect(state.stateTokenToCallstackVars).to.be.ok()
			expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadList).to.be.ok()
			expect(#state.stateTokenToCallstackVars[defaultDebuggerToken].threadList).to.equal(0)
			expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadIdToFrameList).to.be.ok()
			expect(#state.stateTokenToCallstackVars[defaultDebuggerToken].threadIdToFrameList).to.equal(0)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(CallstackReducer, SimPaused)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
	
	describe(ClearConnectionData.name, function() 
		it("should clear data on connection ended", function()
			local state = CallstackReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))
			local secondDebuggerToken = DebuggerStateToken.fromData({debuggerConnectionId = 2})
			state = CallstackReducer(state, SimPaused(secondDebuggerToken, 2))
			state = CallstackReducer(state, ClearConnectionData(secondDebuggerToken))
			expect(state).to.be.ok()
			expect(state.stateTokenToCallstackVars).to.be.ok()
			expect(state.stateTokenToCallstackVars[defaultDebuggerToken]).to.be.ok()
			expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadList).to.be.ok()
			expect(state.stateTokenToCallstackVars[secondDebuggerToken]).to.equal(nil)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(CallstackReducer, ClearConnectionData)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
	
	describe(ColumnFilterChangeAction.name, function()
		it("should update list of enabled columns ", function()
			local state = CallstackReducer(nil, ColumnFilterChangeAction({"FrameColumn", "SourceColumn"}))
			expect(state).to.be.ok()
			expect(state.listOfEnabledColumns).to.be.ok()
			expect(#state.listOfEnabledColumns).to.equal(2)
			expect(state.listOfEnabledColumns[1]).to.equal("FrameColumn")
			expect(state.listOfEnabledColumns[2]).to.equal("SourceColumn")
			expect(state.stateTokenToCallstackVars).to.be.ok()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(CallstackReducer, ColumnFilterChangeAction)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
