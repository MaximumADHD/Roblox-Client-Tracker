local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	scriptRefGuid: string,
	lineNumber: number,
	source: string,
}

return Action(script.Name, function(scriptRefGuid: string, lineNumber: number, source: string): Props
	return {
		scriptRefGuid = scriptRefGuid,
		lineNumber = lineNumber,
		source = source,
	}
end)
