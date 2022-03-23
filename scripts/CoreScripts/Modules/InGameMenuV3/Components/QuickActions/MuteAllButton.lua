local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local IconButton = UIBlox.App.Button.IconButton

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local MuteAllButton = Roact.PureComponent:extend("MuteAllButton")

MuteAllButton.validateProps = t.interface({
	layoutOrder = t.integer,
})

function MuteAllButton:init()
	self:setState({
		allMuted = false,
	})

	self.onActivated = function()
		VoiceChatServiceManager:MuteAll(not self.state.allMuted)
		self:setState({
			allMuted = not self.state.allMuted
		})
	end
end

function MuteAllButton:render()
	return Roact.createElement(IconButton, {
		layoutOrder = self.props.layoutOrder,
		icon = VoiceChatServiceManager:GetIcon(self.state.allMuted and "UnmuteAll" or "MuteAll", "Misc"),
		iconSize = self.props.iconSize,
		onActivated = self.onActivated,
	})
end

return MuteAllButton
