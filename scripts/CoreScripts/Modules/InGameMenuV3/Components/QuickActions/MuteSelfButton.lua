local CorePackages = game:GetService("CorePackages")

local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local IconButton = UIBlox.App.Button.IconButton
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")


local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local InGameMenu = script.Parent.Parent.Parent
local SetQuickActionsTooltip = require(InGameMenu.Actions.SetQuickActionsTooltip)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local MuteSelfButton = Roact.PureComponent:extend("MuteSelfButton")

local MUTED_ICON =  "rbxasset://textures/ui/VoiceChat/Muted.png"
local UNMUTED_ICON =  "rbxasset://textures/ui/VoiceChat/Blank.png"

MuteSelfButton.validateProps = t.interface({
	layoutOrder = t.integer,
	backgroundColor = t.optional(t.string),
	backgroundTransparency = t.optional(t.number),
})

function MuteSelfButton:init()
	self:setState({
		selfMuted = false,
	})

	self.onActivated = function()
		VoiceChatServiceManager:ToggleMic()

		if self.state.selfMuted then
			self.props.setQuickActionsTooltip("Unmute Self")
		else
			self.props.setQuickActionsTooltip("Mute Self")
		end

		self:setState({
			selfMuted = not self.state.selfMuted
		})
	end
end

function MuteSelfButton:render()
	return Roact.createElement(IconButton, {
		iconTransparency = self.props.backgroundTransparency,
		backgroundTransparency = self.props.backgroundTransparency,
		backgroundColor = self.props.backgroundColor,
		showBackground = true,
		layoutOrder = self.props.layoutOrder,
		icon = self.state.selfMuted and MUTED_ICON or UNMUTED_ICON,
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

return RoactRodux.connect(nil, mapDispatchToProps)(MuteSelfButton)
