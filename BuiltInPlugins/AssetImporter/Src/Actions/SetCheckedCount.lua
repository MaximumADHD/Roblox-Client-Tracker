local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

export type Props = {
	count: number
}

return Framework.Util.Action(script.Name, function(count: number)
	return {
		count = count,
	}
end)
