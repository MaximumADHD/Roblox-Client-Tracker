local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local TestHelpers = Framework.TestHelpers
local testImmutability = TestHelpers.testImmutability
local Actions = Plugin.Src.Actions
local Models = Plugin.Src.Models

local WatchReducer = require(script.Parent.Watch)
local ScopeEnum = require(Models.Watch.ScopeEnum)
local WatchRow = require(Models.Watch.WatchRow)
local VariableRow = require(Models.Watch.VariableRow)
local DebuggerStateToken = require(Models.DebuggerStateToken)
local StepStateBundle = require(Models.StepStateBundle)

--Watches
local AddChildExpression = require(Actions.Watch.AddChildExpression)
local AddExpression = require(Actions.Watch.AddExpression)
local ChangeExpression = require(Actions.Watch.ChangeExpression)
local ExpressionEvaluated = require(Actions.Watch.ExpressionEvaluated)
local RemoveExpression = require(Actions.Watch.RemoveExpression)

--common
local BreakpointHit = require(Actions.Common.BreakpointHit)

local separationToken = "_"

local defaultDebuggerToken = DebuggerStateToken.fromData({session = 1, stepNumber = 1})
local stepStateBundle = StepStateBundle.ctor(defaultDebuggerToken, 2, 2)

return function()
	describe(AddChildExpression.name, function()
		it("should add the Child Expressions", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))

			local tokenizedValue1 = "AddChildExpression Test"
			local tokenizedValue2 = tokenizedValue1 .. separationToken .. "AddChildExpression Test2"
			local varData1 = {
				expression = "AddChildExpression Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
 				childPaths = {},
			}

			local expressionData1 = WatchRow.fromData(varData1)

			local varData2 = {
				name = "AddChildExpression Test2",
				path = tokenizedValue2,
				scope = ScopeEnum.Local,
				value = "somePreview2",
				dataType = "string",
				childPaths = {},
			}

			local vars2 = {
				[1] = VariableRow.fromData(varData2),
			}

			local prepState2 = WatchReducer(prepState, ExpressionEvaluated(stepStateBundle, expressionData1))
			local state = WatchReducer(prepState2, AddChildExpression(stepStateBundle, tokenizedValue1, vars2))

			expect(#state.stateTokenToRoots[defaultDebuggerToken][2][2].Watches).to.equal(1)
			expect(state.stateTokenToRoots[defaultDebuggerToken][2][2].Watches[1]).to.equal(tokenizedValue1)
			expect(state.stateTokenToRoots[defaultDebuggerToken][2][2].Watches).to.be.ok()
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Watches[tokenizedValue1].expressionColumn).to.equal(varData1.expression)
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Watches[tokenizedValue1].childPaths[1]).to.equal(tokenizedValue2)
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Watches[tokenizedValue2].nameColumn).to.equal(varData2.name)
		end)

		it("should preserve immutability", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))

			local tokenizedValue1 = "AddChildExpression Test"
			local tokenizedValue2 = tokenizedValue1 .. separationToken .. "AddChildExpression Test2"

			local varData1 = {
				expression = "AddChildExpression Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
				childPaths = {},
			}

			local expressionData1 = WatchRow.fromData(varData1)

			local varData2 = {
				name = "AddChildExpression Test2",
				path = tokenizedValue2,
				scope = ScopeEnum.Local,
				value = "somePreview2",
				dataType = "string",
				childPaths = {},
			}

			local vars2 = {
				[1] = VariableRow.fromData(varData2),
			}

			local prepState2 = WatchReducer(prepState, ExpressionEvaluated(stepStateBundle, expressionData1))

			local immutabilityPreserved = testImmutability(WatchReducer, AddChildExpression(stepStateBundle, tokenizedValue1, vars2), prepState2)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(AddExpression.name, function() 
		it("should update the expressions list", function()
			local state = WatchReducer(nil, AddExpression("Add Expression Test"))

			expect(state).to.be.ok()
			expect(state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(1)
			expect(state.listOfExpressions[1]).to.equal("Add Expression Test")
		end)

		it("should not allow duplicates", function()
			local prepState = WatchReducer(nil, AddExpression("Add Expression Test"))
			local state = WatchReducer(prepState, AddExpression("Add Expression Test"))

			expect(state).to.be.ok()
			expect(state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(1)
			expect(state.listOfExpressions[1]).to.equal("Add Expression Test")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(WatchReducer, AddExpression("Add Expression Test"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(ChangeExpression.name, function() 
		it("should update the expression in place", function()
			local prepState1 = WatchReducer(nil, AddExpression("ChangeExpression Test1"))
			local prepState2 = WatchReducer(prepState1, AddExpression("ChangeExpression Test2"))
			local state = WatchReducer(prepState2, ChangeExpression("ChangeExpression Test1", "ChangeExpression Test3"))
			
			expect(state).to.be.ok()
			expect(state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(2)
			expect(state.listOfExpressions[1]).to.equal("ChangeExpression Test3")
			expect(state.listOfExpressions[2]).to.equal("ChangeExpression Test2")
		end)

		it("should not allow duplicates", function()
			local prepState1 = WatchReducer(nil, AddExpression("ChangeExpression Test1"))
			local prepState2 = WatchReducer(prepState1, AddExpression("ChangeExpression Test2"))
			
			local state = WatchReducer(prepState2, ChangeExpression("ChangeExpression Test1", "ChangeExpression Test2"))

			expect(state).to.be.ok()
			expect(state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(2)
			expect(state.listOfExpressions[1]).to.equal("ChangeExpression Test1")
			expect(state.listOfExpressions[2]).to.equal("ChangeExpression Test2")
		end)

		it("not allow changing what isn't there", function()			
			local state = WatchReducer(nil, ChangeExpression("ChangeExpression Test1", "ChangeExpression Test2"))

			expect(state).to.be.ok()
			expect(state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should remove the expression from the roots", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))
			local prepState1 = WatchReducer(prepState, AddExpression("ChangeExpression Test1"))
			local prepState2 = WatchReducer(prepState1, AddExpression("ChangeExpression Test2"))

			local tokenizedValue1 = "ChangeExpression Test1"
			local varData1 = {
				expression = "ChangeExpression Test1",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
 				childPaths = {},
			}

			local expressionData1 = WatchRow.fromData(varData1)

			local prepState3 = WatchReducer(prepState2, ExpressionEvaluated(stepStateBundle, expressionData1))
			expect(prepState3).to.be.ok()
			expect(#prepState3.stateTokenToRoots[defaultDebuggerToken][2][2].Watches).to.equal(1)
			expect(prepState3.stateTokenToRoots[defaultDebuggerToken][2][2].Watches[1]).to.equal("ChangeExpression Test1")

			local state = WatchReducer(prepState3, ChangeExpression("ChangeExpression Test1", "ChangeExpression Test3"))
			expect(state).to.be.ok()
			expect(state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(2)
			expect(state.listOfExpressions[1]).to.equal("ChangeExpression Test3")
			expect(state.listOfExpressions[2]).to.equal("ChangeExpression Test2")
		end)

		it("should preserve immutability", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))
			local prepState1 = WatchReducer(prepState, AddExpression("ChangeExpression Test1"))
			local prepState2 = WatchReducer(prepState1, AddExpression("ChangeExpression Test2"))

			local tokenizedValue1 = "ChangeExpression Test1"
			local varData1 = {
				expression = "ChangeExpression Test1",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
 				childPaths = {},
			}
			local expressionData1 = WatchRow.fromData(varData1)
			local prepState3 = WatchReducer(prepState2, ExpressionEvaluated(stepStateBundle, expressionData1))

			local immutabilityPreserved = testImmutability(WatchReducer, ChangeExpression("ChangeExpression Test1", "ChangeExpression Test3"), prepState3)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(ExpressionEvaluated.name, function()
		it("should add the Watches", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))

			local tokenizedValue1 = "ExpressionEvaluated Test"
			local tokenizedValue2 = "ExpressionEvaluated Test2"
			local varData1 = {
				expression = "ExpressionEvaluated Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
 				childPaths = {},
			}

			local varData2 = {
				expression = "ExpressionEvaluated Test2",
				path = tokenizedValue2,
				scope = ScopeEnum.Local,
				value = "somePreview2",
				dataType = "string",
				childPaths = {},
			}

			local expressionData1 = WatchRow.fromData(varData1)
			local expressionData2 = WatchRow.fromData(varData2)

			local prepState2 = WatchReducer(prepState, ExpressionEvaluated(stepStateBundle, expressionData1))
			local state = WatchReducer(prepState2, ExpressionEvaluated(stepStateBundle, expressionData2))
			expect(#state.stateTokenToRoots[defaultDebuggerToken][2][2].Watches).to.equal(2)
			expect(state.stateTokenToRoots[defaultDebuggerToken][2][2].Watches[1]).to.equal(tokenizedValue1)
			expect(state.stateTokenToRoots[defaultDebuggerToken][2][2].Watches[2]).to.equal(tokenizedValue2)
			expect(state.stateTokenToRoots[defaultDebuggerToken][2][2].Watches).to.be.ok()
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Watches[tokenizedValue1].expressionColumn).to.equal(varData1.expression)
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Watches[tokenizedValue2].expressionColumn).to.equal(varData2.expression)
		end)

		it("should preserve immutability", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))

			local tokenizedValue1 = "ExpressionEvaluated Test"
			local varData1 = {
				expression = "ExpressionEvaluated Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
				childPaths = {},
			}
			
			local expressionData1 = WatchRow.fromData(varData1)

			local immutabilityPreserved = testImmutability(WatchReducer, ExpressionEvaluated(stepStateBundle, expressionData1), prepState)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(RemoveExpression.name, function() 
		it("should remove the expression from the list of expressions", function()
			local prepState = WatchReducer(nil, AddExpression("RemoveExpression Test"))
			expect(prepState).to.be.ok()
			expect(prepState.listOfExpressions).to.be.ok()
			expect(#prepState.listOfExpressions).to.equal(1)
			expect(prepState.listOfExpressions[1]).to.equal("RemoveExpression Test")

			local state = WatchReducer(prepState, RemoveExpression("RemoveExpression Test"))
			
			expect(state).to.be.ok()
			expect(state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should remove the expression from the roots", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))
			local prepState2 = WatchReducer(prepState, AddExpression("RemoveExpression Test"))

			local tokenizedValue1 = "RemoveExpression Test"
			local varData1 = {
				expression = "RemoveExpression Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
 				childPaths = {},
			}

			local expressionData1 = WatchRow.fromData(varData1)

			local prepState3 = WatchReducer(prepState2, ExpressionEvaluated(stepStateBundle, expressionData1))
			expect(prepState3).to.be.ok()
			expect(#prepState3.stateTokenToRoots[defaultDebuggerToken][2][2].Watches).to.equal(1)
			expect(prepState3.stateTokenToRoots[defaultDebuggerToken][2][2].Watches[1]).to.equal("RemoveExpression Test")

			local state = WatchReducer(prepState3, RemoveExpression("RemoveExpression Test"))
			expect(state).to.be.ok()
			expect(state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should preserve immutability", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))
			local prepState2 = WatchReducer(prepState, AddExpression("RemoveExpression Test"))

			local tokenizedValue1 = "RemoveExpression Test"
			local varData1 = {
				expression = "RemoveExpression Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
 				childPaths = {},
			}
			local expressionData1 = WatchRow.fromData(varData1)
			local prepState3 = WatchReducer(prepState2, ExpressionEvaluated(stepStateBundle, expressionData1))

			local immutabilityPreserved = testImmutability(WatchReducer, RemoveExpression("RemoveExpression Test"), prepState3)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
