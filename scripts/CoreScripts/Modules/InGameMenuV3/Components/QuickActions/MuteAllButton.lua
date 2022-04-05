local CorePackages = game:GetService("CorePackages")
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local IconButton = UIBlox.App.Button.IconButton

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local InGameMenu = script.Parent.Parent.Parent
local SetQuickActionsTooltip = require(InGameMenu.Actions.SetQuickActionsTooltip)

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

		if self.state.allMuted then
			self.props.setQuickActionsTooltip("Unmute All")
		else
			self.props.setQuickActionsTooltip("Mute All")
		end

		self:setState({
			allMuted = not self.state.allMuted
		})
	end
end

function MuteAllButton:render()
	return Roact.createElement(IconButton, {
		showBackground = true,
		layoutOrder = self.props.layoutOrder,
		icon = VoiceChatServiceManager:GetIcon(self.state.allMuted and "MuteAll" or "UnmuteAll", "Misc"),
		iconSize = self.props.iconSize,
		onActivated = self.onActivated,
	})
end

local function mapDispatchToProps(dispatch)
	return {
		setQuickActionsTooltip = function(text)
			dispatch(SetQuickActionsTooltip(text))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(MuteAllButton)
