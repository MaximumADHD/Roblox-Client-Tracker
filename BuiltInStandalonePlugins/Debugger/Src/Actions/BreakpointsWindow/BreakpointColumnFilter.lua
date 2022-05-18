local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	listOfEnabledColumns : {string}
}

return Action(script.Name, function(listOfEnabledColumns : {string})
	return {
		listOfEnabledColumns = listOfEnabledColumns
	}
end)
