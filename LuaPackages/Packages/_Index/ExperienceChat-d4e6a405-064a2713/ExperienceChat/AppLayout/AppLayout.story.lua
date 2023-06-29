local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Dictionary = require(Packages.llama).Dictionary

local AppLayout = require(script.Parent)

local Actions = ExperienceChat.Actions
local IncomingMessageReceived = require(Actions.IncomingMessageReceived)
local UserInteraction = require(Actions.UserInteraction)

local createStore = require(ExperienceChat.createStore)

local ConnectedAppLayout = RoactRodux.connect(function(state)
	return {
		messages = state.Messages.windowMessagesInOrder,
		lastGeneralActivityTimestamp = state.ChatVisibility.transparency.lastGeneralActivityTimestamp,
		lastMessageActivityTimestamp = state.ChatVisibility.transparency.lastMessageActivityTimestamp,
		isTextBoxFocused = state.ChatVisibility.transparency.isTextBoxFocused,
		chatLayoutAlignment = state.ChatLayout.Alignment,
		chatWindowSettings = state.ChatLayout.ChatWindowSettings,
	}
end, function(dispatch)
	return {
		onHovered = function()
			dispatch(UserInteraction("hover"))
		end,

		onUnhovered = function()
			dispatch(UserInteraction("unhover"))
		end,
	}
end)(AppLayout)

local story = Roact.Component:extend("story")

function story:render()
	return Roact.createElement("ImageLabel", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		Image = "rbxassetid://751751000",
		ScaleType = Enum.ScaleType.Crop,
	}, {
		appLayout = Roact.createElement(RoactRodux.StoreProvider, {
			store = self.props.store,
		}, {
			connectedAppLayout = Roact.createElement(ConnectedAppLayout, {
				isChatWindowVisible = self.props.controls.isChatWindowVisible,
				isChatInputBarVisible = self.props.controls.isChatInputBarVisible,
				timer = self.props.controls.timer,
				textTimer = self.props.controls.textTimer,
				canLocalUserChat = self.props.controls.canLocalUserChat,
			}),
		}),
	})
end

function story:didMount()
	local mockMessages = {
		{
			PrefixText = [[<font color="#D7C59A">Alice</font>]],
			Text = "Hello world!",
		},
		{
			PrefixText = [[<font color="#E8BAC8">Bob</font>]],
			Text = string.rep("Hello world! ", 10),
		},
		{
			PrefixText = [[<font color="#01A2FF">Charlie</font>]],
			Text = string.rep("AAAA! ", 10),
		},
		{
			PrefixText = [[<font color="#FD2943"><font color="#FFA500">[VIP]</font> Darla</font>]],
			Text = string.rep("lol! ", 2),
		},
	}

	local timeElapsed = 0
	local count = 0
	self.connection = self.props.timeSignal:connect(function(dt)
		timeElapsed += dt

		local frequency = self.props.controls.sentMessageHz
		if timeElapsed >= frequency then
			timeElapsed -= frequency

			count = (count + 1) % (#mockMessages + 1)
			local randomMessage = Dictionary.join(mockMessages[count], {
				MessageId = tostring(os.clock()),
				TextChannel = { Name = "Test" },
				Status = Enum.TextChatMessageStatus.Success,
				Timestamp = DateTime.now(),
			})
			self.props.store:dispatch(IncomingMessageReceived(randomMessage))
		end
	end)
end

function story:willUnmount()
	if self.connection then
		self.connection:disconnect()
	end
end

return {
	summary = "A full picture of the ExperienceChat application.",
	story = story,
	controls = {
		isChatWindowVisible = true,
		isChatInputBarVisible = true,
		sentMessageHz = 2,
		timer = nil,
		textTimer = nil,
		messageHistory = nil,
		canLocalUserChat = true,
	},
	props = {
		timeSignal = game:GetService("RunService").Heartbeat,
		store = createStore(),
	},
}
