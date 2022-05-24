local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

local Models = Plugin.Src.Models
local WatchRow = require(Models.Watch.WatchRow)
local StepStateBundle = require(Plugin.Src.Models.StepStateBundle)

export type Props = {
	stepStateBundle: StepStateBundle.StepStateBundle,
	watchRow: WatchRow.WatchRow,
}

return Action(
	script.Name,
	function(stepStateBundle: StepStateBundle.StepStateBundle, watchRow: WatchRow.WatchRow): Props
		return {
			stepStateBundle = stepStateBundle,
			watchRow = watchRow,
		}
	end
)
