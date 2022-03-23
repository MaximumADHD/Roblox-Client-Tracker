local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local IconButton = UIBlox.App.Button.IconButton
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local MuteSelfButton = Roact.PureComponent:extend("MuteSelfButton")

MuteSelfButton.validateProps = t.interface({
	layoutOrder = t.integer,
})

function MuteSelfButton:init()
	self:setState({
		selfMuted = false,
	})

	self.onActivated = function()
		VoiceChatServiceManager:ToggleMic()
		self:setState({
			selfMuted = not self.state.selfMuted
		})
	end
end

function MuteSelfButton:render()
	local mutedIcon =  "rbxasset://textures/ui/VoiceChat/Muted.png"
	local unMutedIcon =  "rbxasset://textures/ui/VoiceChat/Blank.png"
	return Roact.createElement(IconButton, {
		layoutOrder = self.props.layoutOrder,
		icon = self.state.selfMuted and unMutedIcon or mutedIcon,
		iconSize = self.props.iconSize,
		onActivated = self.onActivated,
	})
end

return MuteSelfButton
