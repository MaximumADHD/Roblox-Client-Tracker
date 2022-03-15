local Plugin = script.Parent.Parent.Parent.Parent

local Models = Plugin.Src.Models
local StepStateBundle = require(Models.StepStateBundle)

local Util = Plugin.Src.Util
local Constants = require(Util.Constants)
local WatchHelperFunctions = require(Util.WatchHelperFunctions)

local LazyLoadVariableThunk = require(Plugin.Src.Thunks.Watch.LazyLoadVariable)

return function(variablePath : string, stepStateBundle : StepStateBundle.StepStateBundle,
	isVariablesTab : boolean, debuggerConnection)
	return function(store, contextItems)
		if not debuggerConnection then
			return
		end
		local targetVar = WatchHelperFunctions.getDebuggerVariableFromSplitPath(variablePath, debuggerConnection)
		if not targetVar then
			return
		end
		for _, childVar in ipairs(targetVar:GetChildren()) do
			if childVar.VariableId ~= 0 and not childVar.Populated then
				local childPath = variablePath .. Constants.SeparationToken .. tostring(childVar.VariableId)
				store:dispatch(LazyLoadVariableThunk(childPath, stepStateBundle, isVariablesTab, debuggerConnection))
			end
		end
	end
end
