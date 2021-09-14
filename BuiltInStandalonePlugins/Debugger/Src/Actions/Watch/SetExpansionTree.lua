local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Path = string

export type Props = {
	isVariablesTab : boolean,
	expansionMapping : {[Path] : boolean},
}

return Action(script.Name, function(isVariablesTab : boolean, expansionMapping : {[Path] : boolean}) : Props
	return {
		isVariablesTab = isVariablesTab,
		expansionMapping = expansionMapping,
	}
end)
