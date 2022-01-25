local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Framework = require(Plugin.Packages.Framework)
local TestHelpers = Framework.TestHelpers
local testImmutability = TestHelpers.testImmutability

local Actions = Plugin.Src.Actions
local Models = Plugin.Src.Models
local Util = Plugin.Src.Util
local Constants = require(Util.Constants)
local ScopeFilterChange = require(Actions.Watch.ScopeFilterChange)
local SetTab = require(Actions.Watch.SetTab)
local SetVariablesScopeFilteredOut = require(Actions.Watch.SetVariablesScopeFilteredOut)
local SetVariablesTextFilteredOut = require(Actions.Watch.SetVariablesTextFilteredOut)
local SetVariableExpanded = require(Actions.Watch.SetVariableExpanded)
local AddRootVariables = require(Actions.Watch.AddRootVariables)
local AddChildVariables = require(Actions.Watch.AddChildVariables)
local SetExpansionTree = require(Actions.Watch.SetExpansionTree)
local SimPaused = require(Actions.Common.SimPaused)

local WatchReducer = require(script.Parent.Watch)
local ScopeEnum = require(Models.Watch.ScopeEnum)
local TableTab = require(Models.Watch.TableTab)
local VariableRow = require(Models.Watch.VariableRow)
local DebuggerStateToken = require(Models.DebuggerStateToken)
local StepStateBundle = require(Models.StepStateBundle)

local defaultDebuggerToken = DebuggerStateToken.fromData({debuggerConnectionId = 1, stepNumber = 1})
local defaultThreadId = 1
local stepStateBundle = StepStateBundle.ctor(defaultDebuggerToken, 2, 2)

return function()
	it("should return its expected default state", function()
		local watchReducer = Rodux.Store.new(WatchReducer)
		expect(watchReducer:getState()).to.be.ok()
		expect(watchReducer:getState().stateTokenToRoots).to.be.ok()
		expect(#watchReducer:getState().listOfEnabledScopes).to.equal(3)
	end)

	describe(AddRootVariables.name, function()
		it("should add the variables", function()
			local prepState = WatchReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))

			local tokenizedValue1 = "1"
			local tokenizedValue2 = "2"
			local varData1 = {
				name = "AddRootVariables Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}

			local varData2 = {
				name = "AddRootVariables Test2",
				path = tokenizedValue2,
				scope = ScopeEnum.Local,
				value = "somePreview2",
				dataType = "string",
			}

			local vars = {
				[1] = VariableRow.fromData(varData1),
				[2] = VariableRow.fromData(varData2),
			}

			local state = WatchReducer(prepState, AddRootVariables(stepStateBundle, vars))
			expect(#state.stateTokenToRoots[defaultDebuggerToken][2][2].Variables).to.equal(2)
			expect(state.stateTokenToRoots[defaultDebuggerToken][2][2].Variables[1]).to.equal(tokenizedValue1)
			expect(state.stateTokenToRoots[defaultDebuggerToken][2][2].Variables[2]).to.equal(tokenizedValue2)
			expect(state.stateTokenToRoots[defaultDebuggerToken][2][2].Watches).to.be.ok()
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue1].nameColumn).to.equal(varData1.name)
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue2].nameColumn).to.equal(varData2.name)
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should preserve immutability", function()
			local prepState = WatchReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))

			local tokenizedValue1 = "1"
			local tokenizedValue2 = "2"
			local varData1 = {
				name = "AddRootVariables Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}
			local varData2 = {
				name = "AddRootVariables Test2",
				path = tokenizedValue2,
				scope = ScopeEnum.Local,
				value = "somePreview2",
				dataType = "string",
			}
			local vars = {
				[1] = VariableRow.fromData(varData1),
				[2] = VariableRow.fromData(varData2),
			}
			
			local immutabilityPreserved = testImmutability(WatchReducer, AddRootVariables(stepStateBundle, vars), prepState)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(AddChildVariables.name, function()
		it("should add the variables", function()
			local prepState = WatchReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))

			local tokenizedValue1 = "1"
			local tokenizedValue2 = "2"
			local varData1 = {
				name = "AddChildVariables Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}

			local varData2 = {
				name = "AddChildVariables Test2",
				path = tokenizedValue2,
				scope = ScopeEnum.Local,
				value = "somePreview2",
				dataType = "string",
			}

			local vars1 = {
				[1] = VariableRow.fromData(varData1),
			}

			local vars2 = {
				[1] = VariableRow.fromData(varData2),
			}

			local prepState2 = WatchReducer(prepState, AddRootVariables(stepStateBundle, vars1))
			local state = WatchReducer(prepState2, AddChildVariables(stepStateBundle, tokenizedValue1, vars2))

			expect(#state.stateTokenToRoots[defaultDebuggerToken][2][2].Variables).to.equal(1)
			expect(state.stateTokenToRoots[defaultDebuggerToken][2][2].Variables[1]).to.equal(tokenizedValue1)
			expect(state.stateTokenToRoots[defaultDebuggerToken][2][2].Watches).to.be.ok()
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue1].nameColumn).to.equal(varData1.name)
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue1].childPaths[1]).to.equal(tokenizedValue2)
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue2].nameColumn).to.equal(varData2.name)
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should preserve immutability", function()
			local prepState = WatchReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))

			local tokenizedValue1 = "1"
			local tokenizedValue2 = "2"

			local varData1 = {
				name = "AddChildVariables Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}
			local varData2 = {
				name = "AddChildVariables Test2",
				path = tokenizedValue2,
				scope = ScopeEnum.Local,
				value = "somePreview2",
				dataType = "string",
			}
			local vars1 = {
				[1] = VariableRow.fromData(varData1),
			}

			local vars2 = {
				[1] = VariableRow.fromData(varData2),
			}

			local prepState2 = WatchReducer(prepState, AddRootVariables(stepStateBundle, vars1))

			local immutabilityPreserved = testImmutability(WatchReducer, AddChildVariables(stepStateBundle, tokenizedValue1, vars2), prepState2)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(SimPaused.name, function() 
		it("should add empty data to state map", function()
			local state = WatchReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))
			expect(state).to.be.ok()
			expect(state.stateTokenToRoots).to.be.ok()
			expect(state.stateTokenToRoots[defaultDebuggerToken]).to.be.ok()
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(WatchReducer, SimPaused)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
	
	describe(SetTab.name, function() 
		it("should update the current tab", function()
			local currentTab = TableTab.Watches
			local state = WatchReducer(nil, SetTab(currentTab))

			expect(state).to.be.ok()
			expect(#state.currentTab).to.be.ok()
			expect(state.currentTab).to.equal(currentTab)
		end)

		it("should preserve immutability", function()
			local currentTab = TableTab.Watches
			local immutabilityPreserved = testImmutability(WatchReducer, SetTab(currentTab))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(ScopeFilterChange.name, function() 
		it("should update the enabled scopes", function()
			local state = WatchReducer(nil, ScopeFilterChange({"Local", "Global"}))
			
			expect(state).to.be.ok()
			expect(state.stateTokenToRoots).to.be.ok()
			expect(#state.stateTokenToRoots).to.equal(0)
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(2)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(WatchReducer, ScopeFilterChange({"Local", "Global"}))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(SetVariableExpanded.name, function() 
		it("should be able to update root item", function()
			local prepState = WatchReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))

			local tokenizedValue1 = "1"
			local tokenizedValue2 = "2"

			local varData1 = {
				name = "SetVariableExpanded Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}
			local varData2 = {
				name = "SetVariableExpanded Test2",
				path = tokenizedValue2,
				scope = ScopeEnum.Local,
				value = "somePreview2",
				dataType = "string",
			}
			local vars = {
				[1] = VariableRow.fromData(varData1),
				[2] = VariableRow.fromData(varData2),
			}
			
			local prepState2 = WatchReducer(prepState, AddRootVariables(stepStateBundle, vars))
			local state = WatchReducer(prepState2, SetVariableExpanded(tokenizedValue1, true))
			expect(state).to.be.ok()
			expect(state.pathToExpansionState[tokenizedValue1]).to.equal(true)
			expect(state.stateTokenToRoots).to.be.ok()
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should be able to update child item", function()
			local prepState = WatchReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))

			local tokenizedValue1 = "1"
			local tokenizedValue2 = tokenizedValue1 .. Constants.SeparationToken .. "2"

			local varData1 = {
				name = "SetVariableExpanded Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}
			local varData2 = {
				name = "SetVariableExpanded Test2",
				path = tokenizedValue2,
				scope = ScopeEnum.Local,
				value = "somePreview2",
				dataType = "string",
			}
			local vars1 = {
				[1] = VariableRow.fromData(varData1),
			}

			local vars2 = {
				[1] = VariableRow.fromData(varData2),
			}
			
			local prepState2 = WatchReducer(prepState, AddRootVariables(stepStateBundle, vars1))
			local prepState3 = WatchReducer(prepState2, AddChildVariables(stepStateBundle, tokenizedValue1, vars2))

			local state = WatchReducer(prepState3, SetVariableExpanded(tokenizedValue2, true))
			expect(state).to.be.ok()
			expect(state.pathToExpansionState[tokenizedValue1]).to.equal(nil)
			expect(state.pathToExpansionState[tokenizedValue2]).to.equal(true)
			expect(state.stateTokenToRoots).to.be.ok()
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should preserve immutability", function()
			local prepState = WatchReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))
			
			local tokenizedValue1 = "1"
			local tokenizedValue2 = "2"

			local varData1 = {
				name = "SetVariableExpanded Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}
			local varData2 = {
				name = "SetVariableExpanded Test2",
				path = tokenizedValue2,
				scope = ScopeEnum.Local,
				value = "somePreview2",
				dataType = "string",
			}
			local vars = {
				[1] = VariableRow.fromData(varData1),
				[2] = VariableRow.fromData(varData2),
			}
			
			local prepState2 = WatchReducer(prepState, AddRootVariables(stepStateBundle, vars))

			local immutabilityPreserved = testImmutability(WatchReducer, SetVariableExpanded({"Local", "Global"}), prepState2)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(SetVariablesScopeFilteredOut .name, function() 
		it("should be able to update root item", function()
			local prepState = WatchReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))

			local tokenizedValue1 = "1"
			local tokenizedValue2 = "2"

			local varData1 = {
				name = "SetVariablesScopeFilteredOut Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}
			local varData2 = {
				name = "SetVariablesScopeFilteredOut Test2",
				path = tokenizedValue2,
				scope = ScopeEnum.Local,
				value = "somePreview2",
				dataType = "string",
			}
			local vars = {
				[1] = VariableRow.fromData(varData1),
				[2] = VariableRow.fromData(varData2),
			}
			
			local prepState2 = WatchReducer(prepState, AddRootVariables(stepStateBundle, vars))
			local state = WatchReducer(prepState2, SetVariablesScopeFilteredOut(stepStateBundle, {[tokenizedValue1] = true}, true))
			expect(state).to.be.ok()
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue1].scopeFilteredOut).to.equal(true)
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue2].scopeFilteredOut).to.equal(false)
			expect(state.stateTokenToRoots).to.be.ok()
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should be able to update child item", function()
			local prepState = WatchReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))

			local tokenizedValue1 = "1"
			local tokenizedValue2 = tokenizedValue1 .. Constants.SeparationToken .. "2"

			local varData1 = {
				name = "SetVariablesScopeFilteredOut Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}
			local varData2 = {
				name = "SetVariablesScopeFilteredOut Test2",
				path = tokenizedValue2,
				scope = ScopeEnum.Local,
				value = "somePreview2",
				dataType = "string",
			}
			local vars1 = {
				[1] = VariableRow.fromData(varData1),
			}

			local vars2 = {
				[1] = VariableRow.fromData(varData2),
			}
			
			local prepState2 = WatchReducer(prepState, AddRootVariables(stepStateBundle, vars1))
			local prepState3 = WatchReducer(prepState2, AddChildVariables(stepStateBundle, tokenizedValue1, vars2))

			local state = WatchReducer(prepState3, SetVariablesScopeFilteredOut(stepStateBundle, {[tokenizedValue2] = true}, true))
			expect(state).to.be.ok()
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue1].scopeFilteredOut).to.equal(false)
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue2].scopeFilteredOut).to.equal(true)
			expect(state.stateTokenToRoots).to.be.ok()
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should preserve immutability", function()
			local prepState = WatchReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))
			
			local tokenizedValue1 = "1"
			local tokenizedValue2 = "2"

			local varData1 = {
				name = "SetVariablesScopeFilteredOut Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}
			local varData2 = {
				name = "SetVariablesScopeFilteredOut Test2",
				path = tokenizedValue2,
				scope = ScopeEnum.Local,
				value = "somePreview2",
				dataType = "string",
			}
			local vars = {
				[1] = VariableRow.fromData(varData1),
				[2] = VariableRow.fromData(varData2),
			}
			
			local prepState2 = WatchReducer(prepState, AddRootVariables(stepStateBundle, vars))

			local immutabilityPreserved = testImmutability(WatchReducer, SetVariablesScopeFilteredOut(stepStateBundle, {[tokenizedValue2] = true}, true), prepState2)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(SetVariablesTextFilteredOut .name, function()
		it("should be able to update root item", function()
			local prepState = WatchReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))

			local tokenizedValue1 = "1"
			local tokenizedValue2 = "2"

			local varData1 = {
				name = "SetVariablesTextFilteredOut Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}
			local varData2 = {
				name = "SetVariablesTextFilteredOut Test2",
				path = tokenizedValue2,
				scope = ScopeEnum.Local,
				value = "somePreview2",
				dataType = "string",
			}
			local vars = {
				[1] = VariableRow.fromData(varData1),
				[2] = VariableRow.fromData(varData2),
			}
			
			local prepState2 = WatchReducer(prepState, AddRootVariables(stepStateBundle, vars))
			local state = WatchReducer(prepState2, SetVariablesTextFilteredOut(stepStateBundle, {[tokenizedValue1] = true}, true))
			expect(state).to.be.ok()
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue1].textFilteredOut).to.equal(true)
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue2].textFilteredOut).to.equal(false)
			expect(state.stateTokenToRoots).to.be.ok()
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should be able to update child item", function()
			local prepState = WatchReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))

			local tokenizedValue1 = "1"
			local tokenizedValue2 = tokenizedValue1 .. Constants.SeparationToken .. "2"

			local varData1 = {
				name = "SetVariablesTextFilteredOut Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}
			local varData2 = {
				name = "SetVariablesTextFilteredOut Test2",
				path = tokenizedValue2,
				scope = ScopeEnum.Local,
				value = "somePreview2",
				dataType = "string",
			}
			local vars1 = {
				[1] = VariableRow.fromData(varData1),
			}

			local vars2 = {
				[1] = VariableRow.fromData(varData2),
			}
			
			local prepState2 = WatchReducer(prepState, AddRootVariables(stepStateBundle, vars1))
			local prepState3 = WatchReducer(prepState2, AddChildVariables(stepStateBundle, tokenizedValue1, vars2))

			local state = WatchReducer(prepState3, SetVariablesTextFilteredOut(stepStateBundle, {[tokenizedValue2] = true}, true))
			expect(state).to.be.ok()
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue1].textFilteredOut).to.equal(false)
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue2].textFilteredOut).to.equal(true)
			expect(state.stateTokenToRoots).to.be.ok()
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should preserve immutability", function()
			local prepState = WatchReducer(nil, SimPaused(defaultDebuggerToken, defaultThreadId))
			
			local tokenizedValue1 = "1"
			local tokenizedValue2 = "2"

			local varData1 = {
				name = "SetVariablesTextFilteredOut Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}
			local varData2 = {
				name = "SetVariablesTextFilteredOut Test2",
				path = tokenizedValue2,
				scope = ScopeEnum.Local,
				value = "somePreview2",
				dataType = "string",
			}
			local vars = {
				[1] = VariableRow.fromData(varData1),
				[2] = VariableRow.fromData(varData2),
			}
			
			local prepState2 = WatchReducer(prepState, AddRootVariables(stepStateBundle, vars))

			local immutabilityPreserved = testImmutability(WatchReducer, SetVariablesTextFilteredOut(stepStateBundle, {[tokenizedValue2] = true}, true), prepState2)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(SetExpansionTree.name, function() 
		it("should set the correct expanded tree", function()
			local expandedTree = {
				["Alex"] = true,
				["Austin"] = true,
				["Heesoo"] = true,
			}

			local isVariablesTab = true
			local state = WatchReducer(nil, SetExpansionTree(isVariablesTab, expandedTree))

			expect(state.expressionToExpansionState).to.be.ok()
			expect(state.expressionToExpansionState["Alex"]).to.equal(nil)
			expect(state.pathToExpansionState).to.be.ok()
			expect(state.pathToExpansionState["Alex"]).to.equal(true)
		end)

		it("should preserve immutability", function()
			local expandedTree = {
				["Alex"] = true,
				["Austin"] = true,
				["Heesoo"] = true,
			}

			local isVariablesTab = true

			local immutabilityPreserved = testImmutability(WatchReducer, SetExpansionTree(isVariablesTab, expandedTree))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
