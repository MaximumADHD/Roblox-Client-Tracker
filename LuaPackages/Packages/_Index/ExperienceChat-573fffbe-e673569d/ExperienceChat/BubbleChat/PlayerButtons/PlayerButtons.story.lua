local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)
local RoactRodux = require(ProjectRoot.RoactRodux)

local PlayerButtons = require(script.Parent)
local ChatSettings = require(ExperienceChat.installReducer.BubbleChat.LegacySettings)

local createStore = require(ExperienceChat.createStore)
local story = Roact.Component:extend("story")

function story:init()
	self.store = createStore()
end

function story:render()
	local props = self.props
	local controls = self.props.controls
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		playerButtons = Roact.createElement(PlayerButtons, {
			chatSettings = ChatSettings,
			isInsideMaximizeDistance = true,
			isLocalPlayer = true,
			userId = props.userId,
			LayoutOrder = 1,
			getIcon = props.getIcon,
			hasCameraPermissions = controls.hasCameraPermissions,
			hasMicPermissions = controls.hasMicPermissions,
			isCamEnabledForUserAndPlace = function()
				return controls.isCamEnabledForUserAndPlace
			end,
			voiceState = controls.voiceState,
			onClickedVoiceIndicator = function() end,
			onClickedCameraIndicator = function() end,
			getPermissions = function()
				return true, true
			end,
		}),
	})
end

return {
	summary = "Player Buttons",
	story = story,
	controls = {
		hasMicPermissions = { true, false },
		hasCameraPermissions = { true, false },
		voiceState = { "Inactive", "Talking", "Connecting", "Muted", "LOCAL_MUTED", "Error", "Hidden" },
	},
	props = {
		userId = "userId",
	},
}
