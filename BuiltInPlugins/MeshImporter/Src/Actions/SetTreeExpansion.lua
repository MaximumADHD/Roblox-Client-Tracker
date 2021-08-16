local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

export type ExpansionMap = {[Instance] : boolean}

export type Props = {
	expansion: ExpansionMap
}

return Framework.Util.Action(script.Name, function(expansion: ExpansionMap)
	assert(typeof(expansion) == "table", "expansion should be a table")

	return {
		expansion = expansion,
	}
end)
