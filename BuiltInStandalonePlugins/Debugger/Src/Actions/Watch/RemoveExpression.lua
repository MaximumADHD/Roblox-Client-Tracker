local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

local StepStateBundle = require(Plugin.Src.Models.StepStateBundle)

export type Props = {
	currentStepStateBundle : StepStateBundle.StepStateBundle,
	expression : string
}

return Action(script.Name, function(currentStepStateBundle : StepStateBundle.StepStateBundle, expression : string) : Props
	return {
		currentStepStateBundle = currentStepStateBundle,
		expression = expression
	}
end)
