local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local Promise = require(CorePackages.Promise)
local enumerate = require(CorePackages.enumerate)

local UIBlox = require(CorePackages.UIBlox)
local withStyle = UIBlox.Core.Style.withStyle

local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local GetFFlagVoiceARUnblockingUnmutingEnabled = require(RobloxGui.Modules.Flags.GetFFlagVoiceARUnblockingUnmutingEnabled)

local ReportActionSelection = require(script.Parent.ReportActionSelection)
local ReportActionAreYouSure = require(script.Parent.ReportActionAreYouSure)

local ReportPages = enumerate("ReportPages", {
	["SelectActions"] = 1,
	["ConfirmAction"] = 2,
})

local ReportConfirmationContainer = Roact.PureComponent:extend("ReportConfirmationContainer")

local noOp = function()

end

ReportConfirmationContainer.defaultProps = {
	blockingUtility = BlockingUtility,
	voiceChatServiceManager = VoiceChatServiceManager,
	isVoiceReport = false,
	closeMenu = noOp,
}

ReportConfirmationContainer.validateProps = t.interface({
	player = t.strictInterface({
		UserId = t.number,
		Name = t.string,
		DisplayName = t.string,
	}),
	isVoiceReport = t.boolean,
	closeMenu = t.callback,
	blockingAnalytics = t.optional(t.table),
	reportAbuseAnalytics = t.optional(t.table),
})

local function getIsPlayerBlockedByUserId(blockingUtility, userId)
	return Promise.new(function(resolve, reject)
		resolve(blockingUtility:IsPlayerBlockedByUserId(userId))
	end)
end

function ReportConfirmationContainer:init()
	local player = self.props.player
	local voiceParticipants = self.props.voiceChatServiceManager.participants
	local targetVoiceParticipant = voiceParticipants[tostring(player.UserId)]

	self.userFullName = player.DisplayName.."(@"..player.Name..")"

	self.onMuteCheckboxActivated = function(isFlipped)
		self:setState({
			muteFlipped = isFlipped,
		})
	end

	self.onBlockCheckboxActivated = function(isFlipped)
		self:setState({
			blockFlipped = isFlipped,
		})
	end

	self.processMuteAndBlocking = function()
		local blockFlipped = self.state.blockFlipped
		local muteFlipped = self.state.muteFlipped

		if blockFlipped and not self.state.targetInitiallyBlocked then
			local success = self.props.blockingUtility:BlockPlayerAsync(player)

			if success then
				self.props.blockingAnalytics:action("SettingsHub", "blockUser", {
					blockeeUserId = player.UserId,
				})
			end
		elseif not blockFlipped and self.state.targetInitiallyBlocked and GetFFlagVoiceARUnblockingUnmutingEnabled() then
			local success = self.props.blockingUtility:UnblockPlayerAsync(player)

			if success then
				self.props.blockingAnalytics:action("SettingsHub", "unblockUser", {
					blockeeUserId = player.UserId,
				})
			end
		end

		local voiceParticipant = self.props.voiceChatServiceManager.participants[tostring(player.UserId)]

		if muteFlipped and not self.state.targetInitiallyVoiceMuted then
			self.props.blockingUtility:MutePlayer(player)
			self.props.reportAbuseAnalytics:reportEventAndIncrement("muteUser")

			if voiceParticipant and not voiceParticipant.isMutedLocally then
				self.props.voiceChatServiceManager:ToggleMutePlayer(player.UserId)
			end
		elseif not muteFlipped and self.state.targetInitiallyVoiceMuted and GetFFlagVoiceARUnblockingUnmutingEnabled() then
			self.props.blockingUtility:UnmutePlayer(player)
			self.props.reportAbuseAnalytics:reportEventAndIncrement("unmuteUser")

			if voiceParticipant and voiceParticipant.isMutedLocally then
				self.props.voiceChatServiceManager:ToggleMutePlayer(player.UserId)
			end
		end

		self.props.closeMenu()
	end

	self.onActionSelectionDoneActivated = function(blockFlipped, muteFlipped)
		self:setState({
			blockFlipped = blockFlipped,
			muteFlipped = muteFlipped,
		})

		--in the case where you don't mute or block, this should end the menu flow.
		--it should also end the flow if you've already muted/blocked the user, no need to re-confirm
		if (not blockFlipped and not muteFlipped)
			or (muteFlipped == self.state.targetInitiallyVoiceMuted
			and blockFlipped == self.state.targetInitiallyBlocked) then
			self.processMuteAndBlocking()
		else
			self:setState({
				currentPage = ReportPages.ConfirmAction,
			})
		end
	end

	self.onYesOrNoConfirmation = function()
		self.processMuteAndBlocking()
	end

	self.onYesOrNoCancel = function()
		self:setState({
			currentPage = ReportPages.SelectActions,
		})
	end

	self:setState({
		currentPage = ReportPages.SelectActions,
	})

	if targetVoiceParticipant then
		self:setState({
			targetInitiallyVoiceMuted = targetVoiceParticipant.isMutedLocally,
			muteFlipped = targetVoiceParticipant.isMutedLocally,
		})
	else
		self:setState({
			targetInitiallyVoiceMuted = false,
			muteFlipped = false,
		})
	end

	--BlockingUtility:IsPlayerBlockedByUserId yields, so we do this async
	getIsPlayerBlockedByUserId(self.props.blockingUtility, player.UserId):andThen(function(result)
		self:setState({
			targetInitiallyBlocked = result,
			blockFlipped = result,
		})
	end)
end

function ReportConfirmationContainer:render()
	return withStyle(function(style)
		--TODO: Localization https://jira.rbx.com/browse/SOCRTC-2319
		local currentPage = self.state.currentPage

		local savedMuteState = if self.state.muteFlipped ~= nil then self.state.muteFlipped else false
		local savedBlockedState = if self.state.blockFlipped ~= nil then self.state.blockFlipped else false
		local selectActionsPage = Roact.createElement(ReportActionSelection, {
			titleText = RobloxTranslator:FormatByKey("Feature.SettingsHub.Heading.Report.ThanksForReport"),
			subtitleText = RobloxTranslator:FormatByKey("Feature.SettingsHub.ReportSubmitted.ThankYou"),
			instructionText = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.Report.OtherActionsHeader"),
			muteText = RobloxTranslator:FormatByKey("Feature.SettingsHub.ReportSubmitted.MutePlayer", {Player = self.userFullName}),
			blockText = RobloxTranslator:FormatByKey("Feature.SettingsHub.ReportSubmitted.BlockPlayer", {Player = self.userFullName}),
			doneText = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.Report.Done"),
			showVoiceMuting = self.props.isVoiceReport,
			isVoiceMuted = savedMuteState or self.state.targetInitiallyVoiceMuted,
			isBlocked = savedBlockedState or self.state.targetInitiallyBlocked,
			onMuteCheckboxActivated = self.onMuteCheckboxActivated,
			onBlockCheckboxActivated = self.onBlockCheckboxActivated,
			onDoneActivated = self.onActionSelectionDoneActivated,
			ZIndex = self.props.ZIndex,
		})

		local confirmActionsPage = Roact.createElement(ReportActionAreYouSure, {
			mutedTitleText = RobloxTranslator:FormatByKey("Feature.SettingsHub.ReportSubmitted.MutePlayer", {Player = self.userFullName}),
			blockedTitleText = RobloxTranslator:FormatByKey("Feature.SettingsHub.ReportSubmitted.BlockPlayer", {Player = self.userFullName}),
			mutedAndBlockedTitleText = RobloxTranslator:FormatByKey("Feature.SettingsHub.ReportSubmitted.Label.MuteAndBlockPlayer", {DisplayName = self.userFullName}),
			mutedSubtitleText = RobloxTranslator:FormatByKey("Feature.SettingsHub.ReportSubmitted.MutedSubtitleText", {Player = self.userFullName}),
			blockedSubtitleText = RobloxTranslator:FormatByKey("Feature.SettingsHub.ReportSubmitted.BlockedSubtitleText", {Player = self.userFullName}),
			mutedAndBlockedSubtitleText = RobloxTranslator:FormatByKey("Feature.SettingsHub.ReportSubmitted.Label.MuteAndBlockWarning", {Player = self.userFullName}),
			cancelText = RobloxTranslator:FormatByKey("InGame.InspectMenu.Action.Cancel"),
			confirmText = RobloxTranslator:FormatByKey("InGame.InspectMenu.Action.Confirm"),
			isMuted = self.state.muteFlipped,
			isBlocked = self.state.blockFlipped,
			onCancelActivated = self.onYesOrNoCancel,
			onConfirmActivated = self.onYesOrNoConfirmation,
			ZIndex = self.props.ZIndex,
		})

		local pageToDisplay

		if currentPage == ReportPages.SelectActions then
			pageToDisplay = selectActionsPage
		elseif currentPage == ReportPages.ConfirmAction then
			pageToDisplay = confirmActionsPage
		end

		return pageToDisplay
	end)
end

return ReportConfirmationContainer
