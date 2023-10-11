local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)
local UIBlox = require(ProjectRoot.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local success, migratedImageSetLabel = pcall(function()
	return UIBlox.Core.ImageSet.ImageSetLabel
end)
local ImageSetLabel = success and migratedImageSetLabel or UIBlox.Core.ImageSet.Label

local mockSettings = require(ExperienceChat.BubbleChat.Helpers.mockSettings)

local ChatBubble = require(script.Parent)

local story = Roact.Component:extend("story")

function story:render()
	local bubbles = {}
	for index, message in ipairs(self.props.messages) do
		bubbles[index] = Roact.createElement(ChatBubble, {
			text = message.text,
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
		})
	end

	bubbles.Layout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.Name,
		FillDirection = Enum.FillDirection.Vertical,
		Padding = UDim.new(0, 16),
	})

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, -36),
		BackgroundTransparency = 1,
	}, {
		Bubbles = Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		}, bubbles),
	})
end

return {
	summary = "Example Chat Bubbles",
	story = story,
	controls = {
		isVoiceOn = false,
	},
	props = {
		messages = {
			{ text = "Hello World!" },
			{ text = "Testing length to see what happens when it spills to the second line" },
			{
				text = "Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics.",
			},
		},
		chatSettings = mockSettings,
	},
}
