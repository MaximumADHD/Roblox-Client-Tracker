local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

local StepStateBundle = require(Plugin.Src.Models.StepStateBundle)

export type Props = {
	stepStateBundle : StepStateBundle.StepStateBundle,
	path : string,
	filteredOut : bool
}

return Action(script.Name, function(stepStateBundle : StepStateBundle.StepStateBundle, path : string, filteredOut : bool) : Props
	return {
		stepStateBundle = stepStateBundle,
		path = path,
		filteredOut = filteredOut
	}
end)
