local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

export type Props = {
	touchEnabled: boolean,
	context: string,
}

return Action(script.Name, function(enabled: boolean, context: string): Props
	return {
		touchEnabled = enabled,
		context = context,
	}
end)
