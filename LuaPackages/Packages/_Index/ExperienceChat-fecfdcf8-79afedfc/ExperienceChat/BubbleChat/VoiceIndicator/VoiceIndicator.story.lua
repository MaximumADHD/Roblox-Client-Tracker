local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)
local RoactRodux = require(ProjectRoot.RoactRodux)

local VoiceIndicator = require(script.Parent)
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
		indicator = Roact.createElement(VoiceIndicator, {
			hideOnError = controls.hideOnError,
			userId = props.userId,
			voiceState = controls.voiceState,
			getIcon = props.getIcon,
			onClicked = props.onClicked,
			iconTransparency = props.iconTransparency,
		}),
	})
end

return {
	summary = "Voice Indicator",
	story = story,
	controls = {
		hideOnError = false,
		voiceState = { "Inactive", "Talking", "Connecting", "Muted", "LOCAL_MUTED", "Error", "Hidden" },
	},
	props = {
		userId = "userId",
		getIcon = function(name: string, folder: string)
			local folderStr = folder and folder .. "/" or ""
			return "rbxasset://textures/ui/VoiceChat/" .. folderStr .. name .. ".png"
		end,
	},
}
