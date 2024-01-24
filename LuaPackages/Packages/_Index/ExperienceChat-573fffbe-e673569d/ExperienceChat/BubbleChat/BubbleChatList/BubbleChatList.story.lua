local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)

local BubbleChatList = require(script.Parent)

local story = Roact.Component:extend("story")

function story:render()
	return Roact.createElement("Frame", {
		Size = UDim2.fromScale(1, 0.7),
		BackgroundTransparency = 1,
	}, {
		BubbleChatList = Roact.createElement(BubbleChatList, {
			userId = self.props.userId,
			chatSettings = self.props.chatSettings,
			messages = self.props.messages,
			clientSettings = {
				preferredTransparency = 1,
			},
		}),
	})
end

return {
	summary = "Example Bubble Chat List",
	story = story,
	props = {
		messages = {
			{ text = "This user sent three messages", userId = "1", messageId = tostring(os.clock()), timestamp = 1 },
			{ text = "Second message", userId = "1", messageId = tostring(os.clock() + 1), timestamp = 2 },
			{
				text = "Third Extra extra super duper loooooong message that is really looong",
				userId = "1",
				messageId = tostring(os.clock() + 2),
				timestamp = 3,
			},
		},
		chatSettings = require(ExperienceChat.BubbleChat.Helpers.mockSettings),
		userId = 1,
	},
}
