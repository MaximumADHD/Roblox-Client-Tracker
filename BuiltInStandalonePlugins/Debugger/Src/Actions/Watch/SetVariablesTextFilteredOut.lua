local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

local StepStateBundle = require(Plugin.Src.Models.StepStateBundle)

export type Path = string

export type Props = {
	stepStateBundle : StepStateBundle.StepStateBundle,
	textFilterMap : {[Path] : bool}
}

return Action(script.Name, function(stepStateBundle : StepStateBundle.StepStateBundle, textFilterMap : {[Path] : bool}) : Props
	return {
		stepStateBundle = stepStateBundle,
		textFilterMap = textFilterMap
	}
end)
