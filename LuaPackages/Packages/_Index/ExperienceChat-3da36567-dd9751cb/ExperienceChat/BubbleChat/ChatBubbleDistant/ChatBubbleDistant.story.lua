local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)
local UIBlox = require(ProjectRoot.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local success, migratedImageSetLabel = pcall(function()
	return UIBlox.Core.ImageSet.ImageSetLabel
end)
local ImageSetLabel = success and migratedImageSetLabel or UIBlox.Core.ImageSet.Label

local ChatBubbleDistant = require(script.Parent)

local story = Roact.Component:extend("story")

function story:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0.3, 0),
		BackgroundTransparency = 1,
	}, {
		ChatBubbleDistant = Roact.createElement(ChatBubbleDistant, {
			chatSettings = self.props.chatSettings,
			renderInsert = self.props.controls.isVoiceOn and function()
				return Roact.createElement(ImageSetLabel, {
					Size = UDim2.fromOffset(28, 28),
					Image = Images["icons/controls/microphone"],
					BackgroundTransparency = 0.6,
				})
			end or nil,
			insertSize = self.props.controls.isVoiceOn and Vector2.new(28, 28) or nil,
			fadingOut = self.props.fadingOut,
		}),
	})
end

return {
	summary = "Example Distant Chat Bubble",
	story = story,
	controls = {
		isVoiceOn = false,
	},
	props = {
		fadingOut = false,
		chatSettings = require(ExperienceChat.BubbleChat.Helpers.mockSettings),
	},
}
