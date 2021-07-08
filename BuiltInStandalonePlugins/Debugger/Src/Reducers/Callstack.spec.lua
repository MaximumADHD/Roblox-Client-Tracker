local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Framework = require(Plugin.Packages.Framework)
local TestHelpers = Framework.TestHelpers
local testImmutability = TestHelpers.testImmutability

local CallstackReducer = require(script.Parent.Callstack)
local Actions = Plugin.Src.Actions
local SetCurrentFrameNumberAction = require(Actions.Callstack.SetCurrentFrameNumber)
local AddCallstackAction = require(Actions.Callstack.AddCallstack)
local AddThreadIdAction = require(Actions.Callstack.AddThreadId)
local ResumedAction = require(Actions.Common.Resumed)

local defaultNewNum = 1

return function()
	it("should return its expected default state", function()
		local callstackReducer = Rodux.Store.new(CallstackReducer)
		expect(callstackReducer:getState()).to.be.ok()
		expect(#callstackReducer:getState().threadList).to.equal(0)
		expect(#callstackReducer:getState().threadIdToFrameList).to.equal(0)
		expect(callstackReducer:getState().currentFrame).to.equal(0)
	end)

	describe(SetCurrentFrameNumberAction.name, function()
		it("should set the CurrentFrame", function()
			local state = CallstackReducer(nil, SetCurrentFrameNumberAction(defaultNewNum))

			expect(state).to.be.ok()
			expect(state.currentFrame).to.be.ok()
			expect(state.currentFrame).to.equal(defaultNewNum)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(CallstackReducer, SetCurrentFrameNumberAction(2))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(AddCallstackAction.name, function()
		it("should Add the Callstack", function()

			local testInfo = {
				arrowColumn = {
					value = "",
				},
				frameColumn = "a",
				whatColumn = "b",
				functionNameColumn = "c",
				lineNumberColumn = "d",
				sourceColumn = "e",
			}

			local state = CallstackReducer(nil, AddCallstackAction(123, testInfo))

			expect(state).to.be.ok()
			expect(state.threadIdToFrameList).to.be.ok()
			expect(state.threadIdToFrameList[123].frameColumn).to.equal("a")
			expect(state.threadIdToFrameList[123].whatColumn).to.equal("b")
			expect(state.threadIdToFrameList[123].functionNameColumn).to.equal("c")
			expect(state.threadIdToFrameList[123].lineNumberColumn).to.equal("d")
			expect(state.threadIdToFrameList[123].sourceColumn).to.equal("e")
		end)

		it("should preserve immutability", function()
			
			local testInfo2 = {
				arrowColumn = {
					value = "",
				},
				frameColumn = "aa",
				whatColumn = "b",
				functionNameColumn = "c",
				lineNumberColumn = "d",
				sourceColumn = "e",
			}

			local immutabilityPreserved = testImmutability(CallstackReducer, AddCallstackAction(1234, testInfo2))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(AddThreadIdAction.name, function()
		it("should Add the ThreadId", function()
			local state = CallstackReducer(nil, AddThreadIdAction(123, "TestScript.Lua"))

			expect(state).to.be.ok()
			expect(state.threadList).to.be.ok()
			expect(#state.threadList).to.equal(1)
			expect(state.threadList[1].threadId).to.equal(123)
			expect(state.threadList[1].displayString).to.equal("TestScript.Lua")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(CallstackReducer, AddThreadIdAction(1234, "TestScript2.Lua"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(ResumedAction.name, function()
		it("should clear to default state", function()
			local state = CallstackReducer(nil, ResumedAction())

			expect(state).to.be.ok()
			expect(state.threadList).to.be.ok()
			expect(state.threadIdToFrameList).to.be.ok()
			expect(state.currentFrame).to.be.ok()
			expect(state.currentFrame).to.equal(0)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(CallstackReducer, ResumedAction)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
