local Squads = script:FindFirstAncestor("Squads")
local SquadEnums = require(Squads.FloatingActionButton.Common.Enums)
local dependencies = require(Squads.dependencies)
local FabStatusText = require(Squads.FloatingActionButton.Components.FabStatusText)
local React = dependencies.React
local llama = dependencies.llama

return {
	controls = {},
	stories = {
		IdleFabStatusText = function(storyProps)
			return React.createElement("Frame", {
				Size = UDim2.fromOffset(320, 52),
				BackgroundTransparency = 1,
			}, {
				React.createElement(
					FabStatusText,
					llama.Dictionary.join({
						squadState = SquadEnums.SquadState.Idle.rawValue(),
					}, storyProps)
				),
			})
		end,
		GameInviteFabStatusText = function(storyProps)
			return React.createElement("Frame", {
				Size = UDim2.fromOffset(320, 52),
				BackgroundTransparency = 1,
			}, {
				React.createElement(
					FabStatusText,
					llama.Dictionary.join({
						squadState = SquadEnums.SquadState.GameInvite.rawValue(),
						experienceName = "Driving Simulator",
						inviter = {
							id = "1111111111",
							name = "User1",
						},
					}, storyProps)
				),
			})
		end,
		GamePendingFabStatusText = function(storyProps)
			return React.createElement("Frame", {
				Size = UDim2.fromOffset(320, 52),
				BackgroundTransparency = 1,
			}, {
				React.createElement(
					FabStatusText,
					llama.Dictionary.join({
						squadState = SquadEnums.SquadState.GamePending.rawValue(),
						experienceName = "Driving Simulator",
					}, storyProps)
				),
			})
		end,
		UserJoinFabStatusText = function(storyProps)
			return React.createElement("Frame", {
				Size = UDim2.fromOffset(320, 52),
				BackgroundTransparency = 1,
			}, {
				React.createElement(
					FabStatusText,
					llama.Dictionary.join({
						squadState = SquadEnums.SquadState.UserJoin.rawValue(),
						joinedUser = {
							id = "1111111111",
							name = "User1",
						},
					}, storyProps)
				),
			})
		end,
	},
}
