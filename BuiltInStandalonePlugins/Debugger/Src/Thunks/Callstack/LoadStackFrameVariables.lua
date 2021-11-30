local Plugin = script.Parent.Parent.Parent.Parent

local Models = Plugin.Src.Models
local ScopeEnum = require(Models.Watch.ScopeEnum)
local StepStateBundle = require(Models.StepStateBundle)
local VariableRow = require(Plugin.Src.Models.Watch.VariableRow)

local Actions = Plugin.Src.Actions
local AddRootVariables = require(Actions.Watch.AddRootVariables)

local function populateStackVariables(debuggerConnection, stackFrame, callback)
	local populatedScopes = {}
	local onScopePopulated = function(scope : ScopeEnum.Scope)
		populatedScopes[scope] = true 
		if populatedScopes[ScopeEnum.Local] and populatedScopes[ScopeEnum.Global] and populatedScopes[ScopeEnum.Upvalue] then
			callback()
		end 
	end
	
	debuggerConnection:Populate(stackFrame.Locals, function()
		onScopePopulated(ScopeEnum.Local)
	end)
	debuggerConnection:Populate(stackFrame.Globals, function()
		onScopePopulated(ScopeEnum.Global)
	end)
	debuggerConnection:Populate(stackFrame.Upvalues, function()
		onScopePopulated(ScopeEnum.Upvalue)
	end)
end

local function convertStackFrameInstancesToVariableRows(stackFrame)
	local toReturn = {}
	
	-- these return a debuggerVar with the children being the actual variables
	local localVars = stackFrame.Locals:GetChildren()
	local globalVars = stackFrame.Globals:GetChildren()
	local upvalueVars = stackFrame.Upvalues:GetChildren()

	for _, localVar in ipairs(localVars) do
		table.insert(toReturn, VariableRow.fromInstance(localVar, nil, ScopeEnum.Local))
	end
	for _, globalVar in ipairs(globalVars) do
		table.insert(toReturn, VariableRow.fromInstance(globalVar, nil, ScopeEnum.Global))
	end
	for _, upvalueVar in ipairs(upvalueVars) do
		table.insert(toReturn, VariableRow.fromInstance(upvalueVar, nil, ScopeEnum.Upvalue))
	end
	return toReturn
end

return function(debuggerConnection, stackFrame, stepStateBundle : StepStateBundle.StepStateBundle)
	return function(store, contextItems)
		debuggerConnection:Populate(stackFrame, function ()
			populateStackVariables(debuggerConnection, stackFrame, function() 
				local rootVars = convertStackFrameInstancesToVariableRows(stackFrame)
				store:dispatch(AddRootVariables(stepStateBundle, rootVars))
			end)
		end)
    end
end
