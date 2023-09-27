--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local StoryStore = require(script.Parent.Parent.Parent.Helpers.StoryStore)
local AddMessage = require(script.Parent.Parent.Parent.Actions.AddMessage)
local RemoveMessage = require(script.Parent.Parent.Parent.Actions.RemoveMessage)
local chatReducer = require(script.Parent.Parent.Parent.Reducers.chatReducer)
local createMockMessage = require(script.Parent.Parent.Parent.Helpers.createMockMessage)
local BubbleChatList = require(script.Parent.Parent.BubbleChatList)

local Story = Roact.PureComponent:extend("Story")

local MESSAGES = {
	createMockMessage({ userId = "1", text = "Hello, World" }),
	createMockMessage({ userId = "1", text = "This message is newer, so it appears at the bottom." }),

	createMockMessage({ userId = "2", text = "This user only sent one message." }),

	createMockMessage({ userId = "3", text = "This user sent three messages" }),
	createMockMessage({
		userId = "3",
		text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer at lacus vehicula, vulputate elit quis, cursus diam. Nam bibendum, massa sed condimentum elementum, quam nulla fermentum diam,",
	}),
	createMockMessage({
		userId = "3",
		text = "non posuere metus justo porttitor enim. Etiam neque magna, consectetur suscipit consectetur non, rhoncus sit amet enim. Curabitur gravida tempus ex,",
	}),
}

function Story:init()
	self:setState({
		voiceOn = true,
	})

	local state = StoryStore:getState()
	for _, message in pairs(state.messages) do
		StoryStore:dispatch(RemoveMessage(message))
	end

	for _, message in ipairs(MESSAGES) do
		StoryStore:dispatch(AddMessage(message))
	end
end

function Story:render()
	local children = {}

	children.Layout = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal,
	})

	local state = StoryStore:getState()

	for userId, messageIds in pairs(state.userMessages) do
		children[userId] = Roact.createElement("Frame", {
			Size = UDim2.new(1 / 3, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			BubbleChatList = Roact.createElement(BubbleChatList, {
				userId = userId,
				chatSettings = self.props.chatSettings,
			}),
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
	}, children)
end

return Story
