local SquadWidget = script:FindFirstAncestor("SquadWidget")
local FabContainer = require(SquadWidget.FloatingActionButton.Components.FabContainer)
local SquadEnums = require(SquadWidget.FloatingActionButton.Common.Enums)
local dependencies = require(SquadWidget.dependencies)
local React = dependencies.React
local llama = dependencies.llama

return {
	controls = {
		userCount = 3,
	},
	stories = {
		IdleFabContainer = function(storyProps)
			local users = {}
			for i = 1, storyProps.controls.userCount do
				table.insert(users, "1111111111")
			end

			return React.createElement("Frame", {
				Size = UDim2.fromOffset(360, 52),
				BackgroundTransparency = 1,
			}, {
				React.createElement(
					FabContainer,
					llama.Dictionary.join({
						users = users,
						squadState = SquadEnums.SquadState.Idle.rawValue(),
					}, storyProps)
				),
			})
		end,
		GameInviteFabContainer = function(storyProps)
			local users = {}
			for i = 1, storyProps.controls.userCount do
				table.insert(users, "1111111111")
			end

			return React.createElement("Frame", {
				Size = UDim2.fromOffset(360, 52),
				BackgroundTransparency = 1,
			}, {
				React.createElement(
					FabContainer,
					llama.Dictionary.join({
						users = users,
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
		GamePendingFabContainer = function(storyProps)
			local users = {}
			for i = 1, storyProps.controls.userCount do
				table.insert(users, "1111111111")
			end

			return React.createElement("Frame", {
				Size = UDim2.fromOffset(360, 52),
				BackgroundTransparency = 1,
			}, {
				React.createElement(
					FabContainer,
					llama.Dictionary.join({
						users = users,
						squadState = SquadEnums.SquadState.GamePending.rawValue(),
						experienceName = "Driving Simulator",
					}, storyProps)
				),
			})
		end,
		UserJoinFabContainer = function(storyProps)
			return React.createElement("Frame", {
				Size = UDim2.fromOffset(360, 52),
				BackgroundTransparency = 1,
			}, {
				React.createElement(
					FabContainer,
					llama.Dictionary.join({
						squadState = SquadEnums.SquadState.UserJoin.rawValue(),
						newJoinedUser = {
							id = "1111111111",
							name = "User1",
						},
					}, storyProps)
				),
			})
		end,
	},
}
