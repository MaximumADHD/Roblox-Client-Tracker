local SquadWidget = script:FindFirstAncestor("SquadWidget")
local dependencies = require(SquadWidget.dependencies)
local NotificationToast = require(SquadWidget.NotificationToast)
local React = dependencies.React
local llama = dependencies.llama

return {
	controls = {
		title = "Cool Title",
		subtext = "3 spots left",
		description = "This is a cool description.",
		showButtons = true,
		showThumbnail = true,
		userCount = 0,
		totalElapsedTime = 10,
	},
	stories = {
		InAppNotificationToast = function(storyProps)
			local users = {}
			for i = 1, storyProps.controls.userCount do
				table.insert(users, "1111111111")
			end

			return React.createElement("Frame", {
				Size = UDim2.fromOffset(400, 140),
				BackgroundTransparency = 1,
			}, {
				React.createElement(
					NotificationToast,
					llama.Dictionary.join({
						title = storyProps.controls.title,
						subtext = storyProps.controls.subtext,
						description = storyProps.controls.description,
						thumbnail = if storyProps.controls.showThumbnail then "rbxassetid://2610133241" else nil,
						enableCompact = false,
						showButtons = storyProps.controls.showButtons,
						users = users,
						totalElapsedTime = storyProps.controls.totalElapsedTime,
					}, storyProps)
				),
			})
		end,
		InExperienceNotificationToast = function(storyProps)
			local users = {}
			for i = 1, storyProps.controls.userCount do
				table.insert(users, "1111111111")
			end

			return React.createElement("Frame", {
				Size = UDim2.fromOffset(260, 140),
				BackgroundTransparency = 1,
			}, {
				React.createElement(
					NotificationToast,
					llama.Dictionary.join({
						title = storyProps.controls.title,
						subtext = storyProps.controls.subtext,
						description = storyProps.controls.description,
						thumbnail = if storyProps.controls.showThumbnail then "rbxassetid://2610133241" else nil,
						enableCompact = true,
						showButtons = storyProps.controls.showButtons,
						users = users,
						totalElapsedTime = storyProps.controls.totalElapsedTime,
					}, storyProps)
				),
			})
		end,
	},
}
