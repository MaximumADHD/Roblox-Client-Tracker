local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

export type CheckedMap = {[Instance] : any}

export type Props = {
	checked: CheckedMap
}

return Framework.Util.Action(script.Name, function(checked: CheckedMap)
	assert(typeof(checked) == "table", "checked should be a table")

	return {
		checked = checked,
	}
end)
