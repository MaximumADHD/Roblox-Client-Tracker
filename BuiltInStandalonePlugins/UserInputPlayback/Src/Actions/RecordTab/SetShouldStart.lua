local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

export type Props = {
	shouldStart: boolean,
}

return Action(script.Name, function(shouldStart: boolean): Props
	return {
		shouldStart = shouldStart,
	}
end)
