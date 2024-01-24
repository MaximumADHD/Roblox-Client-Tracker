local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)
local RoactRodux = require(ProjectRoot.RoactRodux)

local BubbleChat = script:FindFirstAncestor("BubbleChat")
local VoiceIndicator = require(BubbleChat.VoiceIndicator)

local BlankBubble = require(script.Parent)
local ChatSettings = require(ExperienceChat.installReducer.BubbleChat.LegacySettings)

local createStore = require(ExperienceChat.createStore)
local story = Roact.Component:extend("story")

function story:init()
	self.store = createStore()

	self.renderVoiceIndicator = function()
		return Roact.createElement(VoiceIndicator, {
			userId = "123",
			getIcon = function()
				return "rbxasset://textures/ui/VoiceChat/Error.png"
			end,
		})
	end

	self.renderDog = function()
		return Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			Image = "rbxassetid://2610133241",
		})
	end
end

function story:render()
	local props = self.props
	local controls = self.props.controls
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		blankBubble = Roact.createElement(BlankBubble, {
			onFadeOut = props.onFadeOut,
			isDistant = controls.isDistant,
			fadingOut = controls.fadingOut,
			renderInsert = if controls.renderInsert == "VoiceIndicator"
				then self.renderVoiceIndicator
				else self.renderDog,
			insertSize = props.insertSize,
			chatSettings = ChatSettings,
			clientSettings = {
				preferredTransparency = 1,
			},
		}),
	})
end

return {
	summary = "Blank Bubble",
	story = story,
	controls = {
		isDistant = false,
		fadingOut = false,
		renderInsert = { "VoiceIndicator", "Dog" },
	},
	props = {
		insertSize = Vector2.new(28, 28),
	},
}
