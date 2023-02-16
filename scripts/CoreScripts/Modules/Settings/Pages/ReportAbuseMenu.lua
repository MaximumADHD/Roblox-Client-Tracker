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
local Analytics = require(CorePackages.Workspace.Packages.Analytics).Analytics.new(AnalyticsService)
local Workspace = game:GetService("Workspace")

local Settings = script:FindFirstAncestor("Settings")

local enumerate = require(CorePackages.enumerate)
local log = require(RobloxGui.Modules.Logger):new(script.Name)

local Cryo = require(CorePackages.Cryo)
local VerifiedBadges = require(CorePackages.Workspace.Packages.VerifiedBadges)

local utility = require(RobloxGui.Modules.Settings.Utility)
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local Url = require(RobloxGui.Modules.Common.Url)

local ReportAbuseAnalytics = require(Settings.Analytics.ReportAbuseAnalytics)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local ReportAbuseLogic = require(RobloxGui.Modules.VoiceChat.ReportAbuseLogic)
local createVoiceAbuseReportRequest = require(RobloxGui.Modules.VoiceChat.createVoiceAbuseReportRequest)
local VoiceUsersByProximity = require(RobloxGui.Modules.VoiceChat.VoiceUsersByProximity)

local GetFFlagReportSentPageV2Enabled = require(RobloxGui.Modules.Flags.GetFFlagReportSentPageV2Enabled)
local GetFFlagAbuseReportEnableReportSentPage = require(RobloxGui.Modules.Flags.GetFFlagAbuseReportEnableReportSentPage)
local GetFFlagVoiceARCantSelectVoiceAfterTextFix = require(RobloxGui.Modules.Flags.GetFFlagVoiceARCantSelectVoiceAfterTextFix)
local GetFFlagHideMOAOnExperience = require(RobloxGui.Modules.Flags.GetFFlagHideMOAOnExperience)
local GetFFlagAddVoiceTagsToAllARSubmissionsEnabled = require(RobloxGui.Modules.Flags.GetFFlagAddVoiceTagsToAllARSubmissionsEnabled)
local GetFFlagVoiceARDropdownFix = require(RobloxGui.Modules.Flags.GetFFlagVoiceARDropdownFix)
local GetFFlagVoiceARRemoveOffsiteLinksForVoice = require(RobloxGui.Modules.Flags.GetFFlagVoiceARRemoveOffsiteLinksForVoice)
local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)

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
local TypeOfAbuseOptions: {
	["voice"]: MOAOption,
	["text"]: MOAOption,
	["other"]: MOAOption,
} = {
	[MethodsOfAbuse.voice] = {title = "Feature.SettingsHub.MethodOfAbuse.VoiceChat.Title", subtitle = "Feature.SettingsHub.MethodOfAbuse.VoiceChat.Subtitle", index = 1},
	[MethodsOfAbuse.text] = {title = "Feature.SettingsHub.MethodOfAbuse.Text.Title", subtitle = "Feature.SettingsHub.MethodOfAbuse.Text.Subtitle", index = 2},
	[MethodsOfAbuse.other] = {title = "Feature.SettingsHub.MethodOfAbuse.Other.Title", subtitle = "Feature.SettingsHub.MethodOfAbuse.Other.Subtitle", index = 3}
}

----------- CLASS DECLARATION --------------
local function Initialize()
	local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
	local this = settingsPageFactory:CreateNewPage()

	local playerNames = {}
	local sortedUserIds = {}
	local nameToRbxPlayer = {}
	local currentSelectedPlayer = nil
	local nextPlayerToReport = nil

	local voiceChatEnabled = false

	this.reportAbuseAnalytics = ReportAbuseAnalytics.new(Analytics, ReportAbuseAnalytics.MenuContexts.LegacyMenu)

	local function getMethodOfAbuseDropdownItems()
		return Cryo.List.map(Cryo.Dictionary.values(TypeOfAbuseOptions), function(item: MOAOption)
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
	end

	function this:updateVoiceLayout()
		if voiceChatEnabled then
			local MOALabel = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.MethodOfAbuse")
			this.MethodOfAbuseFrame, this.MethodOfAbuseLabel, this.MethodOfAbuseMode =
				utility:AddNewRow(this, MOALabel, "DropDown", getSortedMethodOfAbuseList())
			this.MethodOfAbuseMode:SetInteractable(false)
			this.MethodOfAbuseLabel.ZIndex = 1
			this.MethodOfAbuseFrame.LayoutOrder = 2
			if GetFFlagVoiceARDropdownFix() then
				this.MethodOfAbuseMode.DropDownFrame.MouseButton1Click:Connect(function()
					local recentVoicePlayers = VoiceChatServiceManager:getRecentUsersInteractionData()
					if Cryo.isEmpty(recentVoicePlayers) or not this:isVoiceReportMethodActive() then
						-- Remove "Voice" option if we don't have any players to show
						this.MethodOfAbuseMode:UpdateDropDownList(Cryo.List.filter(getSortedMethodOfAbuseList(), function(item)
							-- Note that we're using the index property of the TypeOfAbuseOption,
							-- not the index of the AbuseOption in the dropdown list
							return item.index ~= TypeOfAbuseOptions[MethodsOfAbuse.voice].index
						end))
					else
						this.MethodOfAbuseMode:UpdateDropDownList(getSortedMethodOfAbuseList())
					end
				end)
			end

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
				return item.index ~= TypeOfAbuseOptions[MethodsOfAbuse.voice].index
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
				-- We need to use getSortedMethodOfAbuseList because TypeOfAbuseOptions doesn't have the translated title
				PageInstance.MethodOfAbuseMode:SetSelectionByValue(getSortedMethodOfAbuseList()[TypeOfAbuseOptions[AbuseType].index].title)
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
		return (not currentSelectedPlayer or isCurrentSelectedPlayerVoice)
	end

	function this:isVoiceReportSelected()
		if not this.MethodOfAbuseMode or (GetFFlagVoiceARDropdownFix() and #this.MethodOfAbuseMode.Selections < 3) then
			return false
		end

		local isVoiceDropdownSelected = this.MethodOfAbuseMode.CurrentIndex == AbuseVectorIndex.Voice.rawValue()

		return this:isVoiceReportMethodActive() and isVoiceDropdownSelected
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
		if GetFFlagVoiceARDropdownFix() and index <= 1 then
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
	this.TabHeader.Icon.Image = "rbxasset://textures/ui/Settings/MenuBarIcons/ReportAbuseTab.png"
	if FFlagUseNotificationsLocalization then
		this.TabHeader.Title.Text = "Report"
	else
		this.TabHeader.Icon.Title.Text = "Report"
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

		if utility:IsSmallTouchScreen() then
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
		end)

		local function updateMethodOfAbuseVisibility()
			if GetFFlagHideMOAOnExperience() and this.MethodOfAbuseMode then
				this.MethodOfAbuseFrame.Visible = this.GameOrPlayerMode.CurrentIndex == 2
			end
		end

		VoiceChatServiceManager:asyncInit():andThen(function()
			IXPServiceWrapper:InitializeAsync(PlayersService.LocalPlayer.UserId, "Social.VoiceAbuseReport.ReportAbuseMenu.V1")
			local layerData = IXPServiceWrapper:GetLayerData("Social.VoiceAbuseReport.ReportAbuseMenu.V1")
			if layerData then
				inSortingExperiment = layerData.VoiceAbuseReportProximitySort
				inEntryExperiment = layerData.VoiceAbuseReportSmartEntry

				if layerData.VoiceAbuseReportDisabled == nil then
					voiceChatEnabled = false
				else
					voiceChatEnabled = not layerData.VoiceAbuseReportDisabled
				end
			else
				-- We default to NOT showing the method of abuse if IXP is down and everything else is working
				voiceChatEnabled = false
			end
			log:debug("Voice Chat {}. In Sorting Experiment {}, In Entry Experiment {}.", voiceChatEnabled, inSortingExperiment, inEntryExperiment)
			this:updateVoiceLayout()
			updateMethodOfAbuseVisibility()
		end):catch(function()
			voiceChatEnabled = false
			log:warning("ReportAbuseMenu: Failed to init VoiceChatServiceManager")
		end)

		local _SelectionOverrideObject = utility:Create'ImageLabel'
		{
			Image = "",
			BackgroundTransparency = 1
		};

		local submitButton, submitText = nil, nil

		local function makeSubmitButtonActive()
			submitButton.ZIndex = 2
			submitButton.Selectable = true
			submitText.ZIndex = 2
		end

		local function makeSubmitButtonInactive()
			submitButton.ZIndex = 1
			submitButton.Selectable = false
			submitText.ZIndex = 1
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
				if this.WhichPlayerMode:GetSelectedIndex() then
					if this.TypeOfAbuseMode:GetSelectedIndex() then
						makeSubmitButtonActive()
						return
					end
				end
			end
			makeSubmitButtonInactive()
		end

		local function updateAbuseDropDown()
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
			end

			local abuseType = "Game"

			if this.GameOrPlayerMode.CurrentIndex == 2 then
				abuseType = "Player"
			end

			this.reportAbuseAnalytics:reportAnalyticsFieldChanged({
				field = "TypeOfAbuse",
				abuseType = abuseType,
			})
		end

		local function cleanupReportAbuseMenu()
			updateAbuseDropDown()
			this.AbuseDescription.Selection.Text = DEFAULT_ABUSE_DESC_TEXT
			this.HubRef:SetVisibility(false, true)
		end

		local function reportAnalytics(reportType, id)
			local stringTable = {}
			stringTable[#stringTable + 1] = "report_type=" .. tostring(reportType)
			stringTable[#stringTable + 1] = "report_source=ingame"
			stringTable[#stringTable + 1] = "reported_entity_id=" .. tostring(id)

			local infoString = table.concat(stringTable,"&")

			local eventTable = {}
			eventTable["universeid"] = tostring(game.GameId)

			AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, Constants.AnalyticsReportSubmittedName, infoString, eventTable)
		end

		local function onReportSubmitted()
			local abuseReason = nil
			local methodOfAbuse = nil
			local reportSucceeded = false
			local isReportSentEnabled = false
			local showReportSentAlert = false

			this.hasBeenSubmitted = true

			if this.GameOrPlayerMode.CurrentIndex == 2 then
				abuseReason = abuseTypePlayerList[this.TypeOfAbuseMode.CurrentIndex]

				local currentAbusingPlayer = this:GetPlayerFromIndex(this.WhichPlayerMode.CurrentIndex)
				if currentAbusingPlayer and abuseReason then
					reportSucceeded = true
					showReportSentAlert = true
					local layerData = IXPServiceWrapper:GetLayerData("AbuseReports")
					local dialogVariant = layerData.thankYouDialog
					isReportSentEnabled = self.HubRef.ReportSentPage and GetFFlagAbuseReportEnableReportSentPage() and dialogVariant == "variant" -- "Report Sent" is only enabled for reporting players

					if this.MethodOfAbuseMode then
						local currentIndex = this.MethodOfAbuseMode.CurrentIndex

						if not this:isVoiceReportMethodActive() then
							currentIndex += 1
						end

						if currentIndex == 1 then
							methodOfAbuse = "Voice"
						elseif currentIndex == 2 then
							methodOfAbuse = "Chat"
						else
							methodOfAbuse = "Other"
						end

						local timeToComplete = DateTime.now().UnixTimestampMillis - timeEntered.UnixTimestampMillis

						this.reportAbuseAnalytics:reportFormSubmitted(timeToComplete, methodOfAbuse, {
							typeOfAbuse = abuseReason,
						})

						reportAnalytics("user", currentAbusingPlayer.UserId)
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
					else
						spawn(function()
							PlayersService:ReportAbuse(currentAbusingPlayer, abuseReason, this.AbuseDescription.Selection.Text)
							reportAnalytics("user", currentAbusingPlayer.UserId)
						end)
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

				utility:ShowAlert(alertText, "Ok", this.HubRef, cleanupReportAbuseMenu)
			end

			if reportSucceeded then
				this.LastSelectedObject = nil
			end
		end

		submitButton, submitText = utility:MakeStyledButton("SubmitButton", "Submit", UDim2.new(0,198,0,50), onReportSubmitted, this)
		submitButton.AnchorPoint = Vector2.new(0.5,0)
		submitButton.Position = UDim2.new(0.5,0,1,5)

		updateSubmitButton()
		submitButton.Parent = this.AbuseDescription.Selection

		local function playerSelectionChanged(newIndex)
			if voiceChatEnabled then
				if GetFFlagVoiceARCantSelectVoiceAfterTextFix() then
					currentSelectedPlayer = this:GetPlayerFromIndex(this.WhichPlayerMode.CurrentIndex)
				end

				this:updateMethodOfAbuseDropdown()

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

		this.GameOrPlayerMode.IndexChanged:connect(updateAbuseDropDown)

		local function abuseDescriptionChanged()
			updateSubmitButton()
		end
		this.AbuseDescription.Selection:GetPropertyChangedSignal("Text"):connect(abuseDescriptionChanged)

		this:AddRow(nil, nil, this.AbuseDescription)

		this.Page.Size = UDim2.new(1,0,0,submitButton.AbsolutePosition.Y + submitButton.AbsoluteSize.Y)
	end

	return this
end

local open = false
----------- Public Facing API Additions --------------
do
	PageInstance = Initialize()

	PageInstance.Displayed.Event:connect(function()
		timeEntered = DateTime.now()
		open = true

		PageInstance.hasBeenSubmitted = false

		PageInstance:UpdatePlayerDropDown()
	end)

	PageInstance.Hidden.Event:connect(function()
		if open then
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

				PageInstance.reportAbuseAnalytics:reportFormAbandoned(timeToExit, {
					reportContentType = reportContentType,
					abuseReasonSelected = abuseReasonSelected,
					abuserSelected = abuserSelected,
					commentAdded = commentAdded,
					methodOfAbuseSelected = methodOfAbuseSelected,
				})
			end

			open = false
		end
	end)

	function PageInstance:ReportPlayer(player)
		if player then
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
