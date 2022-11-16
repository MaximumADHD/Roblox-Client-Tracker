local CorePackages = game:GetService("CorePackages")
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local IconButton = UIBlox.App.Button.IconButton
local withHoverTooltip = UIBlox.App.Dialog.TooltipV2.withHoverTooltip

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local InGameMenu = script.Parent.Parent.Parent
local SetQuickActionsTooltip = require(InGameMenu.Actions.SetQuickActionsTooltip)
local withLocalization = require(InGameMenu.Localization.withLocalization)
local Constants = require(InGameMenu.Resources.Constants)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local ExperienceMenuABTestManager = require(InGameMenu.ExperienceMenuABTestManager)
local IsMenuCsatEnabled = require(InGameMenu.Flags.IsMenuCsatEnabled)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

-- These hotkeys are on the spec, but they haven't been implemented
-- https://jira.rbx.com/browse/APPEXP-476
local MUTE_ALL_HOTKEYS = nil -- { Enum.KeyCode.LeftAlt, Enum.KeyCode.A }

local MuteAllButton = Roact.PureComponent:extend("MuteAllButton")

MuteAllButton.validateProps = t.interface({
	layoutOrder = t.integer,
	iconTransparency = t.optional(t.union(t.number, t.table)),
	backgroundTransparency = t.optional(t.union(t.number, t.table)),
	backgroundColor = t.optional(t.strictInterface({
		Color = t.Color3,
		Transparency = t.numberConstrained(0, 1),
	})),
})

function MuteAllButton:init()
	self:setState({
		allMuted = false,
	})

	self.onActivated = function()
		VoiceChatServiceManager:MuteAll(not self.state.allMuted)
		if self.state.allMuted then
			self.props.setQuickActionsTooltip(self.unmuteAll or "Unmute all")
		else
			self.props.setQuickActionsTooltip(self.muteAll or "Mute All")
		end

		SendAnalytics(
			Constants.AnalyticsMenuActionName,
			self.state.allMuted and Constants.AnalyticsUnmuteAll or Constants.AnalyticsMuteAll,
			{ source = Constants.AnalyticsQuickActionsMenuSource }
		)

		self:setState({
			allMuted = not self.state.allMuted,
		})

		if IsMenuCsatEnabled() then
			ExperienceMenuABTestManager.default:setCSATQualification()
		end
	end
end

function MuteAllButton:render()
	return withLocalization({
		muteAll = "CoreScripts.InGameMenu.QuickActions.MuteAll",
		unmuteAll = "CoreScripts.InGameMenu.QuickActions.UnmuteAll",
	})(function(localized)
		self.unmuteAll = localized.unmuteAll
		self.muteAll = localized.muteAll
		return withHoverTooltip({
			headerText = if self.state.allMuted then localized.unmuteAll else localized.muteAll,
			textAlignment = Enum.TextXAlignment.Center,
			hotkeyCodes = MUTE_ALL_HOTKEYS,
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
				icon = VoiceChatServiceManager:GetIcon(self.state.allMuted and "MuteAll" or "UnmuteAll", "Misc"),
				iconSize = self.props.iconSize,
				onActivated = self.onActivated,
				onStateChanged = onStateChanged,
				buttonRef = self.props.buttonRef,
				[Roact.Change.AbsoluteSize] = triggerPointChanged,
				onAbsolutePositionChanged = triggerPointChanged,
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

return RoactRodux.connect(nil, mapDispatchToProps)(MuteAllButton)
