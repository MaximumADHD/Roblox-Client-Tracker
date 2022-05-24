local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	expression: string,
}

return Action(script.Name, function(expression: string): Props
	return {
		expression = expression,
	}
end)
