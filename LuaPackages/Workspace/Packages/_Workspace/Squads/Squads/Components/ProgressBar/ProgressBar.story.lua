local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local Roact = dependencies.Roact
local ProgressBar = require(Squads.Components.ProgressBar.ProgressBar)
local llama = dependencies.llama

return {
	controls = {
		targetElapsedTime = 15,
	},
	stories = {
		ProgressBar = function(storyProps)
			return Roact.createElement("Frame", {
				Size = UDim2.fromScale(0.5, 1),
				BackgroundTransparency = 1,
			}, {
				Roact.createElement(
					ProgressBar,
					llama.Dictionary.join({
						targetElapsedTime = storyProps.controls.targetElapsedTime,
					}, storyProps)
				),
			})
		end,
	},
}
