local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	scriptRefGuid : string,
	fileName : string,
}

return Action(script.Name, function(scriptRefGuid : string, fileName : string) : Props
	return {
		scriptRefGuid = scriptRefGuid,
		fileName = fileName,
	}
end)
