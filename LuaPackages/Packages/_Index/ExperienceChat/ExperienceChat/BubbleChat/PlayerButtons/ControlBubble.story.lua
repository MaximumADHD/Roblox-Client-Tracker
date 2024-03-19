local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)
local RoactRodux = require(ProjectRoot.RoactRodux)
local Dictionary = require(ProjectRoot.llama).Dictionary

local ControlBubble = require(script.Parent.ControlBubble)

local createStore = require(ExperienceChat.createStore)
local story = Roact.Component:extend("story")

local Config = require(ExperienceChat.Config)
function story:init()
	self.store = createStore()
	self.mockChatSettings = Dictionary.join(
		Config.DefaultBubbleChatChildrenCustomizationProperties,
		Config.DefaultBubbleChatMessagePropertiesInstanceSettings
	)
end

function story:render()
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		controlBubble = Roact.createElement(ControlBubble, {
			LayoutOrder = 1,
			onActivated = function() end,
			controlBubbleSize = UDim2.fromOffset(30, 30),
			cornerRadiusOffset = 8,
			voiceState = "Talking",
			iconSize = UDim2.fromOffset(24, 24),
			iconTransparency = 0.1,
			chatSettings = Dictionary.join(
				Config.DefaultBubbleChatChildrenCustomizationProperties,
				Config.DefaultBubbleChatMessagePropertiesInstanceSettings
			),
			renderStepName = "ControlBubbleStorybook",
			iconStyle = "microphone",
		}),
	})
end

return {
	summary = "Control Bubble V2",
	story = story,
	controls = {},
	props = {},
}
