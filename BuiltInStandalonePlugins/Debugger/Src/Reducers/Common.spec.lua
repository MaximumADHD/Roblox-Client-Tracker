local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Framework = require(Plugin.Packages.Framework)
local TestHelpers = Framework.TestHelpers
local testImmutability = TestHelpers.testImmutability

local Actions = Plugin.Src.Actions
local SetCurrentThreadAction = require(Actions.Callstack.SetCurrentThread)
local AddThreadIdAction = require(Actions.Callstack.AddThreadId)
local ResumedAction = require(Actions.Common.Resumed)
local SimPaused = require(Actions.Common.SimPaused)
local ClearConnectionData = require(Actions.Common.ClearConnectionData)
local SetCurrentBreakpointId = require(Actions.Common.SetCurrentBreakpointId)
local SetPausedState = require(Actions.Common.SetPausedState)
local SetFocusedDebuggerConnection = require(Actions.Common.SetFocusedDebuggerConnection)

local CommonReducer = require(script.Parent.Common)
local SetCurrentFrameNumberAction = require(Actions.Callstack.SetCurrentFrameNumber)

local Models = Plugin.Src.Models
local DebuggerStateToken = require(Models.DebuggerStateToken)

local defaultNewNum = 1
local defaultDebuggerToken = DebuggerStateToken.fromData({ debuggerConnectionId = 1 })

return function()
	it("should return its expected default state", function()
		local commonReducer = Rodux.Store.new(CommonReducer)
		expect(commonReducer:getState()).to.be.ok()
	end)

	describe(SetCurrentThreadAction.name, function()
		it("should set the CurrentThreadId", function()
			local prepState = CommonReducer(nil, SetFocusedDebuggerConnection(1))
			local state = CommonReducer(prepState, SetCurrentThreadAction(123))

			expect(state).to.be.ok()
			expect(state.debuggerConnectionIdToCurrentThreadId).to.be.ok()
			expect(state.debuggerConnectionIdToCurrentThreadId[1]).to.equal(123)
			expect(state.currentFrameMap).to.be.ok()
			expect(state.debuggerConnectionIdToDST).to.be.ok()
		end)

		it("should preserve immutability", function()
			local prepState = CommonReducer(nil, SetFocusedDebuggerConnection(1))
			local immutabilityPreserved = testImmutability(CommonReducer, SetCurrentThreadAction(1234), prepState)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(ResumedAction.name, function()
		it("should reset Common Store", function()
			local prepState = CommonReducer(nil, SetFocusedDebuggerConnection(1))
			local prepState2 = CommonReducer(prepState, AddThreadIdAction(123, "TestScript.Lua", defaultDebuggerToken))
			local state = CommonReducer(prepState2, ResumedAction(defaultDebuggerToken, 123))

			expect(state).to.be.ok()
			expect(state.debuggerConnectionIdToCurrentThreadId).to.be.ok()
			expect(state.currentFrameMap).to.be.ok()
			expect(state.debuggerConnectionIdToDST).to.be.ok()
			expect(state.isPaused).to.equal(false)
			expect(state.pausedDebuggerConnectionIds[defaultDebuggerToken.debuggerConnectionId]).to.equal(nil)
		end)

		it("should preserve immutability", function()
			local prepState = CommonReducer(nil, SetFocusedDebuggerConnection(1))
			local prepState2 = CommonReducer(prepState, AddThreadIdAction(123, "TestScript.Lua", defaultDebuggerToken))
			local immutabilityPreserved = testImmutability(
				CommonReducer,
				ResumedAction(defaultDebuggerToken, 123),
				prepState2
			)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(SetCurrentFrameNumberAction.name, function()
		it("should set the CurrentFrameNumber", function()
			local prepState = CommonReducer(nil, SetFocusedDebuggerConnection(1))
			local prepState2 = CommonReducer(prepState, AddThreadIdAction(123, "TestScript.Lua", defaultDebuggerToken))
			local state = CommonReducer(prepState2, SetCurrentFrameNumberAction(defaultNewNum, defaultNewNum))

			expect(state).to.be.ok()
			expect(state.currentFrameMap).to.be.ok()
			expect(state.currentFrameMap[state.currentDebuggerConnectionId][defaultNewNum]).to.equal(defaultNewNum)
			expect(state.debuggerConnectionIdToCurrentThreadId).to.be.ok()
			expect(state.debuggerConnectionIdToDST).to.be.ok()
		end)

		it("should preserve immutability", function()
			local prepState = CommonReducer(nil, SetFocusedDebuggerConnection(1))
			local prepState2 = CommonReducer(prepState, AddThreadIdAction(123, "TestScript.Lua", defaultDebuggerToken))

			local immutabilityPreserved = testImmutability(CommonReducer, SetCurrentFrameNumberAction(2, 2), prepState2)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(SimPaused.name, function()
		it("should set the CurrentFrameNumber", function()
			local prepState = CommonReducer(nil, SetFocusedDebuggerConnection(1))
			local state = CommonReducer(prepState, SimPaused(defaultDebuggerToken))

			expect(state).to.be.ok()
			expect(state.debuggerConnectionIdToDST).to.be.ok()
			expect(state.debuggerConnectionIdToDST[1]).to.equal(defaultDebuggerToken)
			expect(state.currentFrameMap).to.be.ok()
			expect(state.debuggerConnectionIdToCurrentThreadId).to.be.ok()
			expect(state.isPaused).to.equal(true)
			expect(state.pausedDebuggerConnectionIds[defaultDebuggerToken.debuggerConnectionId]).to.equal(1)
		end)

		it("should preserve immutability", function()
			local prepState = CommonReducer(nil, SetFocusedDebuggerConnection(1))
			local immutabilityPreserved = testImmutability(CommonReducer, SimPaused(defaultDebuggerToken), prepState)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(SetPausedState.name, function()
		it("should set the Paused State", function()
			local prepState = CommonReducer(nil, SetFocusedDebuggerConnection(1))
			local state = CommonReducer(prepState, SetPausedState(true))
			expect(state).to.be.ok()
			expect(state.debuggerConnectionIdToDST).to.be.ok()
			expect(state.isPaused).to.equal(true)

			local newState = CommonReducer(state, SetPausedState(false))
			expect(newState).to.be.ok()
			expect(newState.debuggerConnectionIdToDST).to.be.ok()
			expect(newState.isPaused).to.equal(false)
		end)

		it("should preserve immutability", function()
			local prepState = CommonReducer(nil, SetFocusedDebuggerConnection(1))
			local immutabilityPreserved = testImmutability(CommonReducer, SetPausedState(true), prepState)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(ClearConnectionData.name, function()
		it("should set the CurrentFrameNumber", function()
			local prepState = CommonReducer(nil, SetFocusedDebuggerConnection(1))
			local state = CommonReducer(prepState, SimPaused(defaultDebuggerToken))
			state = CommonReducer(state, ClearConnectionData(defaultDebuggerToken))
			expect(state).to.be.ok()
			expect(state.debuggerConnectionIdToDST).to.be.ok()
			expect(state.debuggerConnectionIdToDST[1]).to.equal(nil)
			expect(state.currentFrameMap).to.be.ok()
			expect(state.debuggerConnectionIdToCurrentThreadId).to.be.ok()
			expect(state.isPaused).to.equal(false)
			expect(state.pausedDebuggerConnectionIds[defaultDebuggerToken.debuggerConnectionId]).to.equal(nil)
		end)

		it("should preserve immutability", function()
			local prepState = CommonReducer(nil, SetFocusedDebuggerConnection(1))
			prepState = CommonReducer(prepState, SimPaused(defaultDebuggerToken))
			local immutabilityPreserved = testImmutability(
				CommonReducer,
				ClearConnectionData(defaultDebuggerToken),
				prepState
			)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(SetCurrentBreakpointId.name, function()
		it("should set the CurrentBreakpointId", function()
			local prepState = CommonReducer(nil, SetFocusedDebuggerConnection(1))
			local state = CommonReducer(prepState, SetCurrentBreakpointId(5))

			expect(state).to.be.ok()
			expect(state.debuggerConnectionIdToDST).to.be.ok()
			expect(state.currentFrameMap).to.be.ok()
			expect(state.debuggerConnectionIdToCurrentThreadId).to.be.ok()
			expect(state.currentBreakpointId).to.equal(5)
		end)

		it("should preserve immutability", function()
			local prepState = CommonReducer(nil, SetFocusedDebuggerConnection(1))
			local immutabilityPreserved = testImmutability(CommonReducer, SetCurrentBreakpointId(5), prepState)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(AddThreadIdAction.name, function()
		it("should set the CurrentFrameNumber", function()
			local prepState = CommonReducer(nil, SetFocusedDebuggerConnection(1))
			local prepState2 = CommonReducer(prepState, SimPaused(defaultDebuggerToken))
			local state = CommonReducer(prepState2, AddThreadIdAction(123, "TestScript.Lua", defaultDebuggerToken))

			expect(state).to.be.ok()
			expect(state.debuggerConnectionIdToDST).to.be.ok()
			expect(state.debuggerConnectionIdToDST[1]).to.equal(defaultDebuggerToken)
			expect(state.debuggerConnectionIdToCurrentThreadId[1]).to.equal(123)
			expect(state.currentFrameMap[state.currentDebuggerConnectionId][123]).to.equal(1)
		end)

		it("should preserve immutability", function()
			local prepState = CommonReducer(nil, SetFocusedDebuggerConnection(1))
			local prepState2 = CommonReducer(prepState, SimPaused(defaultDebuggerToken))
			local immutabilityPreserved = testImmutability(
				CommonReducer,
				AddThreadIdAction(123, "TestScript.Lua", defaultDebuggerToken),
				prepState2
			)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(SetFocusedDebuggerConnection.name, function()
		it("should set the FocusedDebuggerConnection", function()
			local state = CommonReducer(nil, SetFocusedDebuggerConnection(1))

			expect(state).to.be.ok()
			expect(state.currentDebuggerConnectionId).to.equal(1)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(CommonReducer, SetFocusedDebuggerConnection(1))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
