local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)
local RoactRodux = require(ProjectRoot.RoactRodux)

local ControlBubble = require(script.Parent)

local createStore = require(ExperienceChat.createStore)
local story = Roact.Component:extend("story")

function story:init()
	self.store = createStore()
end

function story:render()
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		controlBubble = Roact.createElement(ControlBubble, {
			LayoutOrder = 1,
			icon = "",
			imageSetIcon = false,
			onActivated = function() end,
			isImageSet = false,
			chatSettings = self.props.chatSettings,
			hasMicPermissions = true,
		}),
	})
end

return {
	summary = "Control Bubble",
	story = story,
	controls = {},
	props = {},
}
