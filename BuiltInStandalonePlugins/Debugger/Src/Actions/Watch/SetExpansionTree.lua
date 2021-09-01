local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Path = string

export type Props = {
	isVariablesTab : bool,
	expansionMapping : {[Path] : bool},
}

return Action(script.Name, function(isVariablesTab : bool, expansionMapping : {[Path] : bool}) : Props
	return {
		isVariablesTab = isVariablesTab,
		expansionMapping = expansionMapping,
	}
end)
