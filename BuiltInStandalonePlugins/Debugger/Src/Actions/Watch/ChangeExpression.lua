local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	oldExpression : string,
	newExpression : string
}

return Action(script.Name, function(oldExpression : string, newExpression : string) : Props
	return {
		oldExpression = oldExpression,
		newExpression = newExpression,
	}
end)
