local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

export type Props = {
	filename: string
}

return Framework.Util.Action(script.Name, function(filename: string)
	return {
		filename = filename,
	}
end)
