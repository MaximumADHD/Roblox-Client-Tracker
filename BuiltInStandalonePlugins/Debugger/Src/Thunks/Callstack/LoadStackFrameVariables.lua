local Plugin = script.Parent.Parent.Parent.Parent

local Models = Plugin.Src.Models
local ScopeEnum = require(Models.Watch.ScopeEnum)
local StepStateBundle = require(Models.StepStateBundle)
local VariableRow = require(Plugin.Src.Models.Watch.VariableRow)

local Actions = Plugin.Src.Actions
local AddRootVariables = require(Actions.Watch.AddRootVariables)
local AddChildVariables = require(Actions.Watch.AddChildVariables)
local Constants = require(Plugin.Src.Util.Constants)

local addChildVariableRowsForDebuggerVariable, addRootVariableRowChildren

function addChildVariableRowsForDebuggerVariable(store, stepStateBundle, debuggerVar, scope, debuggerConnection, parentPrefix)
	local state = store:getState()
	local filterText = state.Watch.filterText
	local listOfEnabledScopes = state.Watch.listOfEnabledScopes

	local toReturn = {}
	local visibleChildren = {}
	local parentRow = nil
	local children = debuggerVar:GetChildren()
	if #children == 0 then
		return
	end

	-- the parentrow table we pass in here is used to pass in columns from a parent VariableRow that we use to make the child row
	local parentName = if parentPrefix == "" then debuggerVar.Name else (parentPrefix .. Constants.SeparationToken .. debuggerVar.Name)
	local flattenedTree = state.Watch.stateTokenToFlattenedTree[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber]
	parentRow = flattenedTree.Variables[parentName]

	for _, child in ipairs(children) do
		local childVar = VariableRow.fromInstance(child, parentRow, nil, filterText, listOfEnabledScopes)
		if state.Watch.pathToExpansionState[parentRow.pathColumn] then
			--parent was expanded, so the children will be visible and need its children loaded
			table.insert(visibleChildren, child)
		end
		table.insert(toReturn, childVar)
	end
	store:dispatch(AddChildVariables(stepStateBundle, parentRow.pathColumn, toReturn))

	-- Load the children variables whose parents were previously expanded
	addRootVariableRowChildren(store, stepStateBundle, debuggerConnection, visibleChildren, scope, parentRow.pathColumn)
end

function addRootVariableRowChildren(store, stepStateBundle, debuggerConnection, debuggerVarList, scope, parentPrefix)
	for _, debuggerVar in ipairs(debuggerVarList) do
		if debuggerVar.VariableId ~= 0 then
			assert(not debuggerVar.Populated)
			debuggerConnection:Populate(debuggerVar, function()
				local dst = stepStateBundle.debuggerStateToken
				if dst ~= store:getState().Common.debuggerConnectionIdToDST[dst.debuggerConnectionId] then
					return
				end
				addChildVariableRowsForDebuggerVariable(store, stepStateBundle, debuggerVar, scope, debuggerConnection, parentPrefix)
			end)
		end
	end
end

local function convertStackFrameInstancesToVariableRows(stackFrame, store)
	local filterText = store:getState().Watch.filterText
	local listOfEnabledScopes = store:getState().Watch.listOfEnabledScopes

	-- these return a debuggerVar with the children being the actual variables
	local localVars = stackFrame.Locals:GetChildren()
	local globalVars = stackFrame.Globals:GetChildren()
	local upvalueVars = stackFrame.Upvalues:GetChildren()

	local toReturn = {}
	for _, localVar in ipairs(localVars) do
		table.insert(
			toReturn,
			VariableRow.fromInstance(localVar, nil, ScopeEnum.Local, filterText, listOfEnabledScopes)
		)
	end
	for _, globalVar in ipairs(globalVars) do
		table.insert(
			toReturn,
			VariableRow.fromInstance(globalVar, nil, ScopeEnum.Global, filterText, listOfEnabledScopes)
		)
	end
	for _, upvalueVar in ipairs(upvalueVars) do
		table.insert(
			toReturn,
			VariableRow.fromInstance(upvalueVar, nil, ScopeEnum.Upvalue, filterText, listOfEnabledScopes)
		)
	end
	return toReturn
end

local function addRootVarsAndChildren(debuggerConnection, stackFrame, store, stepStateBundle)
	local rootVars = convertStackFrameInstancesToVariableRows(stackFrame, store)
	store:dispatch(AddRootVariables(stepStateBundle, rootVars))
	addRootVariableRowChildren(
		store,
		stepStateBundle,
		debuggerConnection,
		stackFrame.Locals:GetChildren(),
		ScopeEnum.Local,
		""
	)
	addRootVariableRowChildren(
		store,
		stepStateBundle,
		debuggerConnection,
		stackFrame.Globals:GetChildren(),
		ScopeEnum.Global,
		""
	)
	addRootVariableRowChildren(
		store,
		stepStateBundle,
		debuggerConnection,
		stackFrame.Upvalues:GetChildren(),
		ScopeEnum.Upvalue,
		""
	)
end

local function onScopePopulated(
	scope: ScopeEnum.Scope,
	populatedScopes,
	debuggerConnection,
	stackFrame,
	store,
	stepStateBundle
)
	populatedScopes[scope] = true
	if
		populatedScopes[ScopeEnum.Local]
		and populatedScopes[ScopeEnum.Global]
		and populatedScopes[ScopeEnum.Upvalue]
	then
		addRootVarsAndChildren(debuggerConnection, stackFrame, store, stepStateBundle)
	end
end

local function populateStackVariables(debuggerConnection, stackFrame, store, stepStateBundle)
	local populatedScopes = {}

	debuggerConnection:Populate(stackFrame.Locals, function()
		local dst = stepStateBundle.debuggerStateToken
		if dst ~= store:getState().Common.debuggerConnectionIdToDST[dst.debuggerConnectionId] then
			return
		end
		onScopePopulated(ScopeEnum.Local, populatedScopes, debuggerConnection, stackFrame, store, stepStateBundle)
	end)
	debuggerConnection:Populate(stackFrame.Globals, function()
		local dst = stepStateBundle.debuggerStateToken
		if dst ~= store:getState().Common.debuggerConnectionIdToDST[dst.debuggerConnectionId] then
			return
		end
		onScopePopulated(ScopeEnum.Global, populatedScopes, debuggerConnection, stackFrame, store, stepStateBundle)
	end)
	debuggerConnection:Populate(stackFrame.Upvalues, function()
		local dst = stepStateBundle.debuggerStateToken
		if dst ~= store:getState().Common.debuggerConnectionIdToDST[dst.debuggerConnectionId] then
			return
		end
		onScopePopulated(ScopeEnum.Upvalue, populatedScopes, debuggerConnection, stackFrame, store, stepStateBundle)
	end)
end

return function(debuggerConnection, stackFrame, stepStateBundle: StepStateBundle.StepStateBundle)
	return function(store, contextItems)
		if not stackFrame.Populated then
			debuggerConnection:Populate(stackFrame, function()
				local dst = stepStateBundle.debuggerStateToken
				if dst ~= store:getState().Common.debuggerConnectionIdToDST[dst.debuggerConnectionId] then
					return
				end
				populateStackVariables(debuggerConnection, stackFrame, store, stepStateBundle)
			end)
		end
	end
end
