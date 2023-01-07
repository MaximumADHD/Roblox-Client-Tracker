local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local FacePile = require(Squads.Components.FacePile)
local React = dependencies.React
local llama = dependencies.llama

return {
	controls = {
		avatarSize = 36,
		userCount = 3,
		overlapOffset = 8,
		borderWidth = 2,
		borderColor = "ffb7cb",
		faceCount = 3,
	},
	stories = {
		FacePile = function(storyProps)
			local users = {}
			for i = 1, storyProps.controls.userCount do
				table.insert(users, "1111111111")
			end
			return React.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, {
				React.createElement(
					FacePile,
					llama.Dictionary.join({
						avatarSize = storyProps.controls.avatarSize,
						users = users,
						overlapOffset = storyProps.controls.overlapOffset,
						borderWidth = storyProps.controls.borderWidth,
						borderColor = Color3.fromHex(storyProps.controls.borderColor),
						faceCount = storyProps.controls.faceCount,
					}, storyProps)
				),
			})
		end,
	},
}
