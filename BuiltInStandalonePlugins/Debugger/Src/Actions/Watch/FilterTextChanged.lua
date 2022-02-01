local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

export type Props = {
	filterText : string
}

return Action(script.Name, function(filterText : string) : Props
	return {
		filterText = filterText
	}
end)
