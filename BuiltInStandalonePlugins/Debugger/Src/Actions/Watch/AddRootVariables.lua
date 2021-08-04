local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

local Models = Plugin.Src.Models
local VariableRow = require(Models.Watch.VariableRow)
local DebuggerStateToken = require(Plugin.Src.Models.DebuggerStateToken)

export type Path = string

export type Props = {
	debuggerStateToken : DebuggerStateToken.DebuggerStateToken,
	threadId : number,
	frameNumber : number,
	tokenizedLists : {Path},
	newVarsMapping : {[Path] : VariableRow.VariableRow},
}

return Action(script.Name, function(debuggerStateToken : DebuggerStateToken.DebuggerStateToken, 
	threadId : number, frameNumber : number, newVars : {VariableRow.VariableRow}) : Props
	local tokenizedLists = {}
	local newVarsMapping = {}
	for index, variableRow in ipairs(newVars) do
		table.insert(tokenizedLists, variableRow.path)
		newVarsMapping[variableRow.path] = variableRow
	end

	return {
		debuggerStateToken = debuggerStateToken,
		threadId = threadId,
		frameNumber = frameNumber,
		tokenizedList = tokenizedLists,
		newVarsMapping = newVarsMapping
	}
end)
