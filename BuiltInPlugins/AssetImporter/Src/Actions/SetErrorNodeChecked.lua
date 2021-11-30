local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

export type Props = {
	isErrorChecked: boolean
}

return Framework.Util.Action(script.Name, function(isErrorChecked: boolean)
	return {
		isErrorChecked = isErrorChecked,
	}
end)
