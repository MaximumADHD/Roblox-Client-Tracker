--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)

local Helpers = script.Parent.Parent.Parent.Helpers
local Actions = script.Parent.Parent.Parent.Actions
local createMockMessage = require(Helpers.createMockMessage)
local ChatBubble = require(script.Parent.Parent.ChatBubble)

local StoryStore = require(Helpers.StoryStore)
local AddMessage = require(Actions.AddMessage)
local RemoveMessage = require(Actions.RemoveMessage)

local Story = Roact.PureComponent:extend("Story")

local messages = {
	createMockMessage({
		text = "Hello World!",
	}),
	createMockMessage({
		text = "Testing length to see what happens when it spills to the second line",
	}),
	createMockMessage({
		text = "Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo "
			.. "consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu"
			.. "fugiat nulla pariatur",
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

	for _, msg in ipairs(messages) do
		StoryStore:dispatch(AddMessage(msg))
	end
end

function Story:render()
	local children = {}
	for _, msg in ipairs(messages) do
		children[msg.id] = Roact.createElement(ChatBubble, {
			messageId = msg.id,
			chatSettings = self.props.chatSettings,
			renderInsert = self.state.voiceOn and function()
				return Roact.createElement("Frame", {
					Size = UDim2.fromOffset(28, 28),
				})
			end or nil,
			insertSize = self.state.voiceOn and Vector2.new(28, 28) or nil,
		})
	end

	children.Layout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.Name,
		FillDirection = Enum.FillDirection.Horizontal,
		Padding = UDim.new(0, 16),
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		VerticalAlignment = Enum.VerticalAlignment.Bottom,
	})

	children.Padding = Roact.createElement("UIPadding", {
		PaddingTop = UDim.new(0, self.props.chatSettings.Padding),
		PaddingRight = UDim.new(0, self.props.chatSettings.Padding),
		PaddingBottom = UDim.new(0, self.props.chatSettings.Padding),
		PaddingLeft = UDim.new(0, self.props.chatSettings.Padding),
	})

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, -36),
		BackgroundTransparency = 1,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		}),

		Button = Roact.createElement("TextButton", {
			LayoutOrder = -1,
			Size = UDim2.fromOffset(64, 24),
			Text = "Toggle",
			[Roact.Event.Activated] = function()
				self:setState({
					voiceOn = not self.state.voiceOn,
				})
			end,
		}),

		Bubbles = Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		}, children),
	})
end

return Story
