local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

export type Props = {
	keyboardEnabled: boolean,
	context: string,
}

return Action(script.Name, function(enabled: boolean, context: string): Props
	return {
		keyboardEnabled = enabled,
		context = context,
	}
end)
