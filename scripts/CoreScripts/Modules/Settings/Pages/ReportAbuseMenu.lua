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

local ReportAbuseAnalytics = require(Settings.Analytics.ReportAbuseAnalytics)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local ReportAbuseLogic = require(RobloxGui.Modules.VoiceChat.ReportAbuseLogic)
local createVoiceAbuseReportRequest = require(RobloxGui.Modules.VoiceChat.createVoiceAbuseReportRequest)
local VoiceUsersByProximity = require(RobloxGui.Modules.VoiceChat.VoiceUsersByProximity)
local AbuseReportBuilder = require(RobloxGui.Modules.TrustAndSafety.Utility.AbuseReportBuilder)
local ScreenshotFlowStepHandlerContainer = require(RobloxGui.Modules.TrustAndSafety.Components.ScreenshotFlowStepHandlerContainer)
local TrustAndSafetyIXPManager = require(RobloxGui.Modules.TrustAndSafety.TrustAndSafetyIXPManager).default
local ReportAnythingAnalytics = require(RobloxGui.Modules.TrustAndSafety.Utility.ReportAnythingAnalytics)

local GetFFlagReportSentPageV2Enabled = require(RobloxGui.Modules.Flags.GetFFlagReportSentPageV2Enabled)
local GetFFlagAbuseReportEnableReportSentPage = require(RobloxGui.Modules.Flags.GetFFlagAbuseReportEnableReportSentPage)
local GetFFlagAddVoiceTagsToAllARSubmissionsEnabled = require(RobloxGui.Modules.Flags.GetFFlagAddVoiceTagsToAllARSubmissionsEnabled)
local GetFFlagVoiceARRemoveOffsiteLinksForVoice = require(RobloxGui.Modules.Flags.GetFFlagVoiceARRemoveOffsiteLinksForVoice)
local GetFStringReportAbuseIXPLayer = require(RobloxGui.Modules.Flags.GetFStringReportAbuseIXPLayer)
local GetFFlagEnableConfigurableReportAbuseIXP = require(RobloxGui.Modules.Flags.GetFFlagEnableConfigurableReportAbuseIXP)
local GetFFlagOldAbuseReportAnalyticsDisabled = require(Settings.Flags.GetFFlagOldAbuseReportAnalyticsDisabled)
local GetFFlagIGMv1ARFlowSessionEnabled = require(Settings.Flags.GetFFlagIGMv1ARFlowSessionEnabled)
local GetFFlagIGMv1ARFlowExpandedAnalyticsEnabled = require(Settings.Flags.GetFFlagIGMv1ARFlowExpandedAnalyticsEnabled)
local GetFIntIGMv1ARFlowCSWaitFrames = require(Settings.Flags.GetFIntIGMv1ARFlowCSWaitFrames)
local GetFFlagReportAnythingAnnotationIXP = require(RobloxGui.Modules.Settings.Flags.GetFFlagReportAnythingAnnotationIXP)
local GetFFlagEnableReportAnythingAnalytics = require(RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagEnableReportAnythingAnalytics)
local GetFFlagEnableARFlowAnalyticsCleanup = require(RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagEnableARFlowAnalyticsCleanup)
local GetFFlagEnableIGMv1ARFlowNilMoAFix = require(RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagEnableIGMv1ARFlowNilMoAFix)
local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)
game:DefineFastFlag("ReportAbuseExtraAnalytics", false)

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
	"Inappropriate Content"
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

type FormPhase = "Init" | "Annotation"
local FormPhase = {
	Init = "Init" :: "Init",
	Annotation = "Annotation" :: "Annotation",
}

local PageInstance = nil

local success, result = pcall(function() return settings():GetFFlag('UseNotificationsLocalization') end)
local FFlagUseNotificationsLocalization = success and result

local Constants = require(RobloxGui.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))

local MIN_GAME_REPORT_TEXT_LENGTH = 5
local timeEntered
local inSortingExperiment = true
local inEntryExperiment = true

type MethodOfAbuse = ReportAbuseLogic.MethodOfAbuse
local MethodsOfAbuse = ReportAbuseLogic.MethodsOfAbuse

type MOAOption = { title: string, subtitle: string, index: number}
local MethodOfAbuseOptions: {
	["voice"]: MOAOption,
	["text"]: MOAOption,
	["other"]: MOAOption,
} = {
	[MethodsOfAbuse.voice] = {title = "Feature.SettingsHub.MethodOfAbuse.VoiceChat.Title", subtitle = "Feature.SettingsHub.MethodOfAbuse.VoiceChat.Subtitle", index = 1},
	[MethodsOfAbuse.text] = {title = "Feature.SettingsHub.MethodOfAbuse.Text.Title", subtitle = "Feature.SettingsHub.MethodOfAbuse.Text.Subtitle", index = 2},
	[MethodsOfAbuse.other] = {title = "Feature.SettingsHub.MethodOfAbuse.Other.Title", subtitle = "Feature.SettingsHub.MethodOfAbuse.Other.Subtitle", index = 3}
}

local function shouldDoARScreenshot()
	return TrustAndSafetyIXPManager:getReportAnythingEnabled()
end

----------- CLASS DECLARATION --------------
local function Initialize()
	local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
	local this = settingsPageFactory:CreateNewPage()
	this.previousFormPhase = FormPhase.Init

	local playerNames = {}
	local sortedUserIds = {}
	local nameToRbxPlayer = {}
	local currentSelectedPlayer = nil
	local nextPlayerToReport = nil

	local voiceChatEnabled = false

	this.isHidingForARScreenshot = false

	if GetFFlagIGMv1ARFlowSessionEnabled() then
		this.reportAbuseAnalytics = ReportAbuseAnalytics.new(EventIngest.new(EventIngestService), Analytics.Diag, ReportAbuseAnalytics.MenuContexts.LegacyMenu)
	else
		this.reportAbuseAnalytics = ReportAbuseAnalytics.new(Analytics.EventStream, Analytics.Diag, ReportAbuseAnalytics.MenuContexts.LegacyMenu)
	end

	function this:GetSelectedMethodOfAbuse()
		if this.MethodOfAbuseMode then
			local currentIndex = this.MethodOfAbuseMode.CurrentIndex
			local voiceAllowed = false
			if TrustAndSafetyIXPManager:getReportAnythingEnabled() then
				if currentIndex == nil then
					return nil
				end
				voiceAllowed = this:shouldVoiceMOABeAvailable()
			else
				if GetFFlagEnableIGMv1ARFlowNilMoAFix() then
					if currentIndex == nil then
						return "Chat"
					end
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
				subtitle = RobloxTranslator:FormatByKey(item.subtitle)
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
			this.MethodOfAbuseFrame.Visible = true
			if this.GameOrPlayerMode.CurrentIndex == 1 then -- game mode
				this.TypeOfAbuseFrame.Visible = false
			else
				this.TypeOfAbuseFrame.Visible = true
			end
			this.WhichPlayerFrame.Visible = true
			this.AbuseDescriptionFrame.Visible = true
			this.SubmitButton.Visible = true
			this.BackButton.Visible = false
		end
		local twoButtonSubmit = function()
			this.BackButton.Position = UDim2.new(0.2,0,1,5)
			this.SubmitButton.Position = UDim2.new(0.8,0,1,5)
		end
		local oneButtonSubmit = function()
			this.SubmitButton.Position = UDim2.new(0.5,0,1,5)
		end
		local actions: { [FormPhase]: (boolean) -> nil } = {}
		actions[FormPhase.Init] = function(isPlayerPreselected)
			if isPlayerPreselected then
				-- show everything including the submit button
				normalFormVisibility()
				oneButtonSubmit()
			else
				if this.MethodOfAbuseMode and this.GameOrPlayerMode.CurrentIndex ~= 1 then
					this.MethodOfAbuseFrame.Visible = true
				end
				this.NextButton.Visible = true
				this:updateNextButton()
				this.GameOrPlayerFrame.Visible = true

				this.TypeOfAbuseFrame.Visible = false
				this.WhichPlayerFrame.Visible = false
				this.AbuseDescriptionFrame.Visible = false
				this.SubmitButton.Visible = false
			end
			this.previousFormPhase = FormPhase.Init
		end
		actions[FormPhase.Annotation] = function(isPlayerPreselected)
			this.GameOrPlayerFrame.Visible = false
			if this.MethodOfAbuseMode then
				this.MethodOfAbuseFrame.Visible = false
			end
			this.WhichPlayerFrame.Visible = false
			this.NextButton.Visible = false

			this.TypeOfAbuseFrame.Visible = true
			this.AbuseDescriptionFrame.Visible = true
			this.BackButton.Visible = true
			this.SubmitButton.Visible = true
			twoButtonSubmit()
			if this.GameOrPlayerMode.CurrentIndex == 1 then
				this.previousFormPhase = FormPhase.Annotation
				this:mountAnnotationPage()
				return
			end
			local selectedMethodOfAbuse = this:GetSelectedMethodOfAbuse()
			if selectedMethodOfAbuse == "Other" then
				this.previousFormPhase = FormPhase.Annotation
				this:mountAnnotationPage()
				return
			else -- Chat, Voice, and MoA not selected
				-- Allow selection of alleged abuser via dropdown
				this.WhichPlayerFrame.Visible = true
			end
			this.previousFormPhase = FormPhase.Init
		end
		actions[newFormPhase](isPlayerPreselected)
	end

	function this:ActivatePreviousFormPhase()
		if this.previousFormPhase ~= nil then
			this:ActivateFormPhase(this.previousFormPhase)
			return
		end
		this:ActivateFormPhase(FormPhase.Init)
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
				Parent = RobloxGui
			})
			this.annotationPageFrame = utility:Create("Frame")({
				BackgroundTransparency = 1,
				Position = UDim2.new(0,0,0,-topCornerInset.Y),
				Size = UDim2.new(1,0,1,topCornerInset.Y),
				Parent = this.annotationPageScreenGui
			})
		end

		local shouldShowPlayerDropdownPostAnnotation = function()
			return #AbuseReportBuilder.getSelectedAbusers() == 0 and
				this:GetSelectedMethodOfAbuse() == "Other" and
				this.GameOrPlayerMode.CurrentIndex == 2 -- Player mode
		end

		local onBack = function()
			this:unmountAnnotationPage()
			AbuseReportBuilder.clearAnnotationPoints()
			this:ActivateFormPhase(FormPhase.Init)
		end

		local onAnnotate = function(points: {Vector2})
			AbuseReportBuilder.setAnnotationPoints(points)
			if shouldShowPlayerDropdownPostAnnotation() then
				-- select manually from dropdown if no annotated players
				this.WhichPlayerFrame.Visible = true
			end
			this:unmountAnnotationPage()
		end

		local onSkip = function()
			AbuseReportBuilder.clearAnnotationPoints()
			AbuseReportBuilder.setAnnotationOptionSeen(true)
			if shouldShowPlayerDropdownPostAnnotation() then
				this.WhichPlayerFrame.Visible = true
			end
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
			backAction = onBack,
			dismissAction = onBack,
			reportAction = onAnnotate,
			restartAction = onRestart,
			skipAnnotationAction = onSkip,
			-- populated if they open the flow by going back from last page
			initialAnnotationPoints = AbuseReportBuilder.getAnnotationPoints(),
			initialPageNumber = if AbuseReportBuilder.getAnnotationPageSeen() then 2 else 1,
			reportAnythingAnalytics = ReportAnythingAnalytics
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
		if TrustAndSafetyIXPManager:getReportAnythingEnabled() then
			this:ActivateFormPhase(FormPhase.Init, true)
		end
	end

	function this:shouldVoiceMOABeAvailable()
		local recentVoicePlayers = VoiceChatServiceManager:getRecentUsersInteractionData()
		return recentVoicePlayers and not Cryo.isEmpty(recentVoicePlayers) and this:isVoiceReportMethodActive()
	end

	function this:updateRALayout()
		-- basically updateVoiceLayout but can also run without Voice, and
		-- determines the selected method of abuse correctly.
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
		this.AbuseDescriptionFrame.LayoutOrder = 5

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

			this:updateNextButton()
			if GetFFlagVoiceARRemoveOffsiteLinksForVoice() then
				abuseTypePlayerList = if selectedMethodOfAbuse == "voice" then ABUSE_TYPES_PLAYER_VOICE else ABUSE_TYPES_PLAYER
				this.TypeOfAbuseMode:UpdateDropDownList(abuseTypePlayerList)
				this.TypeOfAbuseMode:SetInteractable(#abuseTypePlayerList > 1)
			end

			this.reportAbuseAnalytics:reportAnalyticsFieldChanged({
				field = 'MethodOfAbuse',
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
			this.AbuseDescriptionFrame.LayoutOrder = 5

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
					abuseTypePlayerList = if selectedMethodOfAbuse == "voice" then ABUSE_TYPES_PLAYER_VOICE else ABUSE_TYPES_PLAYER
					this.TypeOfAbuseMode:UpdateDropDownList(abuseTypePlayerList)
					this.TypeOfAbuseMode:SetInteractable(#abuseTypePlayerList > 1)
				end

				this.reportAbuseAnalytics:reportAnalyticsFieldChanged({
					field = 'MethodOfAbuse',
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
				PageInstance.MethodOfAbuseMode:SetSelectionByValue(getSortedMethodOfAbuseList()[MethodOfAbuseOptions[AbuseType].index].title)
			else
				PageInstance.MethodOfAbuseMode:SetSelectionIndex(1)
			end
		end
	end

	function this:isVoiceReportMethodActive()
		if not voiceChatEnabled then
			return false
		end
		local recentVoicePlayers = VoiceChatServiceManager:getRecentUsersInteractionData()
		local isCurrentSelectedPlayerVoice = if currentSelectedPlayer and recentVoicePlayers[tostring(currentSelectedPlayer.UserId)] then true else false
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
			this.TypeOfAbuseMode:UpdateDropDownList(ABUSE_TYPES_GAME)
			this.TypeOfAbuseMode:SetInteractable(#ABUSE_TYPES_GAME > 1)
		else
			this.WhichPlayerLabel.ZIndex = 2
			this.WhichPlayerMode:SetInteractable(index > 1)

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
		this.TabHeader.TabLabel.Icon.Image ="rbxasset://textures/ui/Settings/MenuBarIcons/ReportAbuseTab.png"
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

	-- need to override this function from SettingsPageFactory
	-- DropDown menus require hub to to be set when they are initialized
	function this:SetHub(newHubRef)
		this.HubRef = newHubRef

		this.HubRef.SettingsShowSignal:connect(function(isOpen)
			if isOpen then
				this:setReportTimestamp(Workspace:GetServerTimeNow())
			end
		end)

		if utility:IsSmallTouchScreen() then
			this.GameOrPlayerFrame,
			this.GameOrPlayerLabel,
			this.GameOrPlayerMode = utility:AddNewRow(this, "Experience or Person?", "Selector", {"Experience", "Person"}, 2)
		else
			this.GameOrPlayerFrame,
			this.GameOrPlayerLabel,
			this.GameOrPlayerMode = utility:AddNewRow(this, "Experience or Person?", "Selector", {"Experience", "Person"}, 2, 3)
		end
		this.GameOrPlayerMode.Selection.LayoutOrder = 1

		local whichPlayerText = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.WhichPlayer")
		this.WhichPlayerFrame, this.WhichPlayerLabel, this.WhichPlayerMode =
			utility:AddNewRow(this, whichPlayerText, "DropDown", {"update me"})
		this.WhichPlayerMode:SetInteractable(false)
		this.WhichPlayerMode:SetAutoLocalize(false)
		this.WhichPlayerLabel.ZIndex = 1
		this.WhichPlayerFrame.LayoutOrder = 2

		local typeOfAbuseText = "Reason for Abuse?"

		this.TypeOfAbuseFrame,
		this.TypeOfAbuseLabel,
		this.TypeOfAbuseMode = utility:AddNewRow(this, typeOfAbuseText, "DropDown", ABUSE_TYPES_GAME, 1)
		this.TypeOfAbuseFrame.LayoutOrder = 3

		if Theme.UIBloxThemeEnabled then
			this.AbuseDescriptionFrame,
			this.AbuseDescriptionLabel,
			this.AbuseDescription = utility:AddNewRow(this, DEFAULT_ABUSE_DESC_TEXT, "TextBox", nil, nil, 1)

			this.AbuseDescriptionLabel.Text = "Abuse Description"
			this.AbuseDescriptionFrame.Size = UDim2.new(1, 0, 0, 100)
			this.AbuseDescriptionLabel.TextYAlignment = Enum.TextYAlignment.Top

			utility:Create'UICorner'
			{
				CornerRadius = Theme.MenuContainerCornerRadius,
				Parent = this.AbuseDescription.Selection,
			}

			utility:Create'UIPadding'
			{
				PaddingTop = UDim.new(0, 4),
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10),
				PaddingBottom = UDim.new(0, 0),
				Parent = this.AbuseDescription.Selection,
			}

			utility:Create'UIStroke'
			{
				Name = "Border",
				Color = Theme.color("ControlInputStroke"), -- overwritten
				Transparency = Theme.transparency("ControlInputStroke"), -- overwritten
				Thickness = Theme.DefaultStokeThickness, -- overwritten
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Parent = this.AbuseDescription.Selection,
			}

			this.AbuseDescription.Selection.BackgroundColor3 = Theme.color("ControlInputBackground")
			this.AbuseDescription.Selection.BackgroundTransparency = Theme.transparency("ControlInputBackground")
			this.AbuseDescription.Selection.TextColor3 = Theme.color("ControlInputText")
		elseif utility:IsSmallTouchScreen() then
			this.AbuseDescriptionFrame,
			this.AbuseDescriptionLabel,
			this.AbuseDescription = utility:AddNewRow(this, DEFAULT_ABUSE_DESC_TEXT, "TextBox", nil, nil, 5)

			this.AbuseDescriptionLabel.Text = "Abuse Description"
		else
			this.AbuseDescriptionFrame,
			this.AbuseDescriptionLabel,
			this.AbuseDescription = utility:AddNewRow(this, DEFAULT_ABUSE_DESC_TEXT, "TextBox", nil, nil, 5)

			this.AbuseDescriptionFrame.Size = UDim2.new(1, -10, 0, 100)
			this.AbuseDescription.Selection.Size = UDim2.new(1, 0, 1, 0)
		end

		this.AbuseDescriptionFrame.LayoutOrder = 4

		this.AbuseDescription.Selection.FocusLost:connect(function()
			if this.AbuseDescription.Selection.Text == "" then
				this.AbuseDescription.Selection.Text = DEFAULT_ABUSE_DESC_TEXT
			end
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

		VoiceChatServiceManager:asyncInit():andThen(function()
			local layerData = nil
			if GetFFlagEnableConfigurableReportAbuseIXP() then
				IXPServiceWrapper:InitializeAsync(PlayersService.LocalPlayer.UserId, GetFStringReportAbuseIXPLayer())
				layerData = IXPServiceWrapper:GetLayerData(GetFStringReportAbuseIXPLayer())
			else
				IXPServiceWrapper:InitializeAsync(PlayersService.LocalPlayer.UserId, "Social.VoiceAbuseReport.ReportAbuseMenu.V1")
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
			log:debug("Voice Chat {}. In Sorting Experiment {}, In Entry Experiment {}.", voiceChatEnabled, inSortingExperiment, inEntryExperiment)
			if game:GetFastFlag("ReportAbuseExtraAnalytics") then
				log:debug("IXP Result {} for user {}", HttpService:JSONEncode(layerData), PlayersService.LocalPlayer.UserId)
			end

			local function TnSIXPInitializationCallback()
				if not TrustAndSafetyIXPManager:getReportAnythingEnabled() then
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
		end):catch(function()
			voiceChatEnabled = false
			log:warning("ReportAbuseMenu: Failed to init VoiceChatServiceManager")
		end)

		local _SelectionOverrideObject = utility:Create'ImageLabel'
		{
			Image = "",
			BackgroundTransparency = 1
		};

		this.SubmitButton, this.SubmitText = nil, nil

		local function makeSubmitButtonActive()
			this.SubmitButton.ZIndex = 2
			this.SubmitButton.Selectable = true
			this.SubmitText.ZIndex = 2
		end

		local function makeSubmitButtonInactive()
			this.SubmitButton.ZIndex = 1
			this.SubmitButton.Selectable = false
			this.SubmitText.ZIndex = 1
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

		function this:isPlayerModeSubmissionAllowed()
			if TrustAndSafetyIXPManager:getReportAnythingOtherEnabled() then
				local methodOfAbuseSelected = this:GetSelectedMethodOfAbuse()
				if methodOfAbuseSelected == "Other" then
					-- When player select is hidden, this report went through
					-- the annotation flow where an abuser may not be directly
					-- selected, but submission should still be allowed. If
					-- player select is visible then they did not go through the
					-- annotation flow, or didn't annotate anyone during the
					-- flow, and should select a player normally.
					if this.TypeOfAbuseMode:GetSelectedIndex() and (
						not this.WhichPlayerFrame.Visible -- found a player via annotation
						or (this.WhichPlayerFrame.Visible and this.WhichPlayerMode:GetSelectedIndex())
					) then
						return true
					end
				elseif this.WhichPlayerMode:GetSelectedIndex() then
					if this.TypeOfAbuseMode:GetSelectedIndex() then
						return true
					end
				end
			else
				-- previous behavior in player mode branch of
				-- updateSubmitButton, moved here.
				if this.WhichPlayerMode:GetSelectedIndex() then
					if this.TypeOfAbuseMode:GetSelectedIndex() then
						return true
					end
				end
			end
			return false
		end

		local function updateSubmitButton()
			if this.GameOrPlayerMode.CurrentIndex == 1 then -- 1 is Report Game
				if this.AbuseDescription.Selection.Text ~= DEFAULT_ABUSE_DESC_TEXT then
					if utf8.len(utf8.nfcnormalize(this.AbuseDescription.Selection.Text)) > MIN_GAME_REPORT_TEXT_LENGTH then
						makeSubmitButtonActive()
						return
					end
				end
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
			if this.GameOrPlayerMode.CurrentIndex == 1 then
				this.TypeOfAbuseMode:UpdateDropDownList(ABUSE_TYPES_GAME)

				this.TypeOfAbuseMode:SetInteractable(#ABUSE_TYPES_GAME > 1)
				this.TypeOfAbuseLabel.ZIndex = (#ABUSE_TYPES_GAME > 1 and 2 or 1)

				this.WhichPlayerMode:SetInteractable(false)
				this.WhichPlayerLabel.ZIndex = 1

				updateSubmitButton()
				if TrustAndSafetyIXPManager:getReportAnythingEnabled() then
					-- clear out preselected player options
					currentSelectedPlayer = nil
					nextPlayerToReport = nil
					this:ActivateFormPhase(FormPhase.Init)
					this:updateNextButton()
				end
			else
				this.TypeOfAbuseMode:UpdateDropDownList(abuseTypePlayerList)
				this.TypeOfAbuseMode:SetInteractable(#abuseTypePlayerList > 1)
				this.TypeOfAbuseLabel.ZIndex = (#abuseTypePlayerList > 1 and 2 or 1)

				if #playerNames > 0 then
					this.WhichPlayerMode:SetInteractable(true)
					this.WhichPlayerLabel.ZIndex = 2
				else
					this.WhichPlayerMode:SetInteractable(false)
					this.WhichPlayerLabel.ZIndex = 1
				end

				updateSubmitButton()
				if TrustAndSafetyIXPManager:getReportAnythingEnabled() then
					this:ActivateFormPhase(FormPhase.Init, currentSelectedPlayer and true or false)
					this:updateNextButton()
				end
			end

			local abuseType = "Game"

			if this.GameOrPlayerMode.CurrentIndex == 2 then
				abuseType = "Player"
			end

			if GetFFlagEnableARFlowAnalyticsCleanup() then
				if isUserInitiated then
					this.reportAbuseAnalytics:reportAnalyticsFieldChanged({
						field = "GameOrPlayer",
						abuseType = abuseType,
					})
				end
			else
				this.reportAbuseAnalytics:reportAnalyticsFieldChanged({
					field = "TypeOfAbuse",
					abuseType = abuseType,
				})
			end

		end

		local function cleanupReportAbuseMenu()
			updateAbuseDropDown(false)
			this.AbuseDescription.Selection.Text = DEFAULT_ABUSE_DESC_TEXT
			-- animation enabled for deferred lua workaround
			this.HubRef:SetVisibility(false, not shouldDoARScreenshot())
		end

		local function reportAnalytics(reportType, id)
			if not GetFFlagOldAbuseReportAnalyticsDisabled() then
				local stringTable = {}
				stringTable[#stringTable + 1] = "report_type=" .. tostring(reportType)
				stringTable[#stringTable + 1] = "report_source=ingame"
				stringTable[#stringTable + 1] = "reported_entity_id=" .. tostring(id)

				local infoString = table.concat(stringTable,"&")

				local eventTable = {}
				eventTable["universeid"] = tostring(game.GameId)

				AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, Constants.AnalyticsReportSubmittedName, infoString, eventTable)
			end
		end

		local function onReportSubmitted()
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

				if TrustAndSafetyIXPManager:getReportAnythingOtherEnabled() then
					shouldProceedWithReport = this:isPlayerModeSubmissionAllowed()
				end

				if shouldProceedWithReport then
					reportSucceeded = true
					showReportSentAlert = true
					local layerData = IXPServiceWrapper:GetLayerData("AbuseReports")
					local dialogVariant = layerData.thankYouDialog
					isReportSentEnabled = self.HubRef.ReportSentPage and GetFFlagAbuseReportEnableReportSentPage() and dialogVariant == "variant" -- "Report Sent" is only enabled for reporting players

					if this.MethodOfAbuseMode then
						methodOfAbuse = PageInstance:GetSelectedMethodOfAbuse()

						if not GetFFlagIGMv1ARFlowExpandedAnalyticsEnabled() then
							this.reportAbuseAnalytics:reportFormSubmitted(timeToComplete, methodOfAbuse, {
								typeOfAbuse = abuseReason,
							})
						end
					end

					if ((GetFFlagAddVoiceTagsToAllARSubmissionsEnabled() and this.MethodOfAbuseMode) or this:isVoiceReportSelected()) then
						pcall(function()
							task.spawn(function()
								local request = createVoiceAbuseReportRequest(PlayersService, VoiceChatServiceManager, {
									localUserId = PlayersService.LocalPlayer.UserId,
									abuserUserId = currentAbusingPlayer.UserId,
									abuseComment = this.AbuseDescription.Selection.Text,
									abuseReason = abuseReason,
									inExpMenuOpenedUnixMilli = math.floor(this:getReportTimestamp()*1000), --milliseconds conversion
									sortedPlayerListUserIds = sortedUserIds,
									abuseVector = string.lower(methodOfAbuse),
								})
								if game:GetEngineFeature("AbuseReportV3") then
									PlayersService:ReportAbuseV3(PlayersService.LocalPlayer, request)
								else
									local fullUrl = Url.APIS_URL.."/abuse-reporting/v2/abuse-report"
									HttpRbxApiService:PostAsyncFullUrl(fullUrl, request)
								end
							end)
						end)
					elseif (TrustAndSafetyIXPManager:getReportAnythingOtherEnabled() and this:isOtherReportSelected()) then
						pcall(function()
							task.spawn(function()
								local request = AbuseReportBuilder.buildOtherReportRequest({
									localUserId = PlayersService.LocalPlayer.UserId,
									formSelectedAbuserUserId = currentAbusingPlayer and currentAbusingPlayer.UserId,
									abuseComment = this.AbuseDescription.Selection.Text,
									abuseReason = abuseReason,
									menuEntryPoint = this.reportAbuseAnalytics:getAbuseReportSessionEntryPoint(),
									variant = AbuseReportBuilder.Constants.Variant.Sampling
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
							reportAnalytics("user", currentAbusingPlayer.UserId)
						end)
					end

					if GetFFlagIGMv1ARFlowExpandedAnalyticsEnabled() then
						local submittedParameters = {
							typeOfAbuse = abuseReason,
						}

						if GetFFlagEnableReportAnythingAnalytics() and TrustAndSafetyIXPManager:getReportAnythingOtherEnabled() then
							local accumulatedParameters = ReportAnythingAnalytics.getAccumulatedParameters()
							submittedParameters = Cryo.Dictionary.join(
								submittedParameters,
								accumulatedParameters,
								AbuseReportBuilder.getAnalyticsParameters(),
								{ abandonedForRetake = Cryo.None }
							)
							ReportAnythingAnalytics.clear()
						end

						this.reportAbuseAnalytics:reportFormSubmitted(timeToComplete, methodOfAbuse or "Chat", submittedParameters)
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
					if TrustAndSafetyIXPManager:getReportAnythingExperienceEnabled() then
						local request = AbuseReportBuilder.buildExperienceReportRequest({
							localUserId = PlayersService.LocalPlayer.UserId,
							placeId = game.PlaceId,
							abuseComment = this.AbuseDescription.Selection.Text,
							abuseReason = abuseReason,
							menuEntryPoint = this.reportAbuseAnalytics:getAbuseReportSessionEntryPoint(),
							variant = if TrustAndSafetyIXPManager:getReportAnythingExperienceEnabled() then AbuseReportBuilder.Constants.Variant.Sampling else nil
						})
						PlayersService:ReportAbuseV3(PlayersService.LocalPlayer, request)
					else
						spawn(function()
							local placeId,placeName,placeDescription = tostring(game.PlaceId), "N/A", "N/A"
							local abuseDescription = this.AbuseDescription.Selection.Text
							pcall(function()
								local productInfo = MarketplaceService:GetProductInfo(game.PlaceId, Enum.InfoType.Asset)
								placeName = productInfo.Name
								placeDescription = productInfo.Description
							end)
							local formattedText = string.format("User Report: \n    %s \n".."Place Title: \n    %s \n".."PlaceId: \n    %s \n".."Place Description: \n    %s \n",abuseDescription, placeName, placeId, placeDescription)

							PlayersService:ReportAbuse(nil, abuseReason, formattedText)
							reportAnalytics("game", game.GameId)
						end)
					end
					if GetFFlagIGMv1ARFlowExpandedAnalyticsEnabled() then
						local submittedParameters = {
							typeOfAbuse = abuseReason,
						}

						if GetFFlagEnableReportAnythingAnalytics() and TrustAndSafetyIXPManager:getReportAnythingExperienceEnabled() then
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
				local alertText = "Thanks for your report! Our moderators will review the chat logs and evaluate what happened."

				if abuseReason == 'Cheating/Exploiting' then
					alertText = "Thanks for your report! We've recorded your report for evaluation."
				elseif abuseReason == 'Inappropriate Username' then
					alertText = "Thanks for your report! Our moderators will evaluate the username."
				elseif abuseReason == "Bad Model or Script" or  abuseReason == "Inappropriate Content" or abuseReason == "Offsite Link" or abuseReason == "Offsite Links" then
					alertText = "Thanks for your report! Our moderators will review the place and make a determination."
				end

				if TrustAndSafetyIXPManager:getReportAnythingEnabled() then
					alertText = "We’ve received your report and will take action soon if needed. Your feedback helps keep our community safe."
				end

				utility:ShowAlert(alertText, "Ok", this.HubRef, cleanupReportAbuseMenu)
			end

			if reportSucceeded then
				this.LastSelectedObject = nil
				if TrustAndSafetyIXPManager:getReportAnythingEnabled() then
					AbuseReportBuilder.clear()
					this:ActivateFormPhase(FormPhase.Init)
				end
			end
		end

		local submitButtonSize = UDim2.new(0,198,0,50)
		if Theme.UIBloxThemeEnabled then
			submitButtonSize = UDim2.new(1,20,0,50)
		end

		this.SubmitButton, this.SubmitText = utility:MakeStyledButton("SubmitButton", "Submit", submitButtonSize, onReportSubmitted, this)
		this.SubmitButton.AnchorPoint = Vector2.new(0.5,0)

		if Theme.UIBloxThemeEnabled then
			this.SubmitButton.Position = UDim2.new(0.5,0,1,15)
		else
			this.SubmitButton.Position = UDim2.new(0.5,0,1,5)
		end

		updateSubmitButton()

		this.SubmitButton.Parent = this.AbuseDescription.Selection

		local function setReportAnythingNextAndBackNav()
			local onNext = function()
				if this.NextEnabled then
					this:ActivateFormPhase(FormPhase.Annotation)
				end
			end
			this.NextButton, this.NextText = utility:MakeStyledButton("NextButton", "Next", UDim2.new(0,198,0,50), onNext, this)
			this.NextButton.AnchorPoint = Vector2.new(0.5,0)
			this.NextButton.Position = UDim2.new(0.5,0,2,5)

			this.NextButton.Parent = this.GameOrPlayerMode.Selection

			local onBack = function()
				this:ActivatePreviousFormPhase()
			end
			this.BackButton, this.BackText = utility:MakeStyledButton("BackButton", "Back", UDim2.new(0,198,0,50), onBack, this)
			this.BackButton.AnchorPoint = Vector2.new(0.5,0)
			this.BackButton.Position = UDim2.new(-1,0,1,5)
			this.BackButton.ZIndex = 2
			this.BackButton.Selectable = true
			this.BackButton.Parent = this.AbuseDescription.Selection
			this.BackText.ZIndex = 2
		end

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
			updateSubmitButton()
		end
		this.TypeOfAbuseMode.IndexChanged:connect(typeOfAbuseChanged)

		if GetFFlagEnableARFlowAnalyticsCleanup() then
			this.GameOrPlayerMode.IndexChanged:connect(function()
				updateAbuseDropDown(true)
			end)
		else
			this.GameOrPlayerMode.IndexChanged:connect(updateAbuseDropDown)
		end

		local function abuseDescriptionChanged()
			updateSubmitButton()
		end
		this.AbuseDescription.Selection:GetPropertyChangedSignal("Text"):connect(abuseDescriptionChanged)

		this:AddRow(nil, nil, this.AbuseDescription)

		this.Page.Size = UDim2.new(1,0,0,this.SubmitButton.AbsolutePosition.Y + this.SubmitButton.AbsoluteSize.Y)

		-- IXP initialization is async. We need to do the following updates after getting the IXP variables.
		local function ixpInitializationCallback()
			if TrustAndSafetyIXPManager:getReportAnythingEnabled() then
				this:updateRALayout()
				updateMethodOfAbuseVisibility()
				updateSubmitButton()
				setReportAnythingNextAndBackNav()
				this:ActivateFormPhase(FormPhase.Init)
			end
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
		if shouldDoARScreenshot() and not PageInstance.isHidingForARScreenshot then
			PageInstance.isHidingForARScreenshot = true
			PageInstance.HubRef:SetVisibility(false, true)

			AbuseReportBuilder.clear()

			if GetFFlagEnableReportAnythingAnalytics() then
				ReportAnythingAnalytics.clear()
			end
			coroutine.wrap(function()
				local identifiedAvatars, avatarIDStats = AvatarIdentification.getVisibleAvatars()
				AbuseReportBuilder.setAvatarIDStats(avatarIDStats)
				AbuseReportBuilder.setIdentifiedAvatars(identifiedAvatars)
				if GetFFlagEnableReportAnythingAnalytics() then
					ReportAnythingAnalytics.emitAvatarsIdentifiedStats(avatarIDStats)
				end
			end)()

			ScreenshotManager:TakeScreenshotWithCallback(AbuseReportBuilder.setScreenshotId, AbuseReportBuilder.setScreenshotContentId)
			for i = 1, (1 + GetFIntIGMv1ARFlowCSWaitFrames()) do
				RunService.RenderStepped:Wait()
			end
			PageInstance.HubRef:SetVisibility(true, true, PageInstance, nil, Constants.AnalyticsMenuOpenTypes.ScreenshotUnhide)
			PageInstance.isHidingForARScreenshot = false
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
			if shouldDoARScreenshot() and PageInstance.isHidingForARScreenshot then
				open = false
				return
			end

			if not PageInstance.hasBeenSubmitted then
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

				if GetFFlagEnableReportAnythingAnalytics() and TrustAndSafetyIXPManager:getReportAnythingEnabled() then
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

			if TrustAndSafetyIXPManager:getReportAnythingEnabled() then
				PageInstance:unmountAnnotationPage()
				if AbuseReportBuilder.getAnnotationOptionSeen() then
					PageInstance:ActivateFormPhase(FormPhase.Init)
				end
				AbuseReportBuilder.clear() -- opening the AR flow again will replace anything in here anyway.
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
				PageInstance.HubRef:SwitchToPage(PageInstance, false)
			end
		end
	end
end


return PageInstance
