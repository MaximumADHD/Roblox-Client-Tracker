local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Framework = require(Plugin.Packages.Framework)
local TestHelpers = Framework.TestHelpers
local testImmutability = TestHelpers.testImmutability

local Actions = Plugin.Src.Actions
local Models = Plugin.Src.Models
local ScopeFilterChange = require(Actions.Watch.ScopeFilterChange)
local FilterTextChanged = require(Actions.Watch.FilterTextChanged)
local SetVariableScopeFilteredOut = require(Actions.Watch.SetVariableScopeFilteredOut)
local SetVariableTextFilteredOut = require(Actions.Watch.SetVariableTextFilteredOut)
local SetVariableExpanded = require(Actions.Watch.SetVariableExpanded)
local AddRootVariables = require(Actions.Watch.AddRootVariables)
local AddChildVariables = require(Actions.Watch.AddChildVariables)
local BreakpointHit = require(Actions.Common.BreakpointHit)

local WatchReducer = require(script.Parent.Watch)
local ScopeEnum = require(Models.Watch.ScopeEnum)
local VariableRow = require(Models.Watch.VariableRow)
local DebuggerStateToken = require(Models.DebuggerStateToken)
local StepStateBundle = require(Models.StepStateBundle)

local separationToken = "_"

local defaultDebuggerToken = DebuggerStateToken.fromData({session = 1, stepNumber = 1})
local stepStateBundle = StepStateBundle.ctor(defaultDebuggerToken, 2, 2)

return function()
	it("should return its expected default state", function()
		local watchReducer = Rodux.Store.new(WatchReducer)
		expect(watchReducer:getState()).to.be.ok()
		expect(watchReducer:getState().stateTokenToRoots).to.be.ok()
		expect(watchReducer:getState().filterText).to.equal("")
		expect(#watchReducer:getState().listOfEnabledScopes).to.equal(3)
	end)

	describe(AddRootVariables.name, function()
		it("should add the variables", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))

			local tokenizedValue1 = "AddRootVariables Test"
			local tokenizedValue2 = "AddRootVariables Test2"
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
			expect(#state.filterText).to.be.ok()
			expect(state.filterText).to.equal("")
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should preserve immutability", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))

			local tokenizedValue1 = "AddRootVariables Test"
			local tokenizedValue2 = "AddRootVariables Test2"
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
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))

			local tokenizedValue1 = "AddChildVariables Test"
			local tokenizedValue2 = "AddChildVariables Test2"
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
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue1].children[1]).to.equal(tokenizedValue2)
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue2].nameColumn).to.equal(varData2.name)
			expect(#state.filterText).to.be.ok()
			expect(state.filterText).to.equal("")
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should preserve immutability", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))

			local tokenizedValue1 = "AddChildVariables Test"
			local tokenizedValue2 = "AddChildVariables Test2"

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

	describe(BreakpointHit.name, function() 
		it("should add empty data to state map", function()
			local state = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))
			expect(state).to.be.ok()
			expect(state.stateTokenToRoots).to.be.ok()
			expect(state.stateTokenToRoots[defaultDebuggerToken]).to.be.ok()
			expect(#state.filterText).to.be.ok()
			expect(state.filterText).to.equal("")
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(WatchReducer, BreakpointHit)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(FilterTextChanged.name, function() 
		it("should update the filter string", function()
			local filterText = "test filter string"
			local state = WatchReducer(nil, FilterTextChanged(filterText))
			
			expect(state).to.be.ok()
			expect(state.stateTokenToRoots).to.be.ok()
			expect(#state.stateTokenToRoots).to.equal(0)
			expect(#state.filterText).to.be.ok()
			expect(state.filterText).to.equal(filterText)
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should preserve immutability", function()
			local filterText = "test filter string"
			local immutabilityPreserved = testImmutability(WatchReducer, FilterTextChanged(filterText))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(ScopeFilterChange.name, function() 
		it("should update the enabled scopes", function()
			local state = WatchReducer(nil, ScopeFilterChange({"Local", "Global"}))
			
			expect(state).to.be.ok()
			expect(state.stateTokenToRoots).to.be.ok()
			expect(#state.stateTokenToRoots).to.equal(0)
			expect(#state.filterText).to.be.ok()
			expect(state.filterText).to.equal("")
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
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))

			local tokenizedValue1 = "SetVariableExpanded Test"
			local tokenizedValue2 = "SetVariableExpanded Test2"

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
			expect(#state.filterText).to.be.ok()
			expect(state.filterText).to.equal("")
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should be able to update child item", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))

			local tokenizedValue1 = "SetVariableExpanded Test"
			local tokenizedValue2 = tokenizedValue1 .. separationToken .. "SetVariableExpanded Test2"

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
			expect(#state.filterText).to.be.ok()
			expect(state.filterText).to.equal("")
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should preserve immutability", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))
			
			local tokenizedValue1 = "SetVariableExpanded Test"
			local tokenizedValue2 = "SetVariableExpanded Test2"

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

	describe(SetVariableScopeFilteredOut .name, function() 
		it("should be able to update root item", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))

			local tokenizedValue1 = "SetVariableScopeFilteredOut Test"
			local tokenizedValue2 = "SetVariableScopeFilteredOut Test2"

			local varData1 = {
				name = "SetVariableScopeFilteredOut Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}
			local varData2 = {
				name = "SetVariableScopeFilteredOut Test2",
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
			local state = WatchReducer(prepState2, SetVariableScopeFilteredOut(stepStateBundle, tokenizedValue1, true))
			expect(state).to.be.ok()
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue1].scopeFilteredOut).to.equal(true)
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue2].scopeFilteredOut).to.equal(false)
			expect(state.stateTokenToRoots).to.be.ok()
			expect(#state.filterText).to.be.ok()
			expect(state.filterText).to.equal("")
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should be able to update child item", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))

			local tokenizedValue1 = "SetVariableScopeFilteredOut Test"
			local tokenizedValue2 = tokenizedValue1 .. separationToken .. "SetVariableScopeFilteredOut Test2"

			local varData1 = {
				name = "SetVariableScopeFilteredOut Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}
			local varData2 = {
				name = "SetVariableScopeFilteredOut Test2",
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

			local state = WatchReducer(prepState3, SetVariableScopeFilteredOut(stepStateBundle, tokenizedValue2, true))
			expect(state).to.be.ok()
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue1].scopeFilteredOut).to.equal(false)
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue2].scopeFilteredOut).to.equal(true)
			expect(state.stateTokenToRoots).to.be.ok()
			expect(#state.filterText).to.be.ok()
			expect(state.filterText).to.equal("")
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should preserve immutability", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))
			
			local tokenizedValue1 = "SetVariableScopeFilteredOut Test"
			local tokenizedValue2 = "SetVariableScopeFilteredOut Test2"

			local varData1 = {
				name = "SetVariableScopeFilteredOut Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}
			local varData2 = {
				name = "SetVariableScopeFilteredOut Test2",
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

			local immutabilityPreserved = testImmutability(WatchReducer, SetVariableScopeFilteredOut(stepStateBundle, tokenizedValue2, true), prepState2)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(SetVariableTextFilteredOut .name, function() 
		it("should be able to update root item", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))

			local tokenizedValue1 = "SetVariableTextFilteredOut Test"
			local tokenizedValue2 = "SetVariableTextFilteredOut Test2"

			local varData1 = {
				name = "SetVariableTextFilteredOut Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}
			local varData2 = {
				name = "SetVariableTextFilteredOut Test2",
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
			local state = WatchReducer(prepState2, SetVariableTextFilteredOut(stepStateBundle, tokenizedValue1, true))
			expect(state).to.be.ok()
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue1].textFilteredOut).to.equal(true)
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue2].textFilteredOut).to.equal(false)
			expect(state.stateTokenToRoots).to.be.ok()
			expect(#state.filterText).to.be.ok()
			expect(state.filterText).to.equal("")
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should be able to update child item", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))

			local tokenizedValue1 = "SetVariableTextFilteredOut Test"
			local tokenizedValue2 = tokenizedValue1 .. separationToken .. "SetVariableTextFilteredOut Test2"

			local varData1 = {
				name = "SetVariableTextFilteredOut Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}
			local varData2 = {
				name = "SetVariableTextFilteredOut Test2",
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

			local state = WatchReducer(prepState3, SetVariableTextFilteredOut(stepStateBundle, tokenizedValue2, true))
			expect(state).to.be.ok()
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue1].textFilteredOut).to.equal(false)
			expect(state.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue2].textFilteredOut).to.equal(true)
			expect(state.stateTokenToRoots).to.be.ok()
			expect(#state.filterText).to.be.ok()
			expect(state.filterText).to.equal("")
			expect(#state.listOfEnabledScopes).to.be.ok()
			expect(#state.listOfEnabledScopes).to.equal(3)
			expect(#state.listOfExpressions).to.be.ok()
			expect(#state.listOfExpressions).to.equal(0)
		end)

		it("should preserve immutability", function()
			local prepState = WatchReducer(nil, BreakpointHit(defaultDebuggerToken))
			
			local tokenizedValue1 = "SetVariableTextFilteredOut Test"
			local tokenizedValue2 = "SetVariableTextFilteredOut Test2"

			local varData1 = {
				name = "SetVariableTextFilteredOut Test",
				path = tokenizedValue1,
				scope = ScopeEnum.Local,
				value = "somePreview",
				dataType = "string",
			}
			local varData2 = {
				name = "SetVariableTextFilteredOut Test2",
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

			local immutabilityPreserved = testImmutability(WatchReducer, SetVariableTextFilteredOut(stepStateBundle, tokenizedValue2, true), prepState2)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
