local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Reducers = Plugin.Src.Reducers
local MainReducer = require(Reducers.MainReducer)
local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)

local Actions = Plugin.Src.Actions
local BreakpointHit = require(Actions.Common.BreakpointHit)
local AddRootVariables = require(Actions.Watch.AddRootVariables)
local FilterTextChanged = require(Actions.Watch.FilterTextChanged)
local ScopeFilterChange = require(Actions.Watch.ScopeFilterChange)

local Models = Plugin.Src.Models
local DebuggerStateToken = require(Models.DebuggerStateToken)
local ScopeEnum = require(Models.Watch.ScopeEnum)
local VariableRow = require(Models.Watch.VariableRow)
local StepStateBundle = require(Models.StepStateBundle)

local defaultDebuggerToken = DebuggerStateToken.fromData({session = 1, stepNumber = 1})
local stepStateBundle = StepStateBundle.ctor(defaultDebuggerToken, 2, 2)

local FilterWatchDataThunk = require(script.Parent.FilterWatchDataThunk)

return function()
	it("should return its expected default state", function()
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		expect(store:getState()).to.be.ok()
	end)

	it("should accurately reflect filter text changes", function()
		local tokenizedValue1 = "SetVariableTextFilteredOut Test1"
		local tokenizedValue2 = "SetVariableTextFilteredOut Test2"
		local varData1 = {
			name = "SetVariableTextFilteredOut Test1",
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
				
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		local filterText = "Test2"
		store:dispatch(BreakpointHit(defaultDebuggerToken))
		store:dispatch(AddRootVariables(stepStateBundle, vars))
		store:dispatch(FilterTextChanged(filterText))
		store:dispatch(FilterWatchDataThunk(2, 2))
		
		local state = store:getState()
		expect(state.Watch.filterText).to.be.equal(filterText)
		expect(state.Watch.stateTokenToFlattenedTree).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[defaultDebuggerToken][2][2]).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue1].scopeFilteredOut).to.be.equal(false)
		expect(state.Watch.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue1].textFilteredOut).to.be.equal(true)
		expect(state.Watch.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue2].scopeFilteredOut).to.be.equal(false)
		expect(state.Watch.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue2].textFilteredOut).to.be.equal(false)
	end)
	
	it("should accurately reflect filter scope changes", function()
		local tokenizedValue1 = "SetVariableTextFilteredOut Test1"
		local tokenizedValue2 = "SetVariableTextFilteredOut Test2"
		local varData1 = {
			name = "SetVariableTextFilteredOut Test1",
			path = tokenizedValue1,
			scope = ScopeEnum.Local,
			value = "somePreview",
			dataType = "string",
		}
		local varData2 = {
			name = "SetVariableTextFilteredOut Test2",
			path = tokenizedValue2,
			scope = ScopeEnum.Global,
			value = "somePreview2",
			dataType = "string",
		}
		local vars = {
			[1] = VariableRow.fromData(varData1),
			[2] = VariableRow.fromData(varData2),
		}

		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		local filterScopes = {
			"Upvalue",
			"Global",
		}
		store:dispatch(BreakpointHit(defaultDebuggerToken))
		store:dispatch(AddRootVariables(stepStateBundle, vars))
		store:dispatch(ScopeFilterChange(filterScopes))
		store:dispatch(FilterWatchDataThunk(2, 2))

		local state = store:getState()
		expect(state.Watch.stateTokenToFlattenedTree).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[defaultDebuggerToken][2][2]).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue1].scopeFilteredOut).to.be.equal(true)
		expect(state.Watch.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue1].textFilteredOut).to.be.equal(false)
		expect(state.Watch.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue2].scopeFilteredOut).to.be.equal(false)
		expect(state.Watch.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue2].textFilteredOut).to.be.equal(false)
	end)
	
	it("should accurately reflect both filter text and filter scope changes", function()
		local tokenizedValue1 = "SetVariableTextFilteredOut Test1"
		local tokenizedValue2 = "SetVariableTextFilteredOut Test2"
		local varData1 = {
			name = "SetVariableTextFilteredOut Test1",
			path = tokenizedValue1,
			scope = ScopeEnum.Global,
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

		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		local filterText = "Test2"
		local filterScopes = {
			"Upvalue",
			"Global",
		}
		store:dispatch(BreakpointHit(defaultDebuggerToken))
		store:dispatch(AddRootVariables(stepStateBundle, vars))
		store:dispatch(FilterTextChanged(filterText))
		store:dispatch(ScopeFilterChange(filterScopes))
		store:dispatch(FilterWatchDataThunk(2, 2))

		local state = store:getState()
		expect(state.Watch.stateTokenToFlattenedTree).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[defaultDebuggerToken][2][2]).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue1].scopeFilteredOut).to.be.equal(false)
		expect(state.Watch.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue1].textFilteredOut).to.be.equal(true)
		expect(state.Watch.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue2].scopeFilteredOut).to.be.equal(true)
		expect(state.Watch.stateTokenToFlattenedTree[defaultDebuggerToken][2][2].Variables[tokenizedValue2].textFilteredOut).to.be.equal(false)
	end)
end
