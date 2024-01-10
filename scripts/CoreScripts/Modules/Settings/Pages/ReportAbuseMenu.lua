--!nonstrict
--[[
		Filename: ReportAbuseMenu.lua
		Written by: jeditkacheff
		Version 1.0
		Description: Takes care of the report abuse page in Settings Menu
--]]

local CoreGui = game:GetService("CoreGui")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GuiService = game:GetService("GuiService")
local PlayersService = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local MarketplaceService = game:GetService("MarketplaceService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local EventIngestService = game:GetService("EventIngestService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local Roact = require(CorePackages.Roact)
local Analytics = require(CorePackages.Workspace.Packages.Analytics).Analytics.new(AnalyticsService)
local EventIngest = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventIngest
local AvatarIdentification = require(CorePackages.Workspace.Packages.TnSAvatarIdentification).AvatarIdentification
local AdIdentification = require(CorePackages.Workspace.Packages.TnSAdIdentification).AdIdentification
local ScreenshotManager = require(CorePackages.Workspace.Packages.TnSScreenshot).ScreenshotManager
local Workspace = game:GetService("Workspace")

local Settings = script:FindFirstAncestor("Settings")

local enumerate = require(CorePackages.enumerate)
local log = require(RobloxGui.Modules.Logger):new(script.Name)

local Cryo = require(CorePackages.Cryo)
local VerifiedBadges = require(CorePackages.Workspace.Packages.VerifiedBadges)

local utility = require(RobloxGui.Modules.Settings.Utility)
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local Url = require(RobloxGui.Modules.Common.Url)
local Theme = require(RobloxGui.Modules.Settings.Theme)

local ReportAbuseAnalytics = require(CorePackages.Workspace.Packages.AbuseReportMenu).ReportAbuseAnalytics

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local ReportAbuseLogic = require(RobloxGui.Modules.VoiceChat.ReportAbuseLogic)
local createVoiceAbuseReportRequest = require(RobloxGui.Modules.VoiceChat.createVoiceAbuseReportRequest)
local VoiceUsersByProximity = require(RobloxGui.Modules.VoiceChat.VoiceUsersByProximity)
local AbuseReportBuilder = require(RobloxGui.Modules.TrustAndSafety.Utility.AbuseReportBuilder)
local ScreenshotFlowStepHandlerContainer =
	require(RobloxGui.Modules.TrustAndSafety.Components.ReportAnything.ScreenshotFlowStepHandlerContainer)
local TrustAndSafetyIXPManager = require(RobloxGui.Modules.TrustAndSafety.TrustAndSafetyIXPManager).default
local ReportAnythingAnalytics = require(RobloxGui.Modules.TrustAndSafety.Utility.ReportAnythingAnalytics)

local DSAReportingPackage = require(CorePackages.Workspace.Packages.DsaIllegalContentReporting)
local isShowEUDSAIllegalContentReportingLink =
	DSAReportingPackage.isShowEUDSAIllegalContentReportingLink
local DSAReportLink = DSAReportingPackage.DSAReportLink

local GetFFlagReportSentPageV2Enabled = require(RobloxGui.Modules.Flags.GetFFlagReportSentPageV2Enabled)
local GetFFlagAbuseReportEnableReportSentPage = require(RobloxGui.Modules.Flags.GetFFlagAbuseReportEnableReportSentPage)
local GetFFlagAddVoiceTagsToAllARSubmissionsEnabled =
	require(RobloxGui.Modules.Flags.GetFFlagAddVoiceTagsToAllARSubmissionsEnabled)
local GetFFlagVoiceARRemoveOffsiteLinksForVoice =
	require(RobloxGui.Modules.Flags.GetFFlagVoiceARRemoveOffsiteLinksForVoice)
local GetFStringReportAbuseIXPLayer = require(RobloxGui.Modules.Flags.GetFStringReportAbuseIXPLayer)
local GetFFlagEnableConfigurableReportAbuseIXP = require(RobloxGui.Modules.Flags.GetFFlagEnableConfigurableReportAbuseIXP)
local GetFFlagReportAbuseMenuEntrypointAnalytics = require(Settings.Flags.GetFFlagReportAbuseMenuEntrypointAnalytics)
local GetFFlagIGMv1ARFlowExpandedAnalyticsEnabled = require(Settings.Flags.GetFFlagIGMv1ARFlowExpandedAnalyticsEnabled)
local GetFIntIGMv1ARFlowCSWaitFrames = require(Settings.Flags.GetFIntIGMv1ARFlowCSWaitFrames)
local GetFFlagReportAnythingAnnotationIXP =
	require(RobloxGui.Modules.Settings.Flags.GetFFlagReportAnythingAnnotationIXP)
local GetFIntIGMv1ARFlowScreenshotDelayFrames =
	require(RobloxGui.Modules.TrustAndSafety.Flags.GetFIntIGMv1ARFlowScreenshotDelayFrames)
local GetFFlagReportAnythingEnableAdReport =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagReportAnythingEnableAdReport
local GetFFlagReportAnythingLocalizationEnabled =
	require(RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagReportAnythingLocalizationEnabled)
local GetFFlagReportAbuseMenuAutosizeYEnabled =
	require(RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagReportAbuseMenuAutosizeYEnabled)
local GetFFlagRAScreenshotOncePerMenuOpenEnabled =
	require(RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagRAScreenshotOncePerMenuOpenEnabled)
local GetFFlagEnableOptionalScreenshotButton2 = require(RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagEnableOptionalScreenshotButton2)
local GetFFlagShrinkReportMenuForVisibility = require(RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagShrinkReportMenuForVisibility)
local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)
game:DefineFastFlag("ReportAbuseExtraAnalytics", false)

local ATTACH_SCREENSHOT_LABEL = {
	ATTACH_SCREENSHOT = "Capture Scene",
	SCREENSHOT_ATTACHED = "Scene Captured"
}

if GetFFlagReportAnythingLocalizationEnabled() then
	ATTACH_SCREENSHOT_LABEL = {
		ATTACH_SCREENSHOT = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.CaptureScene"),
		SCREENSHOT_ATTACHED = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.SceneCaptured"),
	}
end

local ABUSE_TYPES_PLAYER = {
	"Swearing",
	"Inappropriate Username",
	"Bullying",
	"Scamming",
	"Dating",
	"Cheating/Exploiting",
	"Personal Question",
	"Offsite Links",
}

local ABUSE_TYPES_PLAYER_VOICE = {
	"Swearing",
	"Inappropriate Username",
	"Bullying",
	"Scamming",
	"Dating",
	"Cheating/Exploiting",
	"Personal Question",
}

local abuseTypePlayerList = ABUSE_TYPES_PLAYER

local ABUSE_TYPES_GAME = {
	"Inappropriate Content",
}

local AbuseVectorIndex = enumerate("AbuseVectorIndex", {
	["Voice"] = 1,
	["Text"] = 2,
	["Other"] = 3,
})

local DEFAULT_ABUSE_DESC_TEXT = "   Short Description (Optional)"
local DEFAULT_ABUSE_DESC_TEXT_KEY = "Feature.SettingsHub.Label.ReportComment"

if utility:IsSmallTouchScreen() then
	DEFAULT_ABUSE_DESC_TEXT = "   (Optional)"
end

pcall(function()
	if utility:IsSmallTouchScreen() then
		DEFAULT_ABUSE_DESC_TEXT = RobloxTranslator:FormatByKey("KEY_DESCRIPTION_OPTIONAL")
	else
		DEFAULT_ABUSE_DESC_TEXT = RobloxTranslator:FormatByKey(DEFAULT_ABUSE_DESC_TEXT_KEY)
	end
end)

type FormPhase = "Init" | "Annotation" | "AttachScreenshot" | "AttachScreenshotInit"
local FormPhase = {
	Init = "Init" :: "Init",
	Annotation = "Annotation" :: "Annotation",
	AttachScreenshot = "AttachScreenshot" :: "AttachScreenshot",
	AttachScreenshotInit = "AttachScreenshotInit" :: "AttachScreenshotInit"
}

local PageInstance = nil

local success, result = pcall(function()
	return settings():GetFFlag("UseNotificationsLocalization")
end)
local FFlagUseNotificationsLocalization = success and result

local Constants = require(RobloxGui.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))

local timeEntered
local inSortingExperiment = true
local inEntryExperiment = true

type MethodOfAbuse = ReportAbuseLogic.MethodOfAbuse
local MethodsOfAbuse = ReportAbuseLogic.MethodsOfAbuse

type MOAOption = { title: string, subtitle: string, index: number }
local MethodOfAbuseOptions: {
	["voice"]: MOAOption,
	["text"]: MOAOption,
	["other"]: MOAOption,
} = {
	[MethodsOfAbuse.voice] = {
		title = "Feature.SettingsHub.MethodOfAbuse.VoiceChat.Title",
		subtitle = "Feature.SettingsHub.MethodOfAbuse.VoiceChat.Subtitle",
		index = 1,
	},
	[MethodsOfAbuse.text] = {
		title = "Feature.SettingsHub.MethodOfAbuse.Text.Title",
		subtitle = "Feature.SettingsHub.MethodOfAbuse.Text.Subtitle",
		index = 2,
	},
	[MethodsOfAbuse.other] = {
		title = "Feature.SettingsHub.MethodOfAbuse.Other.Title",
		subtitle = "Feature.SettingsHub.MethodOfAbuse.Other.Subtitle",
		index = 3,
	},
}

local function shouldDoReportScreenshot()
	return GetFFlagEnableOptionalScreenshotButton2() and (
		TrustAndSafetyIXPManager:getReportAnythingAvatarEnabled() or
		TrustAndSafetyIXPManager:getReportAnythingExperienceEnabled()
	)
end

local function shouldShowOptionalScreenshotAvatar()
	return GetFFlagEnableOptionalScreenshotButton2() and TrustAndSafetyIXPManager:getReportAnythingAvatarEnabled()
end

local function shouldShowOptionalScreenshotExperience()
	return GetFFlagEnableOptionalScreenshotButton2() and TrustAndSafetyIXPManager:getReportAnythingExperienceEnabled()
end

----------- CLASS DECLARATION --------------
local function Initialize()
	local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
	local this = settingsPageFactory:CreateNewPage()
	this.previousFormPhase = FormPhase.AttachScreenshotInit

	local playerNames = {}
	local sortedUserIds = {}
	local nameToRbxPlayer = {}
	local currentSelectedPlayer = nil
	local nextPlayerToReport = nil

	local voiceChatEnabled = false
	
	this.isAnnotationComplete = false

	this.isHidingForARScreenshot = false
	this.submitButtonActive = false

	this.reportAbuseAnalytics = ReportAbuseAnalytics.new(EventIngest.new(EventIngestService), Analytics.Diag, ReportAbuseAnalytics.MenuContexts.LegacyMenu)

	function this:GetSelectedMethodOfAbuse()
		if this.MethodOfAbuseMode then
			local currentIndex = this.MethodOfAbuseMode.CurrentIndex
			local voiceAllowed = false
			if shouldShowOptionalScreenshotAvatar() then
				if currentIndex == nil then
					return "Chat"
				end
				voiceAllowed = this:shouldVoiceMOABeAvailable() -- stable
			else
				if currentIndex == nil then
					return "Chat"
				end
				voiceAllowed = this:isVoiceReportMethodActive()
			end

			if not voiceAllowed then
				currentIndex += 1
			end

			if currentIndex == 1 then
				return "Voice"
			elseif currentIndex == 2 then
				return "Chat"
			else
				return "Other"
			end
		end
		return "Chat"
	end

	local function getMethodOfAbuseDropdownItems()
		return Cryo.List.map(Cryo.Dictionary.values(MethodOfAbuseOptions), function(item: MOAOption)
			return Cryo.Dictionary.join(item, {
				title = RobloxTranslator:FormatByKey(item.title),
				subtitle = RobloxTranslator:FormatByKey(item.subtitle),
			})
		end)
	end

	local function getSortedMethodOfAbuseList()
		return Cryo.List.sort(getMethodOfAbuseDropdownItems(), function(a, b)
			return a.index < b.index
		end)
	end

	function this:ActivateFormPhase(newFormPhase, isPlayerPreselected)
		local normalFormVisibility = function()
			this.GameOrPlayerFrame.Visible = true
			-- player select should only be visible for player mode
			this.WhichPlayerFrame.Visible = this.GameOrPlayerMode.CurrentIndex == 2
			this.AbuseDescriptionFrame.Visible = true
			this.SubmitButton.Visible = true

			-- method of abuse visibility
			if this.MethodOfAbuseFrame then
				this.MethodOfAbuseFrame.Visible = this.GameOrPlayerMode.CurrentIndex == 2
			end

		end
		local oneButtonSubmit = function()
			if Theme.UIBloxThemeEnabled then
				this.SubmitButton.Position = UDim2.new(0.5, 0, 1, 15)
			else
				this.SubmitButton.Position = UDim2.new(0.5, 0, 1, 5)
			end

			local submitButtonSize = UDim2.new(0, 198, 0, 50)
			if Theme.UIBloxThemeEnabled then
				submitButtonSize = UDim2.new(1, 20, 0, 50)
			end
			this.SubmitButton.Size = submitButtonSize
		end
		local actions: { [FormPhase]: (boolean) -> nil } = {}
		actions[FormPhase.AttachScreenshotInit] = function(isPlayerPreselected)
			-- we want to show the entire form regardless is a player is selected or not
			normalFormVisibility()
			oneButtonSubmit()
			this.isAnnotationComplete = false
			this:updateScreenshotButton(this:GetSelectedMethodOfAbuse())
			this.previousFormPhase = FormPhase.AttachScreenshotInit
		end
		actions[FormPhase.AttachScreenshot] = function(isPlayerPreselected)			
			if this.GameOrPlayerMode.CurrentIndex == 1 or this:GetSelectedMethodOfAbuse() == "Other" then
				this.previousFormPhase = FormPhase.AttachScreenshotInit
				this:mountAnnotationPage()
				return
			end
			this.previousFormPhase = FormPhase.AttachScreenshotInit
		end
		actions[newFormPhase](isPlayerPreselected)
	end

	function this:ActivatePreviousFormPhase()
		if this.previousFormPhase ~= nil then
			this:ActivateFormPhase(this.previousFormPhase)
			return
		end
		this:ActivateFormPhase(FormPhase.AttachScreenshotInit)
	end

	function this:unmountAnnotationPage()
		if this.annotationPageHandle ~= nil then
			Roact.unmount(this.annotationPageHandle)
			this.annotationPageHandle = nil
		end
		if this.annotationPageScreenGui ~= nil then
			this.annotationPageFrame.Parent = nil
			this.annotationPageFrame = nil
			this.annotationPageScreenGui = nil
		end
	end

	function this:mountAnnotationPage()
		local topCornerInset, _ = GuiService:GetGuiInset()
		if not this.annotationPageScreenGui then
			this.annotationPageScreenGui = utility:Create("ScreenGui")({
				Name = "AnnotationPageContents",
				DisplayOrder = 7,
				Enabled = true,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				Parent = RobloxGui,
			})
			this.annotationPageFrame = utility:Create("Frame")({
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 0, -topCornerInset.Y),
				Size = UDim2.new(1, 0, 1, topCornerInset.Y),
				Parent = this.annotationPageScreenGui,
			})
		end

		local onBack = function()
			this:unmountAnnotationPage()
			AbuseReportBuilder.clearAnnotationPoints()
			this:ActivatePreviousFormPhase()
		end

		local onAnnotate = function(points: { Vector2 })
			AbuseReportBuilder.setAnnotationPoints(points)
			this.isAnnotationComplete = true 
			this:updateScreenshotButton(this:GetSelectedMethodOfAbuse())
			this:unmountAnnotationPage()
		end

		local onSkip = function()
			AbuseReportBuilder.clearAnnotationPoints()
			AbuseReportBuilder.setAnnotationOptionSeen(true)
			this.isAnnotationComplete = true 
			this:updateScreenshotButton(this:GetSelectedMethodOfAbuse())
			this:unmountAnnotationPage()
		end

		local onRestart = function()
			ReportAnythingAnalytics.setAbandonedForRetake()
			this:unmountAnnotationPage()
			-- keep the animation on menu close to ensure the Hidden event
			-- fires without being deferred
			this.HubRef:SetVisibility(false, false)
		end

		AbuseReportBuilder.setAnnotationOptionSeen(true)
		local annotationPage = Roact.createElement(ScreenshotFlowStepHandlerContainer, {
			screenshot = AbuseReportBuilder.getScreenshotContentId(),
			entryPoint = if this.GameOrPlayerMode.CurrentIndex == 1 then "experience" else "player",
			backAction = onBack,
			dismissAction = onBack,
			reportAction = onAnnotate,
			restartAction = onRestart,
			skipAnnotationAction = onSkip,
			-- populated if they open the flow by going back from last page
			initialAnnotationPoints = AbuseReportBuilder.getAnnotationPoints(),
			initialPageNumber = if AbuseReportBuilder.getAnnotationPageSeen() then 2 else 1,
			reportAnythingAnalytics = ReportAnythingAnalytics,
		})
		this.annotationPageHandle = Roact.mount(annotationPage, this.annotationPageFrame, "AnnotationPage")
	end

	function this:setReportTimestamp(reportTimeSeconds)
		this.reportTimestamp = reportTimeSeconds
	end

	function this:getReportTimestamp()
		return this.reportTimestamp
	end

	function this:GetPlayerNameText(player)
		if VerifiedBadges.isPlayerVerified(player) then
			return player.DisplayName .. VerifiedBadges.emoji.verified .. "  [@" .. player.Name .. "]"
		else
			return player.DisplayName .. " [@" .. player.Name .. "]"
		end
	end

	function this:GetPlayerFromIndex(index)
		local playerName = playerNames[index]
		if playerName then
			return nameToRbxPlayer[playerName]
		end

		return nil
	end

	function this:SetNextPlayerToReport(player)
		nextPlayerToReport = player
		currentSelectedPlayer = player
		this:SetDefaultMethodOfAbuse(nextPlayerToReport)
		if shouldShowOptionalScreenshotAvatar() then
			this:ActivateFormPhase(FormPhase.AttachScreenshotInit, true)
		end
	end

	function this:shouldVoiceMOABeAvailable()
		local recentVoicePlayers = VoiceChatServiceManager:getRecentUsersInteractionData()
		return recentVoicePlayers and not Cryo.isEmpty(recentVoicePlayers) and this:isVoiceReportMethodActive()
	end

	function this:updateRALayout()
		-- basically updateVoiceLayout but can also run without Voice, and
		-- determines the selected method of abuse correctly.

		-- User-facing rename "Other" to "Avatar"
		MethodOfAbuseOptions.other.title = "Feature.SettingsHub.MethodOfAbuse.AvatarTitle"
		MethodOfAbuseOptions.other.subtitle = "Feature.SettingsHub.MethodOfAbuse.AvatarSubtitle"

		local MOALabel = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.MethodOfAbuse")
		this.MethodOfAbuseFrame, this.MethodOfAbuseLabel, this.MethodOfAbuseMode =
			utility:AddNewRow(this, MOALabel, "DropDown", getSortedMethodOfAbuseList())
		this.MethodOfAbuseMode:SetInteractable(false)
		this.MethodOfAbuseLabel.ZIndex = 1
		this.MethodOfAbuseFrame.LayoutOrder = 2
		this.MethodOfAbuseMode.DropDownFrame.MouseButton1Click:Connect(function()
			if not this:shouldVoiceMOABeAvailable() then
				-- Remove "Voice" option if we don't have any players to show
				this.MethodOfAbuseMode:UpdateDropDownList(Cryo.List.filter(getSortedMethodOfAbuseList(), function(item)
					-- Note that we're using the index property of the TypeOfAbuseOption,
					-- not the index of the AbuseOption in the dropdown list
					return item.index ~= MethodOfAbuseOptions[MethodsOfAbuse.voice].index
				end))
			else
				this.MethodOfAbuseMode:UpdateDropDownList(getSortedMethodOfAbuseList())
			end
		end)

		this.WhichPlayerFrame.LayoutOrder = 3
		this.TypeOfAbuseFrame.LayoutOrder = 4
		this.AbuseDescriptionFrame.LayoutOrder = 6

		local function methodOfAbuseChanged(newIndex)
			--As we're now relying on a reference to the player object instead of the
			--playerlist index, we can update whenever the method of
			--abuse (and potentially sorting behavior) changes
			this:UpdatePlayerDropDown()
			local selectedMethodOfAbuse

			local voiceMOAAvailable = this:shouldVoiceMOABeAvailable()

			if voiceMOAAvailable and newIndex == 1 then
				selectedMethodOfAbuse = "voice"
			elseif (voiceMOAAvailable and newIndex == 2) or newIndex == 1 then
				selectedMethodOfAbuse = "text"
			else
				selectedMethodOfAbuse = "other"
			end
			
			if shouldShowOptionalScreenshotAvatar() then 
				this:updateScreenshotButton(selectedMethodOfAbuse)
			end
			
			this:updateNextButton()
			if GetFFlagVoiceARRemoveOffsiteLinksForVoice() then
				abuseTypePlayerList = if selectedMethodOfAbuse == "voice"
					then ABUSE_TYPES_PLAYER_VOICE
					else ABUSE_TYPES_PLAYER
				this.TypeOfAbuseMode:UpdateDropDownList(abuseTypePlayerList)
				this.TypeOfAbuseMode:SetInteractable(#abuseTypePlayerList > 1)
			end

			this.reportAbuseAnalytics:reportAnalyticsFieldChanged({
				field = "MethodOfAbuse",
				methodOfAbuse = selectedMethodOfAbuse,
			})
		end

		this.MethodOfAbuseMode.IndexChanged:connect(methodOfAbuseChanged)
	end

	function this:updateVoiceLayout()
		if voiceChatEnabled then
			local MOALabel = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.MethodOfAbuse")
			this.MethodOfAbuseFrame, this.MethodOfAbuseLabel, this.MethodOfAbuseMode =
				utility:AddNewRow(this, MOALabel, "DropDown", getSortedMethodOfAbuseList())
			this.MethodOfAbuseMode:SetInteractable(false)
			this.MethodOfAbuseLabel.ZIndex = 1
			this.MethodOfAbuseFrame.LayoutOrder = 2
			this.MethodOfAbuseMode.DropDownFrame.MouseButton1Click:Connect(function()
				local recentVoicePlayers = VoiceChatServiceManager:getRecentUsersInteractionData()
				if Cryo.isEmpty(recentVoicePlayers) or not this:isVoiceReportMethodActive() then
					-- Remove "Voice" option if we don't have any players to show
					this.MethodOfAbuseMode:UpdateDropDownList(
						Cryo.List.filter(getSortedMethodOfAbuseList(), function(item)
							-- Note that we're using the index property of the TypeOfAbuseOption,
							-- not the index of the AbuseOption in the dropdown list
							return item.index ~= MethodOfAbuseOptions[MethodsOfAbuse.voice].index
						end)
					)
				else
					this.MethodOfAbuseMode:UpdateDropDownList(getSortedMethodOfAbuseList())
				end
			end)

			this.WhichPlayerFrame.LayoutOrder = 3
			this.TypeOfAbuseFrame.LayoutOrder = 4
			this.AbuseDescriptionFrame.LayoutOrder = 6

			local function methodOfAbuseChanged(newIndex)
				--As we're now relying on a reference to the player object instead of the
				--playerlist index, we can update whenever the method of
				--abuse (and potentially sorting behavior) changes
				this:UpdatePlayerDropDown()
				local selectedMethodOfAbuse

				if this:isVoiceReportMethodActive() and newIndex == 1 then
					selectedMethodOfAbuse = "voice"
				elseif (this:isVoiceReportMethodActive() and newIndex == 2) or newIndex == 1 then
					selectedMethodOfAbuse = "text"
				else
					selectedMethodOfAbuse = "other"
				end

				if GetFFlagVoiceARRemoveOffsiteLinksForVoice() then
					abuseTypePlayerList = if selectedMethodOfAbuse == "voice"
						then ABUSE_TYPES_PLAYER_VOICE
						else ABUSE_TYPES_PLAYER
					this.TypeOfAbuseMode:UpdateDropDownList(abuseTypePlayerList)
					this.TypeOfAbuseMode:SetInteractable(#abuseTypePlayerList > 1)
				end

				this.reportAbuseAnalytics:reportAnalyticsFieldChanged({
					field = "MethodOfAbuse",
					methodOfAbuse = selectedMethodOfAbuse,
				})
			end

			this.MethodOfAbuseMode.IndexChanged:connect(methodOfAbuseChanged)
		end
	end

	function this:updateMethodOfAbuseDropdown()
		local recentVoicePlayers = VoiceChatServiceManager:getRecentUsersInteractionData()

		--If you select the user before selecting the type of abuse,
		--and that user isn't voice enabled/active, we remove Voice Chat as an option
		if not currentSelectedPlayer or not recentVoicePlayers[tostring(currentSelectedPlayer.UserId)] then
			this.MethodOfAbuseMode:UpdateDropDownList(Cryo.List.filter(getSortedMethodOfAbuseList(), function(item)
				return item.index ~= MethodOfAbuseOptions[MethodsOfAbuse.voice].index
			end))
		else
			this.MethodOfAbuseMode:UpdateDropDownList(getSortedMethodOfAbuseList())
		end
	end

	function this:getPlayerPrimaryPart(player)
		return player and player.Character and player.Character.PrimaryPart
	end

	function this:SetDefaultMethodOfAbuse(player)
		if voiceChatEnabled then
			-- We need to force this here so we set the correct index
			this:updateMethodOfAbuseDropdown()
			if inEntryExperiment then
				local AbuseType = ReportAbuseLogic.GetDefaultMethodOfAbuse(player, VoiceChatServiceManager)
				-- We need to use getSortedMethodOfAbuseList because MethodOfAbuseOptions doesn't have the translated title
				PageInstance.MethodOfAbuseMode:SetSelectionByValue(
					getSortedMethodOfAbuseList()[MethodOfAbuseOptions[AbuseType].index].title
				)
			else
				PageInstance.MethodOfAbuseMode:SetSelectionIndex(1)
			end

		elseif shouldShowOptionalScreenshotAvatar() then
			this.MethodOfAbuseMode:UpdateDropDownList(Cryo.List.filter(getSortedMethodOfAbuseList(), function(item)
				-- Note that we're using the index property of the TypeOfAbuseOption,
				-- not the index of the AbuseOption in the dropdown list
				return item.index ~= MethodOfAbuseOptions[MethodsOfAbuse.voice].index
			end))
			this.MethodOfAbuseMode:SetSelectionByValue(RobloxTranslator:FormatByKey(MethodOfAbuseOptions["text"].title))
		end
	end

	function this:isVoiceReportMethodActive()
		if not voiceChatEnabled then
			return false
		end
		local recentVoicePlayers = VoiceChatServiceManager:getRecentUsersInteractionData()
		local isCurrentSelectedPlayerVoice = if currentSelectedPlayer
				and recentVoicePlayers[tostring(currentSelectedPlayer.UserId)]
			then true
			else false
		return not currentSelectedPlayer or isCurrentSelectedPlayerVoice
	end

	function this:isVoiceReportSelected()
		if not this.MethodOfAbuseMode or (#this.MethodOfAbuseMode.Selections < 3) then
			return false
		end

		local isVoiceDropdownSelected = this.MethodOfAbuseMode.CurrentIndex == AbuseVectorIndex.Voice.rawValue()

		return this:isVoiceReportMethodActive() and isVoiceDropdownSelected
	end

	function this:isOtherReportSelected()
		if not this.MethodOfAbuseMode then
			return false
		end

		local selectedMOA = this:GetSelectedMethodOfAbuse()
		return selectedMOA == "Other"
	end

	function this:UpdatePlayerDropDown()
		local players = {}
		playerNames = {}
		sortedUserIds = {}
		nameToRbxPlayer = {}

		local index = 1

		if this:isVoiceReportSelected() then
			local recentVoicePlayers = VoiceChatServiceManager:getRecentUsersInteractionData()

			for userId, data in pairs(recentVoicePlayers) do
				table.insert(players, data.player)
			end
		else
			players = PlayersService:GetPlayers()
		end

		for i = 1, #players do
			local player = players[i]

			if player ~= PlayersService.LocalPlayer and player.UserId > 0 then
				local nameText = this:GetPlayerNameText(player)
				playerNames[index] = nameText
				nameToRbxPlayer[nameText] = player
				index = index + 1
			end
		end
		if index <= 1 then
			index = #PlayersService:GetPlayers()
		end

		if this:isVoiceReportSelected() and inSortingExperiment then
			local localPlayerPart = this:getPlayerPrimaryPart(PlayersService.LocalPlayer)

			if localPlayerPart then
				local proximityComparator = VoiceUsersByProximity.getComparator(localPlayerPart.Position)
				table.sort(players, proximityComparator)

				playerNames = Cryo.List.map(players, function(player)
					return this:GetPlayerNameText(player)
				end)
			else
				--if no local player part, default to alphabetical
				table.sort(playerNames, function(a, b)
					return a:lower() < b:lower()
				end)
			end
		else
			table.sort(playerNames, function(a, b)
				return a:lower() < b:lower()
			end)
		end

		sortedUserIds = Cryo.List.map(playerNames, function(playerName)
			local player = nameToRbxPlayer[playerName]
			return if player then player.UserId else nil
		end)

		this.WhichPlayerMode:UpdateDropDownList(playerNames)

		--Reset GameOrPlayerMode to Game if no other players
		if index == 1 then
			this.GameOrPlayerMode:SetSelectionIndex(1)
		end

		this.GameOrPlayerMode:SetInteractable(index > 1)

		if this.GameOrPlayerMode.CurrentIndex == 1 then
			this.WhichPlayerMode:SetInteractable(false)
			this.WhichPlayerFrame.Visible = false
			this.TypeOfAbuseMode:UpdateDropDownList(ABUSE_TYPES_GAME)
			this.TypeOfAbuseMode:SetInteractable(#ABUSE_TYPES_GAME > 1)
		else
			this.WhichPlayerLabel.ZIndex = 2
			this.WhichPlayerMode:SetInteractable(index > 1)
			this.WhichPlayerFrame.Visible = index > 1

			if this.MethodOfAbuseMode then
				this.MethodOfAbuseMode:SetInteractable(index > 1)
			end

			this.TypeOfAbuseMode:UpdateDropDownList(abuseTypePlayerList)
			this.TypeOfAbuseMode:SetInteractable(#abuseTypePlayerList > 1)
		end

		local targetPlayer = nextPlayerToReport or currentSelectedPlayer

		if targetPlayer then
			local playerNameText = this:GetPlayerNameText(targetPlayer)
			local playerSelected = this.WhichPlayerMode:SetSelectionByValue(playerNameText)

			nextPlayerToReport = nil

			if this.GameOrPlayerMode.CurrentIndex == 2 then
				if playerSelected then --if the reported player is still in game
					--Auto select type of abuse when report a player
					GuiService.SelectedCoreObject = this.TypeOfAbuseMode.DropDownFrame
				else
					GuiService.SelectedCoreObject = this.WhichPlayerMode.DropDownFrame
				end
			end
		end
	end

	------ TAB CUSTOMIZATION -------
	this.TabHeader.Name = "ReportAbuseTab"
	if Theme.UIBloxThemeEnabled then
		local icon = Theme.Images["icons/actions/feedback"]
		this.TabHeader.TabLabel.Icon.ImageRectOffset = icon.ImageRectOffset
		this.TabHeader.TabLabel.Icon.ImageRectSize = icon.ImageRectSize
		this.TabHeader.TabLabel.Icon.Image = icon.Image

		this.TabHeader.TabLabel.Title.Text = "Report"
	else
		this.TabHeader.Icon.Image = "rbxasset://textures/ui/Settings/MenuBarIcons/ReportAbuseTab.png"
		if FFlagUseNotificationsLocalization then
			this.TabHeader.Title.Text = "Report"
		else
			this.TabHeader.Icon.Title.Text = "Report"
		end
	end

	------ PAGE CUSTOMIZATION -------
	this.Page.Name = "ReportAbusePage"

	if Theme.UseStickyBar() or GetFFlagReportAbuseMenuAutosizeYEnabled() then
		-- create a safe zone bottom padding
		utility:Create'Frame'
		{
			Name = "PageViewInnerFrame",
			Size = UDim2.new(1, 0, 0, if GetFFlagShrinkReportMenuForVisibility() then 40 else 80),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Selectable = false,
			Parent = this.Page,
			LayoutOrder = 10,
		};
	end

	if GetFFlagReportAbuseMenuAutosizeYEnabled() then
		this.Page.AutomaticSize = Enum.AutomaticSize.Y
	end

	-- need to override this function from SettingsPageFactory
	-- DropDown menus require hub to to be set when they are initialized
	function this:SetHub(newHubRef)
		this.HubRef = newHubRef

		this.HubRef.SettingsShowSignal:connect(function(isOpen)
			if isOpen then
				this:setReportTimestamp(Workspace:GetServerTimeNow())
			else
				if GetFFlagRAScreenshotOncePerMenuOpenEnabled() and shouldDoReportScreenshot() then
					-- clear out the screenshot related state only when the entire menu closes
					AbuseReportBuilder.clear()
				end
			end
		end)

		if utility:IsSmallTouchScreen() then
			this.GameOrPlayerFrame, this.GameOrPlayerLabel, this.GameOrPlayerMode =
				utility:AddNewRow(this, "Experience or Person?", "Selector", { "Experience", "Person" }, 2)
		else
			this.GameOrPlayerFrame, this.GameOrPlayerLabel, this.GameOrPlayerMode =
				utility:AddNewRow(this, "Experience or Person?", "Selector", { "Experience", "Person" }, 2, 3)
		end
		this.GameOrPlayerMode.Selection.LayoutOrder = 1

		local whichPlayerText = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.WhichPlayer")
		this.WhichPlayerFrame, this.WhichPlayerLabel, this.WhichPlayerMode =
			utility:AddNewRow(this, whichPlayerText, "DropDown", { "update me" })
		this.WhichPlayerMode:SetInteractable(false)
		this.WhichPlayerFrame.Visible = false
		this.WhichPlayerMode:SetAutoLocalize(false)
		this.WhichPlayerLabel.ZIndex = 1
		this.WhichPlayerFrame.LayoutOrder = 2

		local typeOfAbuseText = "Reason for Abuse?"
		this.TypeOfAbuseFrame, this.TypeOfAbuseLabel, this.TypeOfAbuseMode =
			utility:AddNewRow(this, typeOfAbuseText, "DropDown", ABUSE_TYPES_GAME)

		this.TypeOfAbuseFrame.LayoutOrder = 3

		if Theme.UIBloxThemeEnabled then
			this.AbuseDescriptionFrame, this.AbuseDescriptionLabel, this.AbuseDescription =
				utility:AddNewRow(this, "", "TextBox", nil, nil, 1)
			this.AbuseDescription.Selection.PlaceholderText = DEFAULT_ABUSE_DESC_TEXT

			this.AbuseDescriptionLabel.Text = "Abuse Description"
			this.AbuseDescriptionFrame.Size = UDim2.new(1, 0, 0, if GetFFlagShrinkReportMenuForVisibility() then 40 else 100)
			this.AbuseDescriptionLabel.TextYAlignment = Enum.TextYAlignment.Top

			utility:Create("UICorner")({
				CornerRadius = Theme.MenuContainerCornerRadius,
				Parent = this.AbuseDescription.Selection,
			})

			utility:Create("UIPadding")({
				PaddingTop = UDim.new(0, 4),
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10),
				PaddingBottom = UDim.new(0, 0),
				Parent = this.AbuseDescription.Selection,
			})

			utility:Create("UIStroke")({
				Name = "Border",
				Color = Theme.color("ControlInputStroke"), -- overwritten
				Transparency = Theme.transparency("ControlInputStroke"), -- overwritten
				Thickness = Theme.DefaultStokeThickness, -- overwritten
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Parent = this.AbuseDescription.Selection,
			})

			this.AbuseDescription.Selection.BackgroundColor3 = Theme.color("ControlInputBackground")
			this.AbuseDescription.Selection.BackgroundTransparency = Theme.transparency("ControlInputBackground")
			this.AbuseDescription.Selection.TextColor3 = Theme.color("ControlInputText")
		elseif utility:IsSmallTouchScreen() then
			this.AbuseDescriptionFrame, this.AbuseDescriptionLabel, this.AbuseDescription =
				utility:AddNewRow(this, "", "TextBox", nil, nil, 5)
			this.AbuseDescription.Selection.PlaceholderText = DEFAULT_ABUSE_DESC_TEXT

			this.AbuseDescriptionLabel.Text = "Abuse Description"
		else
			this.AbuseDescriptionFrame, this.AbuseDescriptionLabel, this.AbuseDescription =
				utility:AddNewRow(this, "", "TextBox", nil, nil, 5)
			this.AbuseDescription.Selection.PlaceholderText = DEFAULT_ABUSE_DESC_TEXT

			this.AbuseDescriptionFrame.Size = UDim2.new(1, -10, 0, 100)
			this.AbuseDescription.Selection.Size = UDim2.new(1, 0, 1, 0)
		end

		this.AbuseDescriptionFrame.LayoutOrder = 6

		this.AbuseDescription.Selection.FocusLost:connect(function()
			if Theme.UIBloxThemeEnabled then
				local Border = this.AbuseDescription.Selection.Border
				Border.Thickness = 1
				Border.Color = Theme.color("ControlInputStroke")
				Border.Transparency = Theme.transparency("ControlInputStroke")
			end
		end)

		if Theme.UIBloxThemeEnabled then
			this.AbuseDescription.Selection.Focused:connect(function()
				local Border = this.AbuseDescription.Selection.Border
				Border.Thickness = 2
				Border.Color = Theme.color("ControlInputFocusedStroke")
				Border.Transparency = Theme.transparency("ControlInputFocusedStroke")
			end)
		end

		local function updateMethodOfAbuseVisibility()
			if this.MethodOfAbuseMode then
				this.MethodOfAbuseFrame.Visible = this.GameOrPlayerMode.CurrentIndex == 2
			end
		end

		VoiceChatServiceManager:asyncInit()
			:andThen(function()
				local layerData = nil
				if GetFFlagEnableConfigurableReportAbuseIXP() then
					IXPServiceWrapper:InitializeAsync(
						PlayersService.LocalPlayer.UserId,
						GetFStringReportAbuseIXPLayer()
					)
					layerData = IXPServiceWrapper:GetLayerData(GetFStringReportAbuseIXPLayer())
				else
					IXPServiceWrapper:InitializeAsync(
						PlayersService.LocalPlayer.UserId,
						"Social.VoiceAbuseReport.ReportAbuseMenu.V1"
					)
					layerData = IXPServiceWrapper:GetLayerData("Social.VoiceAbuseReport.ReportAbuseMenu.V1")
				end

				if layerData then
					inSortingExperiment = layerData.VoiceAbuseReportProximitySort
					inEntryExperiment = layerData.VoiceAbuseReportSmartEntry

					if not GetFFlagEnableConfigurableReportAbuseIXP() then
						if layerData.VoiceAbuseReportDisabled == nil then
							voiceChatEnabled = false
						else
							voiceChatEnabled = not layerData.VoiceAbuseReportDisabled
						end
					else
						voiceChatEnabled = true
					end
				else
					-- We default to NOT showing the method of abuse if IXP is down and everything else is working
					voiceChatEnabled = false
				end
				log:debug(
					"Voice Chat {}. In Sorting Experiment {}, In Entry Experiment {}.",
					voiceChatEnabled,
					inSortingExperiment,
					inEntryExperiment
				)
				if game:GetFastFlag("ReportAbuseExtraAnalytics") then
					log:debug(
						"IXP Result {} for user {}",
						HttpService:JSONEncode(layerData),
						PlayersService.LocalPlayer.UserId
					)
				end

				local function TnSIXPInitializationCallback()
					if not shouldShowOptionalScreenshotAvatar() then
						this:updateVoiceLayout()
						updateMethodOfAbuseVisibility()
					end
				end

				if GetFFlagReportAnythingAnnotationIXP() then
					-- Let RA layout run instead if eligible. Voice layout will run
					-- if RA is not eligible. Register this callback here since at
					-- this point we know if Voice is enabled or not, whereas we
					-- don't know yet in the other callback as TnS IXP is
					-- initialized before Voice IXP.
					TrustAndSafetyIXPManager:waitForInitialization(TnSIXPInitializationCallback)
				else
					this:updateVoiceLayout()
					updateMethodOfAbuseVisibility()
				end
			end)
			:catch(function()
				voiceChatEnabled = false
				log:warning("ReportAbuseMenu: Failed to init VoiceChatServiceManager")
			end)

		local _SelectionOverrideObject = utility:Create("ImageLabel")({
			Image = "",
			BackgroundTransparency = 1,
		})

		this.SubmitButton, this.SubmitText = nil, nil

		local function makeSubmitButtonActive()
			this.SubmitButton.ZIndex = 2
			this.SubmitButton.Selectable = true
			this.SubmitText.ZIndex = 2
			this.SubmitButton.ImageTransparency = 0
			this.SubmitText.TextTransparency = 0
			this.submitButtonActive = true
		end

		local function makeSubmitButtonInactive()
			this.SubmitButton.ZIndex = 1
			this.SubmitButton.Selectable = false
			this.SubmitText.ZIndex = 1
			this.SubmitButton.ImageTransparency = 0.75
			this.SubmitText.TextTransparency = 0.75
			this.submitButtonActive = false
		end

		this.NextButton, this.NextText, this.NextEnabled = nil, nil, false

		function this:makeNextButtonActive()
			this.NextButton.ZIndex = 2
			this.NextButton.Selectable = true
			this.NextText.ZIndex = 2
			this.NextEnabled = true
		end

		function this:makeNextButtonInactive()
			this.NextButton.ZIndex = 1
			this.NextButton.Selectable = false
			this.NextText.ZIndex = 1
			this.NextEnabled = false
		end
		
		function this:resetScreenshot()
			AbuseReportBuilder.clearAnnotationPoints()
			this.isAnnotationComplete = false 
		end
		
		function this:updateScreenshotButton(selectedMethodOfAbuse) 
			if shouldShowOptionalScreenshotExperience() and this.GameOrPlayerMode.CurrentIndex == 1 then
				this.AttachScreenshotRow.Visible = true
			elseif shouldShowOptionalScreenshotAvatar() and (selectedMethodOfAbuse and 
					(selectedMethodOfAbuse == "other" or selectedMethodOfAbuse == "Other")) then 
				this.AttachScreenshotRow.Visible = true
			else 
				this.AttachScreenshotRow.Visible = false 
			end

			if this.isAnnotationComplete then 
				this.ScreenshotText.Text = ATTACH_SCREENSHOT_LABEL.SCREENSHOT_ATTACHED
				this.ScreenshotButton.ImageTransparency = 1
				this.ScreenshotButton.Selectable = false
				this.ScreenshotButton.Active = false
				this.hintLabel.Image = "rbxasset://textures/ui/PlayerList/Accept.png"
			else 
				this.ScreenshotText.Text = ATTACH_SCREENSHOT_LABEL.ATTACH_SCREENSHOT
				this.ScreenshotButton.ImageTransparency = 0
				this.ScreenshotButton.Selectable = true
				this.ScreenshotButton.Active = true
				this.hintLabel.Image = "rbxasset://textures/ui/Settings/MenuBarIcons/CaptureTab.png"
			end
		end
		
		local function onAttachScreenshot()
			if not this.isAnnotationComplete then
				this:ActivateFormPhase(FormPhase.AttachScreenshot)
			end
		end

		function this:initIllegalContentReportLink()
			this.IllegalReportFrame = utility:Create'Frame'{
				BackgroundTransparency = 1,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(1, 0, 0, 40),
				Parent = this.Page,
				-- Using 11 here so it's right below submit button
				LayoutOrder = 11
			}

			local dsaLinkComponent = Roact.createElement(DSAReportLink)

			Roact.mount(dsaLinkComponent, this.IllegalReportFrame, "dsLink")


		end
		
		function this:initOptionalScreenshotButton() 	
			local button_width = if utility:IsSmallTouchScreen() then 200 else 250 
			local label = if utility:IsSmallTouchScreen() then "Attach Screenshot?\n(optional)" else "Attach Screenshot? (optional)"
			if GetFFlagReportAnythingLocalizationEnabled() then
				label = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.AttachScreenshot")
			end
			local icon_size = 40
			local icon_end = icon_size / (button_width * 0.8)
			local text_start = icon_end

			local buttonHeight = if GetFFlagShrinkReportMenuForVisibility() then 40 else 50
			
			local attachScreenshotButtonsize = UDim2.new(0,button_width,0,buttonHeight)
			if Theme.UIBloxThemeEnabled then
				attachScreenshotButtonsize = UDim2.new(0,button_width,0,buttonHeight)
			end
			local screenshotImage = "rbxasset://textures/ui/Settings/MenuBarIcons/CaptureTab.png"
			
			this.ScreenshotButton, this.ScreenshotText = utility:MakeStyledButton(
				"ScreenshotButton", 
				ATTACH_SCREENSHOT_LABEL.ATTACH_SCREENSHOT,
				attachScreenshotButtonsize, 
				onAttachScreenshot, 
				this
			)
			
			this.ScreenshotButton.AnchorPoint = Vector2.new(0.5,0)
			local screenshotButtonYOffset = if GetFFlagShrinkReportMenuForVisibility() then 7 else 0
			if Theme.UIBloxThemeEnabled then
				local hintOffset = 9 + 33
				local rightPad = 9
				this.ScreenshotButton.Position = UDim2.new(1, -button_width / 2, 0, screenshotButtonYOffset)
				this.ScreenshotText.Size = UDim2.new(1,-(hintOffset+rightPad),1.0,0)
				this.ScreenshotText.Position = UDim2.new(1,-rightPad,0,0)
				this.ScreenshotText.AnchorPoint = Vector2.new(1,0)
			else
				this.ScreenshotButton.Position = UDim2.new(1, -button_width / 2, 0, screenshotButtonYOffset)
				this.ScreenshotText.Size = UDim2.new(0.75,0,0.9,0)
				this.ScreenshotText.Position = UDim2.new(text_start,0,0,0)
			end	
			
			this.ScreenshotButtonInnerFrame = utility:Create'Frame'{
				BackgroundTransparency = 1,
				Position = UDim2.new(0.5,0,0.5,0),
				Size = UDim2.new(0.80,0,1,0),
				Parent = this.ScreenshotButton
			}
			this.ScreenshotButtonInnerFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			this.hintLabel = utility:Create'ImageLabel'
			{
				Name = "ScreenshotImage",
				ZIndex = 1,
				BackgroundTransparency = 1,
				Image = screenshotImage,
				Parent = this.ScreenshotButtonInnerFrame
			};
			this.ScreenshotText.Parent = this.ScreenshotButtonInnerFrame
			if Theme.UIBloxThemeEnabled then
				this.hintLabel.AnchorPoint = Vector2.new(0.0,0.5)
				this.hintLabel.Position = UDim2.new(0,9,0.5,0)
				this.hintLabel.Size = UDim2.new(0,33,0,33)
			else
				this.hintLabel.AnchorPoint = Vector2.new(0,0.5)
				this.hintLabel.Position = UDim2.new(0,0,0.45,0)
				this.hintLabel.Size = UDim2.new(0,icon_size,0,icon_size)
			end
			
			this.AttachScreenshotRow = utility:AddNewRowObject(this, label, this.ScreenshotButton, nil, GetFFlagReportAnythingLocalizationEnabled())
			this.AttachScreenshotRow.LayoutOrder = 5
			this:updateScreenshotButton()
		end

		function this:isPlayerModeSubmissionAllowed()
			-- previous behavior in player mode branch of
			-- updateSubmitButton, moved here.
			if this.WhichPlayerMode:GetSelectedIndex() then
				if this.TypeOfAbuseMode:GetSelectedIndex() then
					return true
				end
			end
			return false
		end

		local function updateSubmitButton()
			if this.GameOrPlayerMode.CurrentIndex == 1 then -- 1 is Report Game
				makeSubmitButtonActive()
				return
			else
				if this:isPlayerModeSubmissionAllowed() then
					makeSubmitButtonActive()
					return
				end
			end
			makeSubmitButtonInactive()
		end

		function this:updateNextButton()
			if not this.NextButton then
				return
			end
			if this.GameOrPlayerMode.CurrentIndex == 1 then -- 1 is Report Game
				this:makeNextButtonActive()
			else
				local methodOfAbuseSelected = this:GetSelectedMethodOfAbuse()
				if methodOfAbuseSelected ~= nil then
					this:makeNextButtonActive()
				else
					this:makeNextButtonInactive()
				end
			end
		end

		local function updateAbuseDropDown(isUserInitiated: boolean?)
			this.WhichPlayerMode:ResetSelectionIndex()
			this.TypeOfAbuseMode:ResetSelectionIndex()
			updateMethodOfAbuseVisibility()
			this:resetScreenshot()
			if this.GameOrPlayerMode.CurrentIndex == 1 then
				this.TypeOfAbuseMode:UpdateDropDownList(ABUSE_TYPES_GAME)

				this.TypeOfAbuseMode:SetInteractable(#ABUSE_TYPES_GAME > 1)

				this.TypeOfAbuseMode:SetSelectionIndex(1)

				this.TypeOfAbuseLabel.ZIndex = (#ABUSE_TYPES_GAME > 1 and 2 or 1)

				this.WhichPlayerMode:SetInteractable(false)
				this.WhichPlayerFrame.Visible = false
				this.WhichPlayerLabel.ZIndex = 1

				updateSubmitButton()
				if shouldDoReportScreenshot() then 
					currentSelectedPlayer = nil
					nextPlayerToReport = nil
					this:updateScreenshotButton(nil)
				end
			else
				this.TypeOfAbuseMode:UpdateDropDownList(abuseTypePlayerList)
				this.TypeOfAbuseMode:SetInteractable(#abuseTypePlayerList > 1)
				this.TypeOfAbuseLabel.ZIndex = (#abuseTypePlayerList > 1 and 2 or 1)

				if #playerNames > 0 then
					this.WhichPlayerMode:SetInteractable(true)
					this.WhichPlayerFrame.Visible = true
					this.WhichPlayerLabel.ZIndex = 2
				else
					this.WhichPlayerMode:SetInteractable(false)
					this.WhichPlayerFrame.Visible = false
					this.WhichPlayerLabel.ZIndex = 1
				end

				updateSubmitButton()
				if shouldDoReportScreenshot() then 
					-- still need to call this even if only Experience screenshot
					-- is enabled (even though we are switching to Player reporting
					-- in this branch of this function) so that we can hide the
					-- screenshot button for Avatar if applicable
					this:updateScreenshotButton(this:GetSelectedMethodOfAbuse())
				end
			end

			local abuseType = "Game"

			if this.GameOrPlayerMode.CurrentIndex == 2 then
				abuseType = "Player"
			end

			if isUserInitiated then
				this.reportAbuseAnalytics:reportAnalyticsFieldChanged({
					field = "GameOrPlayer",
					abuseType = abuseType,
				})
			end
		end

		local function cleanupReportAbuseMenu()
			updateAbuseDropDown(false)
			this.AbuseDescription.Selection.Text = ""
			-- animation enabled for deferred lua workaround
			this.HubRef:SetVisibility(false, not shouldDoReportScreenshot())
		end

		local function onReportSubmitted()
			if this.submitButtonActive == false then
				return
			end

			local abuseReason = nil
			local methodOfAbuse = nil
			local reportSucceeded = false
			local isReportSentEnabled = false
			local showReportSentAlert = false

			this.hasBeenSubmitted = true
			local timeToComplete = DateTime.now().UnixTimestampMillis - timeEntered.UnixTimestampMillis

			if this.GameOrPlayerMode.CurrentIndex == 2 then
				abuseReason = abuseTypePlayerList[this.TypeOfAbuseMode.CurrentIndex]

				local currentAbusingPlayer = this:GetPlayerFromIndex(this.WhichPlayerMode.CurrentIndex)
				local shouldProceedWithReport = currentAbusingPlayer and abuseReason

				if shouldShowOptionalScreenshotAvatar() then
					shouldProceedWithReport = this:isPlayerModeSubmissionAllowed()
				end

				if shouldProceedWithReport then
					reportSucceeded = true
					showReportSentAlert = true
					local layerData = IXPServiceWrapper:GetLayerData("AbuseReports")
					local dialogVariant = layerData.thankYouDialog
					isReportSentEnabled = self.HubRef.ReportSentPage
						and GetFFlagAbuseReportEnableReportSentPage()
						and dialogVariant == "variant" -- "Report Sent" is only enabled for reporting players

					if this.MethodOfAbuseMode then
						methodOfAbuse = PageInstance:GetSelectedMethodOfAbuse()

						if not GetFFlagIGMv1ARFlowExpandedAnalyticsEnabled() then
							this.reportAbuseAnalytics:reportFormSubmitted(timeToComplete, methodOfAbuse, {
								typeOfAbuse = abuseReason,
							})
						end
					end

					if
						(GetFFlagAddVoiceTagsToAllARSubmissionsEnabled() and this.MethodOfAbuseMode)
						or this:isVoiceReportSelected()
					then
						pcall(function()
							task.spawn(function()
								local request = createVoiceAbuseReportRequest(PlayersService, VoiceChatServiceManager, {
									localUserId = PlayersService.LocalPlayer.UserId,
									abuserUserId = currentAbusingPlayer.UserId,
									abuseComment = this.AbuseDescription.Selection.Text,
									abuseReason = abuseReason,
									inExpMenuOpenedUnixMilli = math.floor(this:getReportTimestamp() * 1000), --milliseconds conversion
									sortedPlayerListUserIds = sortedUserIds,
									abuseVector = string.lower(methodOfAbuse),
								})
								if game:GetEngineFeature("AbuseReportV3") then
									PlayersService:ReportAbuseV3(PlayersService.LocalPlayer, request)
								else
									local fullUrl = Url.APIS_URL .. "/abuse-reporting/v2/abuse-report"
									HttpRbxApiService:PostAsyncFullUrl(fullUrl, request)
								end
							end)
						end)
					elseif (shouldShowOptionalScreenshotAvatar() and this:isOtherReportSelected()) then
						pcall(function()
							task.spawn(function()
								local request = AbuseReportBuilder.buildOtherReportRequest({
									localUserId = PlayersService.LocalPlayer.UserId,
									formSelectedAbuserUserId = currentAbusingPlayer and currentAbusingPlayer.UserId,
									abuseComment = this.AbuseDescription.Selection.Text,
									abuseReason = abuseReason,
									menuEntryPoint = this.reportAbuseAnalytics:getAbuseReportSessionEntryPoint(),
									variant = AbuseReportBuilder.Constants.Variant.E3
								})
								PlayersService:ReportAbuseV3(PlayersService.LocalPlayer, request)
								if #AbuseReportBuilder.getSelectedAbusers() > 0 or not currentAbusingPlayer then
									isReportSentEnabled = false -- disable new page that needs to be passed one specific player
									showReportSentAlert = true -- use old page that does not need a player
								end
							end)
						end)
					else
						spawn(function()
							PlayersService:ReportAbuse(currentAbusingPlayer, abuseReason, this.AbuseDescription.Selection.Text)
						end)
					end

					if GetFFlagIGMv1ARFlowExpandedAnalyticsEnabled() then
						local submittedParameters = {
							typeOfAbuse = abuseReason,
						}

						if shouldShowOptionalScreenshotAvatar() then
							local accumulatedParameters = ReportAnythingAnalytics.getAccumulatedParameters()
							submittedParameters = Cryo.Dictionary.join(
								submittedParameters,
								accumulatedParameters,
								AbuseReportBuilder.getAnalyticsParameters(),
								{ abandonedForRetake = Cryo.None }
							)
							ReportAnythingAnalytics.clear()
						end

						this.reportAbuseAnalytics:reportFormSubmitted(
							timeToComplete,
							methodOfAbuse or "Chat",
							submittedParameters
						)
					end

					if GetFFlagReportSentPageV2Enabled() and this:isVoiceReportSelected() then
						showReportSentAlert = false
						self.HubRef.ReportSentPageV2:ShowReportedPlayer(currentAbusingPlayer, true)
					elseif isReportSentEnabled then
						showReportSentAlert = false -- Don't show the alert, since we'll show a different page
						self.HubRef.ReportSentPage:ShowReportedPlayer(currentAbusingPlayer)
					end
				end
			else
				abuseReason = ABUSE_TYPES_GAME[this.TypeOfAbuseMode.CurrentIndex]
				if abuseReason then
					reportSucceeded = true
					showReportSentAlert = true

					if shouldShowOptionalScreenshotExperience() then
						local request = AbuseReportBuilder.buildExperienceReportRequest({
							localUserId = PlayersService.LocalPlayer.UserId,
							placeId = game.PlaceId,
							abuseComment = this.AbuseDescription.Selection.Text,
							abuseReason = abuseReason,
							menuEntryPoint = this.reportAbuseAnalytics:getAbuseReportSessionEntryPoint(),
							variant = AbuseReportBuilder.Constants.Variant.E3
						})
						PlayersService:ReportAbuseV3(PlayersService.LocalPlayer, request)
					else
						spawn(function()
							local placeId, placeName, placeDescription = tostring(game.PlaceId), "N/A", "N/A"
							local abuseDescription = this.AbuseDescription.Selection.Text
							pcall(function()
								local productInfo = MarketplaceService:GetProductInfo(game.PlaceId, Enum.InfoType.Asset)
								placeName = productInfo.Name
								placeDescription = productInfo.Description
							end)
							local formattedText = string.format(
								"User Report: \n    %s \n"
									.. "Place Title: \n    %s \n"
									.. "PlaceId: \n    %s \n"
									.. "Place Description: \n    %s \n",
								abuseDescription,
								placeName,
								placeId,
								placeDescription
							)

							PlayersService:ReportAbuse(nil, abuseReason, formattedText)
						end)
					end
					if GetFFlagIGMv1ARFlowExpandedAnalyticsEnabled() then
						local submittedParameters = {
							typeOfAbuse = abuseReason,
						}

						if shouldShowOptionalScreenshotExperience() then
							local accumulatedParameters = ReportAnythingAnalytics.getAccumulatedParameters()
							submittedParameters = Cryo.Dictionary.join(
								submittedParameters,
								accumulatedParameters,
								AbuseReportBuilder.getAnalyticsParameters(),
								{ abandonedForRetake = Cryo.None }
							)
							ReportAnythingAnalytics.clear()
						end

						this.reportAbuseAnalytics:reportFormSubmitted(timeToComplete, "Game", submittedParameters)
					end
				end
			end

			if showReportSentAlert then
				local alertText =
					"Thanks for your report! Our moderators will review the chat logs and evaluate what happened."

				if abuseReason == "Cheating/Exploiting" then
					alertText = "Thanks for your report! We've recorded your report for evaluation."
				elseif abuseReason == "Inappropriate Username" then
					alertText = "Thanks for your report! Our moderators will evaluate the username."
				elseif
					abuseReason == "Bad Model or Script"
					or abuseReason == "Inappropriate Content"
					or abuseReason == "Offsite Link"
					or abuseReason == "Offsite Links"
				then
					alertText = "Thanks for your report! Our moderators will review the place and make a determination."
				end

				if shouldDoReportScreenshot() then
					alertText = "We’ve received your report and will take action soon if needed. Your feedback helps keep our community safe."
				end

				utility:ShowAlert(alertText, "Ok", this.HubRef, cleanupReportAbuseMenu)
			end

			if reportSucceeded then
				this.LastSelectedObject = nil
				if shouldDoReportScreenshot() then
					AbuseReportBuilder.clear()
					this:ActivateFormPhase(FormPhase.AttachScreenshotInit)
				end
			end
		end
		local submitButtonHeight = if GetFFlagShrinkReportMenuForVisibility() then 36 else 50
		local submitButtonSize = UDim2.new(0, 198, 0, submitButtonHeight)
		if Theme.UIBloxThemeEnabled then
			submitButtonSize = UDim2.new(1, 20, 0, submitButtonHeight)
		end

		this.SubmitButton, this.SubmitText =
			utility:MakeStyledButton("SubmitButton", "Submit", submitButtonSize, onReportSubmitted, this)
		this.SubmitButton.AnchorPoint = Vector2.new(0.5, 0)

		if Theme.UIBloxThemeEnabled then
			this.SubmitButton.Position = UDim2.new(0.5, 0, 1, 15)
		else
			this.SubmitButton.Position = UDim2.new(0.5, 0, 1, 5)
		end

		updateSubmitButton()

		this.SubmitButton.Parent = this.AbuseDescription.Selection


		this.SubmitButton.Parent = this.AbuseDescription.Selection

		local function playerSelectionChanged(newIndex)
			if voiceChatEnabled then
				currentSelectedPlayer = this:GetPlayerFromIndex(this.WhichPlayerMode.CurrentIndex)

				this:updateMethodOfAbuseDropdown()

				if not GetFFlagIGMv1ARFlowExpandedAnalyticsEnabled() then
					this.reportAbuseAnalytics:reportAnalyticsFieldChanged({
						field = "PlayerSelection",
					})
				end
			end

			if GetFFlagIGMv1ARFlowExpandedAnalyticsEnabled() then
				this.reportAbuseAnalytics:reportAnalyticsFieldChanged({
					field = "PlayerSelection",
				})
			end

			updateSubmitButton()
		end
		this.WhichPlayerMode.IndexChanged:connect(playerSelectionChanged)

		local function typeOfAbuseChanged(newIndex)
			if shouldShowOptionalScreenshotAvatar() then 
				this:updateScreenshotButton(this:GetSelectedMethodOfAbuse())
			end
			updateSubmitButton()
		end
		this.TypeOfAbuseMode.IndexChanged:connect(typeOfAbuseChanged)

		this.GameOrPlayerMode.IndexChanged:connect(function()
			updateAbuseDropDown(true)
		end)

		local function abuseDescriptionChanged()
			updateSubmitButton()
		end
		this.AbuseDescription.Selection:GetPropertyChangedSignal("Text"):connect(abuseDescriptionChanged)

		this:AddRow(nil, nil, this.AbuseDescription)

		if Theme.UIBloxThemeEnabled then
			this.Page.Size =
				UDim2.new(1, 0, 0, this.SubmitButton.AbsolutePosition.Y + this.SubmitButton.AbsoluteSize.Y + 30)
		else
			this.Page.Size = UDim2.new(1, 0, 0, this.SubmitButton.AbsolutePosition.Y + this.SubmitButton.AbsoluteSize.Y)
		end

		-- IXP initialization is async. We need to do the following updates after getting the IXP variables.
		local function ixpInitializationCallback()
			if shouldShowOptionalScreenshotAvatar() then
				this:updateRALayout()
				updateMethodOfAbuseVisibility()
				updateSubmitButton()
			end

			if shouldDoReportScreenshot() then 
				this:initOptionalScreenshotButton()
			end
		end
		if isShowEUDSAIllegalContentReportingLink() then
			this:initIllegalContentReportLink()
		end

		if GetFFlagReportAnythingAnnotationIXP() then
			TrustAndSafetyIXPManager:waitForInitialization(ixpInitializationCallback)
		end
	end

	return this
end

local open = false
----------- Public Facing API Additions --------------
do
	PageInstance = Initialize()

	PageInstance.Displayed.Event:connect(function()
		local kickOffScreenshot = shouldDoReportScreenshot() and not PageInstance.isHidingForARScreenshot

		if GetFFlagRAScreenshotOncePerMenuOpenEnabled() then
			kickOffScreenshot = kickOffScreenshot and (AbuseReportBuilder.getScreenshotContentId() == "")
		end

		if kickOffScreenshot then
			PageInstance.isHidingForARScreenshot = true
			PageInstance.HubRef:SetVisibility(false, true)

			AbuseReportBuilder.clear()

			ReportAnythingAnalytics.clear()

			local avatarIDConnection: RBXScriptConnection
			local screenshotWaitCount = 0
			local waitCount = 0
			local waitConnection: RBXScriptConnection

			avatarIDConnection = RunService.Heartbeat:Connect(function()
				if screenshotWaitCount < GetFIntIGMv1ARFlowScreenshotDelayFrames() then
					screenshotWaitCount += 1
					return
				end
				local identifiedAvatars, avatarIDStats = AvatarIdentification.getVisibleAvatars()
				ScreenshotManager:TakeScreenshotWithCallback(
					AbuseReportBuilder.setScreenshotId,
					AbuseReportBuilder.setScreenshotContentId
				)
				AbuseReportBuilder.setAvatarIDStats(avatarIDStats)
				AbuseReportBuilder.setIdentifiedAvatars(identifiedAvatars)
				ReportAnythingAnalytics.emitAvatarsIdentifiedStats(avatarIDStats)

				if GetFFlagReportAnythingEnableAdReport() then
					local identifiedAds, adIDStats = AdIdentification.getVisibleAds()
					AbuseReportBuilder.setAdIDStats(adIDStats)
					AbuseReportBuilder.setIdentifiedAds(identifiedAds)
				end

				avatarIDConnection:Disconnect()
			end)

			waitConnection = RunService.Heartbeat:Connect(function()
				if waitCount < GetFIntIGMv1ARFlowCSWaitFrames() then
					waitCount += 1
				else
					PageInstance.HubRef:SetVisibility(
						true,
						true,
						PageInstance,
						nil,
						Constants.AnalyticsMenuOpenTypes.ScreenshotUnhide
					)
					PageInstance.isHidingForARScreenshot = false
					PageInstance.isAnnotationComplete = false
					waitConnection:Disconnect()
				end
			end)

			return
		end

		timeEntered = DateTime.now()
		open = true
		PageInstance.hasBeenSubmitted = false
		-- This is the only start... call if the user opens the report page by
		-- going to it directly.
		-- For a prepopulated player report, start... is called inside
		-- `PageInstance:ReportPlayer` before this. In that case, this call will leave
		-- the session and recorded entryPoint alone.
		ReportAbuseAnalytics:startAbuseReportSession("ReportPage")
		PageInstance:UpdatePlayerDropDown()
	end)

	PageInstance.Hidden.Event:connect(function()
		if open then
			if (shouldDoReportScreenshot()) 
				and PageInstance.isHidingForARScreenshot then
				open = false
				return
			end

			if not PageInstance.hasBeenSubmitted then
				PageInstance.isAnnotationComplete = false
				local timeToExit = DateTime.now().UnixTimestampMillis - timeEntered.UnixTimestampMillis
				local abuseReasonSelected = if PageInstance.TypeOfAbuseMode.CurrentIndex then true else false
				local abuserSelected = if PageInstance.WhichPlayerMode.CurrentIndex then true else false
				local commentAdded = if PageInstance.AbuseDescription.Selection.Text ~= "" then true else false

				local methodOfAbuseSelected = false
				local reportContentType

				if PageInstance.GameOrPlayerMode.CurrentIndex == 1 then
					reportContentType = "Game"
				else
					reportContentType = "User"
				end

				if PageInstance.MethodOfAbuseMode and PageInstance.MethodOfAbuseMode.CurrentIndex then
					methodOfAbuseSelected = true
				end

				local abandonedParameters = {
					reportContentType = reportContentType,
					abuseReasonSelected = abuseReasonSelected,
					abuserSelected = abuserSelected,
					commentAdded = commentAdded,
					methodOfAbuseSelected = methodOfAbuseSelected,
				}

				if shouldDoReportScreenshot() then
					local accumulatedParameters = ReportAnythingAnalytics.getAccumulatedParameters()
					abandonedParameters = Cryo.Dictionary.join(
						abandonedParameters,
						accumulatedParameters,
						AbuseReportBuilder.getAnalyticsParameters()
					)
					ReportAnythingAnalytics.clear()
				end

				PageInstance.reportAbuseAnalytics:reportFormAbandoned(timeToExit, abandonedParameters)
			end

			if shouldDoReportScreenshot() then
				PageInstance:unmountAnnotationPage()
				if AbuseReportBuilder.getAnnotationOptionSeen() then
					PageInstance:ActivateFormPhase(FormPhase.AttachScreenshotInit)
				end
				if GetFFlagRAScreenshotOncePerMenuOpenEnabled() then
					-- with flag on, keep screenshot but clear user annotations if they
					-- navigate away from this tab but keep the IGM open.
					AbuseReportBuilder.clearAnnotationPoints()
				else
					AbuseReportBuilder.clear() -- opening the AR flow again will replace anything in here anyway
				end
			end
			ReportAbuseAnalytics:endAbuseReportSession()
			open = false
		end
	end)

	function PageInstance:ReportPlayer(player, entryPoint)
		if player then
			ReportAbuseAnalytics:startAbuseReportSession(entryPoint)
			local setReportPlayerConnection = nil
			PageInstance:SetNextPlayerToReport(player)
			setReportPlayerConnection = PageInstance.Displayed.Event:connect(function()
				PageInstance.GameOrPlayerMode:SetSelectionIndex(2)

				if setReportPlayerConnection then
					setReportPlayerConnection:disconnect()
					setReportPlayerConnection = nil
				end
			end)

			if not PageInstance.HubRef:GetVisibility() then
				PageInstance.HubRef:SetVisibility(true, false, PageInstance)
			else
				if GetFFlagReportAbuseMenuEntrypointAnalytics() then
					PageInstance.HubRef:SwitchToPage(PageInstance, false, nil, nil, nil, {
						entrypoint = ReportAbuseAnalytics:getAbuseReportSessionEntryPoint(),
					})
				else
					PageInstance.HubRef:SwitchToPage(PageInstance, false)
				end
			end
		end
	end
end

return PageInstance
