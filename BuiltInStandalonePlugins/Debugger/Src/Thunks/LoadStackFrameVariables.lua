local Plugin = script.Parent.Parent.Parent

local Models = Plugin.Src.Models
local StepStateBundle = require(Models.StepStateBundle)
local VariableRow = require(Plugin.Src.Models.Watch.VariableRow)

local Actions = Plugin.Src.Actions
local AddRootVariables = require(Actions.Watch.AddRootVariables)

local function convertStackFrameInstancesToVariableRows(stackFrame)
	local toReturn = {}
	
	-- these return a debuggerVar with the children being the actual variables
	local localVars = stackFrame.Locals:GetChildren()
	local globalVars = stackFrame.Globals:GetChildren()
	local upvalueVars = stackFrame.Upvalues:GetChildren()

	for _, localVar in ipairs(localVars) do
		table.insert(toReturn, VariableRow.fromInstance(localVar, nil, "Local"))
	end
	
	for _, globalVar in ipairs(globalVars) do
		table.insert(toReturn, VariableRow.fromInstance(globalVar, nil, "Global"))
	end
	for _, upvalueVar in ipairs(upvalueVars) do
		table.insert(toReturn, VariableRow.fromInstance(upvalueVar, nil, "Upvalue"))
	end
	return toReturn
end

return function(debuggerConnection, stackFrame, stepStateBundle : StepStateBundle.StepStateBundle)
	return function(store, contextItems)
		debuggerConnection:Populate(stackFrame, function ()
			local rootVars = convertStackFrameInstancesToVariableRows(stackFrame)
			store:dispatch(AddRootVariables(stepStateBundle, rootVars))
		end)
    end
end
