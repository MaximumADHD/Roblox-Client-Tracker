local Players = game:GetService("Players")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent
local Packages = ExperienceChat.Parent

local Roact = require(ProjectRoot.Roact)
local RoactRodux = require(ProjectRoot.RoactRodux)
local createStore = require(ExperienceChat.createStore)

local BubbleChatApp = require(script.Parent)
local LegacySettings = require(ExperienceChat.installReducer.BubbleChat.LegacySettings)
local Dictionary = require(Packages.llama).Dictionary

local story = Roact.Component:extend("story")

function story:init()
	local id = if Players.LocalPlayer then tostring(Players.LocalPlayer.UserId) else "12345678"
	local initStoreState = {
		Adornees = {
			[id] = Instance.new("Part"),
		},
		BubbleChatSettings = Dictionary.join(LegacySettings, {
			MaxDistance = math.huge,
		}),
	}
	self.store = createStore(initStoreState)
end

function story:render()
	local props = self.props
	local controls = self.props.controls

	return Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		Wrapper = Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 0.7),
			BackgroundTransparency = 1,
		}, {
			BubbleChatApp = Roact.createElement(BubbleChatApp, {
				voiceEnabled = props.voiceEnabled,
				getIconVoiceIndicator = props.getIconVoiceIndicator,
				onClickedVoiceIndicator = props.onClickedVoiceIndicator,
				onClickedCameraIndicator = props.onClickedCameraIndicator,
				selfViewListenerChanged = props.selfViewListenerChanged,
				hasCameraPermissions = controls.hasCameraPermissions,
				hasMicPermissions = controls.hasMicPermissions,
				voiceState = controls.voiceState,
				isBubbleChatEnabled = props.isBubbleChatEnabled,
				partOrModel = props.partOrModel,
				getPermissions = props.getPermissions,
			}),
		}),
	})
end

return {
	summary = "Example Bubble Chat List",
	story = story,
	props = {
		voiceEnabled = true,
		getIconVoiceIndicator = function() end,
		onClickedVoiceIndicator = function() end,
		onClickedCameraIndicator = function() end,
		selfViewListenerChanged = nil,
		hasCameraPermissions = true,
		hasMicPermissions = true,
		isBubbleChatEnabled = true,
		voiceState = nil,
		partOrModel = nil,
		getPermissions = function() end,
	},
	controls = {
		hasCameraPermissions = { true, false },
		hasMicPermissions = { true, false },
		voiceState = { "Inactive", "Talking", "Connecting", "Muted", "LOCAL_MUTED", "Error", "Hidden" },
	},
}
