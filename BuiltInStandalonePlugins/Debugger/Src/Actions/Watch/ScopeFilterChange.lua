local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Props = {
	listOfEnabledScopes : {string}
}

return Action(script.Name, function(listOfEnabledScopes : {string})
	return {
		listOfEnabledScopes = listOfEnabledScopes
	}
end)
