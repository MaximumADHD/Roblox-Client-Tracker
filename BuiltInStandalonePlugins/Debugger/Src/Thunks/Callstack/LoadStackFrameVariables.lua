local Plugin = script.Parent.Parent.Parent.Parent

local Models = Plugin.Src.Models
local ScopeEnum = require(Models.Watch.ScopeEnum)
local StepStateBundle = require(Models.StepStateBundle)
local VariableRow = require(Plugin.Src.Models.Watch.VariableRow)

local Actions = Plugin.Src.Actions
local AddRootVariables = require(Actions.Watch.AddRootVariables)
local AddChildVariables = require(Actions.Watch.AddChildVariables)

local function populateStackVariables(debuggerConnection, stackFrame, store, stepStateBundle, callback)
	local populatedScopes = {}
	local onScopePopulated = function(scope : ScopeEnum.Scope)
		populatedScopes[scope] = true 
		if populatedScopes[ScopeEnum.Local] and populatedScopes[ScopeEnum.Global] and populatedScopes[ScopeEnum.Upvalue] then
			callback()
		end 
	end
	
	debuggerConnection:Populate(stackFrame.Locals, function()
		local dst = stepStateBundle.debuggerStateToken
		if dst ~= store:getState().Common.debuggerConnectionIdToDST[dst.debuggerConnectionId] then
			return
		end
		onScopePopulated(ScopeEnum.Local)
	end)
	debuggerConnection:Populate(stackFrame.Globals, function()
		local dst = stepStateBundle.debuggerStateToken
		if dst ~= store:getState().Common.debuggerConnectionIdToDST[dst.debuggerConnectionId] then
			return
		end
		onScopePopulated(ScopeEnum.Global)
	end)
	debuggerConnection:Populate(stackFrame.Upvalues, function()
		local dst = stepStateBundle.debuggerStateToken
		if dst ~= store:getState().Common.debuggerConnectionIdToDST[dst.debuggerConnectionId] then
			return
		end
		onScopePopulated(ScopeEnum.Upvalue)
	end)
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
		table.insert(toReturn, VariableRow.fromInstance(localVar, nil, ScopeEnum.Local, filterText, listOfEnabledScopes))
	end
	for _, globalVar in ipairs(globalVars) do
		table.insert(toReturn, VariableRow.fromInstance(globalVar, nil, ScopeEnum.Global, filterText, listOfEnabledScopes))
	end
	for _, upvalueVar in ipairs(upvalueVars) do
		table.insert(toReturn, VariableRow.fromInstance(upvalueVar, nil, ScopeEnum.Upvalue, filterText, listOfEnabledScopes))
	end
	return toReturn
end

local function addChildVariableRowsForDebuggerVariable(store, stepStateBundle, debuggerVar, scope)
	local state = store:getState()
	local filterText = state.Watch.filterText
	local listOfEnabledScopes = state.Watch.listOfEnabledScopes

	local toReturn = {}
	local children = debuggerVar:GetChildren()
	if #children == 0 then
		return
	end
	for _, child in ipairs(children) do
		-- the table we pass in here is used to pass in columns from a parent VariableRow that we use to make the child row 
		local parentRow = VariableRow.fromData({["path"] = tostring(debuggerVar.VariableId),["scope"] = scope })
		table.insert(toReturn, VariableRow.fromInstance(child, parentRow, nil, filterText, listOfEnabledScopes))
	end
	store:dispatch(AddChildVariables(stepStateBundle, tostring(debuggerVar.VariableId), toReturn))
end

local function addRootVariableRowChildren(store, stepStateBundle, debuggerConnection, debuggerVarList, scope)
	for _, debuggerVar in ipairs(debuggerVarList) do
		if debuggerVar.VariableId ~=0 and not debuggerVar.Populated then
			debuggerConnection:Populate(debuggerVar, function()
				local dst = stepStateBundle.debuggerStateToken
				if dst ~= store:getState().Common.debuggerConnectionIdToDST[dst.debuggerConnectionId] then
					return
				end
				addChildVariableRowsForDebuggerVariable(store, stepStateBundle, debuggerVar, scope)
			end)
		end
	end
end

return function(debuggerConnection, stackFrame, stepStateBundle : StepStateBundle.StepStateBundle)
	return function(store, contextItems)
		debuggerConnection:Populate(stackFrame, function ()
			local dst = stepStateBundle.debuggerStateToken
			if dst ~= store:getState().Common.debuggerConnectionIdToDST[dst.debuggerConnectionId] then
				return
			end
			populateStackVariables(debuggerConnection, stackFrame, store, stepStateBundle, function()
				local rootVars = convertStackFrameInstancesToVariableRows(stackFrame, store)
				store:dispatch(AddRootVariables(stepStateBundle, rootVars))
				addRootVariableRowChildren(store, stepStateBundle, debuggerConnection, stackFrame.Locals:GetChildren(), ScopeEnum.Local)
				addRootVariableRowChildren(store, stepStateBundle, debuggerConnection, stackFrame.Globals:GetChildren(), ScopeEnum.Global)
				addRootVariableRowChildren(store, stepStateBundle, debuggerConnection, stackFrame.Upvalues:GetChildren(), ScopeEnum.Upvalue)
			end)
		end)
    end
end
