local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local IconButton = UIBlox.App.Button.IconButton
local withHoverTooltip = UIBlox.App.Dialog.TooltipV2.withHoverTooltip
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local InGameMenu = script.Parent.Parent.Parent
local SetQuickActionsTooltip = require(InGameMenu.Actions.SetQuickActionsTooltip)
local withLocalization = require(InGameMenu.Localization.withLocalization)
local Constants = require(InGameMenu.Resources.Constants)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local ExperienceMenuABTestManager = require(InGameMenu.ExperienceMenuABTestManager)
local GetFFlagSelfMuteConnectingFix = require(InGameMenu.Flags.GetFFlagSelfMuteConnectingFix)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceConstants = require(CorePackages.AppTempCommon.VoiceChat.Constants)
local VoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.VoiceIndicatorFunc)
local GetFFlagEnableVoiceChatManualReconnect = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatManualReconnect)
local IsMenuCsatEnabled = require(InGameMenu.Flags.IsMenuCsatEnabled)

-- These hotkeys are on the spec, but they haven't been implemented
-- https://jira.rbx.com/browse/APPEXP-476
local MUTE_SELF_HOTKEYS = nil -- { Enum.KeyCode.LeftAlt, Enum.KeyCode.S }

local MuteSelfButton = Roact.PureComponent:extend("MuteSelfButton")

MuteSelfButton.validateProps = t.interface({
	layoutOrder = t.integer,
	backgroundColor = t.optional(t.strictInterface({
		Color = t.Color3,
		Transparency = t.numberConstrained(0, 1),
	})),
	iconTransparency = t.optional(t.union(t.number, t.table)),
	backgroundTransparency = t.optional(t.union(t.number, t.table)),
})

function MuteSelfButton:init()
	self:setState({
		selfMuted = VoiceChatServiceManager.localMuted or true,
	})
	VoiceChatServiceManager.muteChanged.Event:Connect(function(muted)
		self:setState({
			selfMuted = muted,
		})
	end)

	self.onActivated = function()

		if GetFFlagEnableVoiceChatManualReconnect() and self.props.voiceState == VoiceConstants.VOICE_STATE.ERROR then
			VoiceChatServiceManager:RejoinPreviousChannel()
		else
			if GetFFlagSelfMuteConnectingFix() and self.localMuted == nil then -- Voice still connecting
				self.props.setQuickActionsTooltip(self.connecting or "Connecting...")
				return
			end
			VoiceChatServiceManager:ToggleMic()

			if self.state.selfMuted then
				self.props.setQuickActionsTooltip(self.unmuteSelf or "Unmute Self")
			else
				self.props.setQuickActionsTooltip(self.muteSelf or "Mute Self")
			end

			SendAnalytics(
				Constants.AnalyticsMenuActionName,
				self.state.selfMuted and Constants.AnalyticsUnmuteSelf or Constants.AnalyticsMuteSelf,
				{ source = Constants.AnalyticsQuickActionsMenuSource }
			)

			self:setState({
				selfMuted = not self.state.selfMuted,
			})
		end

		if IsMenuCsatEnabled() then
			ExperienceMenuABTestManager.default:setCSATQualification()
		end
	end
end

function MuteSelfButton:render()
	return withLocalization({
		muteSelf = "CoreScripts.InGameMenu.QuickActions.MuteSelf",
		unmuteSelf = "CoreScripts.InGameMenu.QuickActions.UnmuteSelf",
		connecting = "CoreScripts.InGameMenu.QuickActions.Connecting",
	})(function(localized)
		self.muteSelf = localized.muteSelf
		self.unmuteSelf = localized.unmuteSelf
		self.connecting = localized.connecting

		return withHoverTooltip({
			headerText = if self.state.selfMuted then localized.unmuteSelf else localized.muteSelf,
			hotkeyCodes = MUTE_SELF_HOTKEYS,
			textAlignment = Enum.TextXAlignment.Center,
		}, {
			guiTarget = CoreGui,
			DisplayOrder = Constants.DisplayOrder.Tooltips,
		}, function(triggerPointChanged, onStateChanged)
			return Roact.createElement(IconButton, {
				iconTransparency = self.props.iconTransparency,
				backgroundTransparency = self.props.backgroundTransparency,
				backgroundColor = self.props.backgroundColor,
				showBackground = true,
				layoutOrder = self.props.layoutOrder,
				onActivated = self.onActivated,
				onStateChanged = onStateChanged,
				buttonRef = self.props.buttonRef,
				[Roact.Change.AbsoluteSize] = triggerPointChanged,
				onAbsolutePositionChanged = triggerPointChanged,
			}, {
				VoiceIndicator = Roact.createElement(VoiceIndicator, {
					userId = tostring((Players.LocalPlayer :: Player).UserId),
					hideOnError = false,
					iconStyle = "MicLight",
					size = UDim2.fromOffset(36, 36),
					onClicked = self.onActivated,
					iconTransparency = self.props.backgroundTransparency,
				}),
			})
		end)
	end)
end

local function mapDispatchToProps(dispatch)
	return {
		setQuickActionsTooltip = function(text)
			dispatch(SetQuickActionsTooltip(text))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(MuteSelfButton)
