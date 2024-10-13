--!nonstrict
--[[
		Filename: Players.lua
		Written by: Stickmasterluke
		Version 1.0
		Description: Player list inside escape menu, with friend adding functionality.
--]]
-------------- SERVICES --------------
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GuiService = game:GetService("GuiService")
local PlayersService = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local RunService = game:GetService("RunService")
local LocalizationService = game:GetService("LocalizationService")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

----------- UTILITIES --------------
local CoreGuiModules = RobloxGui:WaitForChild("Modules")
CoreGuiModules:WaitForChild("TenFootInterface")
local ShareGameDirectory = CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame
local ApolloClient = require(CoreGui.RobloxGui.Modules.ApolloClient)
local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)
local formatUsername = UserProfiles.Formatters.formatUsername
local getCombinedNameFromId = UserProfiles.Selectors.getCombinedNameFromId
local getInExperienceCombinedNameFromId = UserProfiles.Selectors.getInExperienceCombinedNameFromId
local Cryo = require(CorePackages.Cryo)
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local OpenTypeSupport = UIBlox.Utility.OpenTypeSupport
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider

local utility = require(RobloxGui.Modules.Settings.Utility)
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create

local reportAbuseMenu = require(RobloxGui.Modules.Settings.Pages.ReportAbuseMenuNewContainerPage)
local SocialUtil = require(RobloxGui.Modules:WaitForChild("SocialUtil"))
local Diag = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.Diag
local EventStream = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventStream
local ShareGameIcons = require(ShareGameDirectory.Spritesheets.ShareGameIcons)
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local InviteToGameAnalytics = require(CorePackages.Workspace.Packages.GameInvite).GameInviteAnalytics
local onBlockButtonActivated = require(script:FindFirstAncestor("Settings").onBlockButtonActivated)
local VoiceAnalytics = require(script:FindFirstAncestor("Settings").Analytics.VoiceAnalytics)
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)
local BlockingAnalytics = require(script:FindFirstAncestor("Settings").Analytics.BlockingAnalytics)
local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)
local log = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)
local MuteToggles = require(RobloxGui.Modules.Settings.Components.MuteToggles)
local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)
local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChatExperimentation = AppChat.App.InExperienceAppChatExperimentation

local GetFFlagLuaInExperienceCoreScriptsGameInviteUnification = require(RobloxGui.Modules.Flags.GetFFlagLuaInExperienceCoreScriptsGameInviteUnification)
local FFlagInExperienceNameQueryEnabled = require(CorePackages.Workspace.Packages.SharedFlags).FFlagInExperienceNameQueryEnabled

local GameInviteAnalyticsManager
if GetFFlagLuaInExperienceCoreScriptsGameInviteUnification() then
	GameInviteAnalyticsManager = require(CorePackages.Workspace.Packages.GameInvite).GameInviteAnalyticsManager
end
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local GetFFlagLuaAppEnableOpenTypeSupport = SharedFlags.GetFFlagLuaAppEnableOpenTypeSupport

local _, PlatformFriendsService = pcall(function()
	return game:GetService('PlatformFriendsService')
end)

	------------ Constants -------------------
local Theme = require(script.Parent.Parent.Theme)

local Constants = require(RobloxGui.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))

local FRAME_DEFAULT_TRANSPARENCY = .85
local FRAME_SELECTED_TRANSPARENCY = .65
local REPORT_PLAYER_IMAGE = isTenFootInterface and "rbxasset://textures/ui/Settings/Players/ReportFlagIcon@2x.png" or "rbxasset://textures/ui/Settings/Players/ReportFlagIcon.png"
local ADD_FRIEND_IMAGE = isTenFootInterface and "rbxasset://textures/ui/Settings/Players/AddFriendIcon@2x.png" or "rbxasset://textures/ui/Settings/Players/AddFriendIcon.png"
local FRIEND_IMAGE = isTenFootInterface and "rbxasset://textures/ui/Settings/Players/FriendIcon@2x.png" or "rbxasset://textures/ui/Settings/Players/FriendIcon.png"
local INSPECT_IMAGE = "rbxasset://textures/ui/InspectMenu/ico_inspect.png"
local BLOCK_IMAGE = isTenFootInterface and "rbxasset://textures/ui/Settings/Players/BlockIcon@2x.png" or "rbxasset://textures/ui/Settings/Players/BlockIcon.png"

if Theme.UIBloxThemeEnabled then
	REPORT_PLAYER_IMAGE = Theme.Images["icons/actions/feedback"]
	INSPECT_IMAGE = Theme.Images["icons/actions/zoomIn"]
	BLOCK_IMAGE = Theme.Images["icons/actions/block"]
	ADD_FRIEND_IMAGE = Theme.Images["icons/actions/friends/friendAdd"]
	FRIEND_IMAGE = Theme.Images["icons/menu/friends"]
end

local PLAYER_ROW_HEIGHT = 62
local PLAYER_ROW_HEIGHT_PORTRAIT = 105
local PLAYER_ROW_SPACING = 80
local PLAYER_ROW_SPACING_PORTRAIT = PLAYER_ROW_HEIGHT_PORTRAIT + PLAYER_ROW_SPACING - PLAYER_ROW_HEIGHT
local PLAYER_NAME_RIGHT_PADDING = 20
local BUTTON_ROW_HEIGHT = PLAYER_ROW_HEIGHT
local USERNAME_POSITION = 0.5
local USERNAME_POSITION_PORTRAIT = 0.275
local RIGHT_SIDE_BUTTON_PAD = -4
local LABEL_POSX = 60

if Theme.UIBloxThemeEnabled then
	RIGHT_SIDE_BUTTON_PAD = -12
	BUTTON_ROW_HEIGHT = 52
end

local FULL_SIZE_SHARE_GAME_BUTTON_SIZE = UDim2.new(1, -10, 0, BUTTON_ROW_HEIGHT)
local HALF_SIZE_SHARE_GAME_BUTTON_SIZE = UDim2.new(0.5, -10, 0, BUTTON_ROW_HEIGHT)
local RENDER_NAME_PREFIX = "utility-focus-state"

------------ Variables -------------------
local PageInstance = nil
local localPlayer = PlayersService.LocalPlayer
while not localPlayer do
	PlayersService.ChildAdded:wait()
	localPlayer = PlayersService.LocalPlayer
end

------------ FAST FLAGS -------------------
local success, result = pcall(function() return settings():GetFFlag('UseNotificationsLocalization') end)
local FFlagUseNotificationsLocalization = success and result
local FFlagExtendedExpMenuPortraitLayout = require(RobloxGui.Modules.Flags.FFlagExtendedExpMenuPortraitLayout)
local GetFFlagVoiceChatUILogging = require(RobloxGui.Modules.Flags.GetFFlagVoiceChatUILogging)
local GetFFlagPauseMuteFix = require(RobloxGui.Modules.Flags.GetFFlagPauseMuteFix)
local GetFFlagPlayerListAnimateMic = require(RobloxGui.Modules.Flags.GetFFlagPlayerListAnimateMic)
local GetFFlagOldMenuUseSpeakerIcons = require(RobloxGui.Modules.Flags.GetFFlagOldMenuUseSpeakerIcons)
local FFlagAvatarChatCoreScriptSupport = require(RobloxGui.Modules.Flags.FFlagAvatarChatCoreScriptSupport)
local GetFFlagVoiceRecordingIndicatorsEnabled = require(RobloxGui.Modules.Flags.GetFFlagVoiceRecordingIndicatorsEnabled)
local GetFFlagShowMuteToggles = require(RobloxGui.Modules.Settings.Flags.GetFFlagShowMuteToggles)
local GetFFlagWrapBlockModalScreenInProvider = require(RobloxGui.Modules.Flags.GetFFlagWrapBlockModalScreenInProvider)
local GetFFlagMuteTogglesEnableIXP = require(RobloxGui.Modules.Settings.Flags.GetFFlagMuteTogglesEnableIXP)
local GetFStringMuteTogglesIXPLayerName = require(RobloxGui.Modules.Settings.Flags.GetFStringMuteTogglesIXPLayerName)
local GetFFlagUseFriendsPropsInMuteToggles = require(RobloxGui.Modules.Settings.Flags.GetFFlagUseFriendsPropsInMuteToggles)
local GetFFlagDefaultFriendingLabelTextNonEmpty = require(RobloxGui.Modules.Settings.Flags.GetFFlagDefaultFriendingLabelTextNonEmpty)
local GetFFlagEnableLeaveGameUpsellEntrypoint = require(RobloxGui.Modules.Settings.Flags.GetFFlagEnableLeaveGameUpsellEntrypoint)
local GetFFlagEnableShowVoiceUI = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableShowVoiceUI

local isEngineTruncationEnabledForIngameSettings = require(RobloxGui.Modules.Flags.isEngineTruncationEnabledForIngameSettings)
local EngineFeatureVoiceChatMultistreamSubscriptionsEnabled = game:GetEngineFeature("VoiceChatMultistreamSubscriptionsEnabled")
local LuaFlagVoiceChatDisableSubscribeRetryForMultistream = game:DefineFastFlag("LuaFlagVoiceChatDisableSubscribeRetryForMultistream", true)
local FFlagPlayerListRefactorUsernameFormatting = game:DefineFastFlag("PlayerListRefactorUsernameFormatting", false)
local FFlagCorrectlyPositionMuteButton = game:DefineFastFlag("CorrectlyPositionMuteButton", false)
local GetFFlagEnableAppChatInExperience = SharedFlags.GetFFlagEnableAppChatInExperience
local FIntSettingsHubPlayersButtonsResponsiveThreshold = game:DefineFastInt("SettingsHubPlayersButtonsResponsiveThreshold", 200)
local FFlagAppChatTiltMenuConnectIcon = game:DefineFastFlag("AppChatTiltMenuConnectIcon", false)
local BUTTON_ROW_HORIZONTAL_PADDING = 20
local BUTTON_ROW_VERTICAL_PADDING = 16

local FFlagEnablePlatformName = game:DefineFastFlag("EnablePlatformName", false)
local FFlagCheckForNilUserIdOnPlayerList = game:DefineFastFlag("CheckForNilUserIdOnPlayerList", false)
local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)()


local MuteStatusIcons = VoiceChatServiceManager.MuteStatusIcons
local PlayerMuteStatusIcons = VoiceChatServiceManager.PlayerMuteStatusIcons

----------- CLASS DECLARATION --------------
local function Initialize()
	local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
	local this = settingsPageFactory:CreateNewPage()

	if Theme.UIBloxThemeEnabled then
		this.PageListLayout.Padding = UDim.new(0, 16)
	else
		this.PageListLayout.Padding = UDim.new(0, PLAYER_ROW_SPACING - PLAYER_ROW_HEIGHT)
	end

	------ TAB CUSTOMIZATION -------
	this.TabHeader.Name = "PlayersTab"
	if Theme.UIBloxThemeEnabled then
		this.TabHeader.TabLabel.Icon.Image = isTenFootInterface and "rbxasset://textures/ui/Settings/MenuBarIcons/PlayersTabIcon@2x.png" or "rbxasset://textures/ui/Settings/MenuBarIcons/PlayersTabIcon.png"

		local icon = Theme.Images["icons/menu/friends"]
		this.TabHeader.TabLabel.Icon.ImageRectOffset = icon.ImageRectOffset
		this.TabHeader.TabLabel.Icon.ImageRectSize = icon.ImageRectSize
		this.TabHeader.TabLabel.Icon.Image = icon.Image

		this.TabHeader.TabLabel.Title.Text = "People"
	else
		this.TabHeader.Icon.Image = isTenFootInterface and "rbxasset://textures/ui/Settings/MenuBarIcons/PlayersTabIcon@2x.png" or "rbxasset://textures/ui/Settings/MenuBarIcons/PlayersTabIcon.png"

		if FFlagUseNotificationsLocalization then
			this.TabHeader.Title.Text = "People"
		else
			this.TabHeader.Icon.Title.Text = "People"
		end
	end


	----- FRIENDSHIP FUNCTIONS ------
	local function getFriendStatus(selectedPlayer)
		local success, result = pcall(function()
			-- NOTE: Core script only
			return localPlayer:GetFriendStatus(selectedPlayer)
		end)
		if success then
			return result
		else
			return Enum.FriendStatus.NotFriend
		end
	end

	------ PAGE CUSTOMIZATION -------
	this.Page.Name = "Players"

	local function getShowAppChatTreatment()
		return GetFFlagEnableAppChatInExperience() and InExperienceAppChatExperimentation.default.variant.ShowPlatformChatTiltMenuEntryPoint
	end

	local function showRightSideButtons(player)
		return player and player ~= localPlayer and player.UserId > 0 and localPlayer.UserId > 0
	end

	local function useOptimizedPortraitLayout()
		return FFlagExtendedExpMenuPortraitLayout and utility:IsSmallTouchScreen() and utility:IsPortrait()
	end

	local function getIsBlocked(player)
		return BlockingUtility:IsPlayerBlockedByUserId(player.UserId)
	end

	local function createFriendStatusTextLabel(status, player)
		if status == nil then
			return nil
		end

		local fakeSelection = Instance.new("Frame")
		fakeSelection.BackgroundTransparency = 1

		local friendLabel = nil
		local friendLabelText = nil
		if status == Enum.FriendStatus.Friend or status == Enum.FriendStatus.FriendRequestSent then
			friendLabel = Instance.new("TextButton")
			friendLabel.BackgroundTransparency = 1
			friendLabel.FontSize = Theme.fontSize(Enum.FontSize.Size24)
			friendLabel.Font = Theme.font(Enum.Font.SourceSans)
			friendLabel.TextColor3 = Color3.new(1,1,1)
			friendLabel.SelectionImageObject = fakeSelection
			if status == Enum.FriendStatus.Friend then
				friendLabel.Text = "Friend"
			else
				friendLabel.Text = "Request Sent"
			end
		elseif status == Enum.FriendStatus.Unknown or status == Enum.FriendStatus.NotFriend or status == Enum.FriendStatus.FriendRequestReceived then
			local addFriendFunc = function()
				if friendLabel and friendLabelText and friendLabelText.Text ~= "" then
					friendLabel.ImageTransparency = 1
					friendLabelText.Text = ""
					if GetFFlagDefaultFriendingLabelTextNonEmpty() then
						friendLabelText.Text = "Add Friend"
					end
					if localPlayer and player then
						AnalyticsService:ReportCounter("PlayersMenu-RequestFriendship")
						AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, Constants.AnalyticsRequestFriendContext, Constants.AnalyticsRequestFriendName, {
							category = "Game"
						})
						localPlayer:RequestFriendship(player)
					end
				end
			end

			friendLabel, friendLabelText = utility:MakeStyledButton("FriendStatus", "Add Friend", UDim2.new(0, 182, 0, Theme.ButtonHeight), addFriendFunc)
			friendLabelText.ZIndex = 3
			friendLabelText.Position = friendLabelText.Position + UDim2.new(0,0,0,1)
		end

		if friendLabel then
			friendLabel.Name = "FriendStatus"
			friendLabel.ZIndex = 3
			if Theme.UIBloxThemeEnabled then
				friendLabel.Size = UDim2.new(0, 150, 0, Theme.ButtonHeight)
				friendLabel.Position = UDim2.new(1,-198,0,7)
				if friendLabelText then
					friendLabelText.Position = UDim2.new(0,0,0,0)
				end
			else
				friendLabel.Size = UDim2.new(0, 150, 0, 46)
				friendLabel.Position = UDim2.new(1,-198,0,7)
			end
		end
		return friendLabel
	end

	local function createFriendStatusImageLabel(status, player)

		if status == Enum.FriendStatus.Friend or status == Enum.FriendStatus.FriendRequestSent then
			if Theme.UIBloxThemeEnabled then

				local image = FRIEND_IMAGE
				local imgTrans =  0
				if status ~= Enum.FriendStatus.Friend then
					image = ADD_FRIEND_IMAGE
					imgTrans = 0.5
				end

				local addFriendButton, _addFriendImage = utility:MakeStyledImageButton("FriendStatus", image,
					UDim2.new(0, Theme.ButtonHeight, 0, Theme.ButtonHeight), UDim2.new(0, 28, 0, 28))
				addFriendButton.Name = "FriendStatus"
				addFriendButton.Selectable = false

				addFriendButton.FriendStatusImageLabel.ImageTransparency = imgTrans

				return addFriendButton
			else

				local friendLabel = Instance.new("ImageButton")
				friendLabel.Name = "FriendStatus"
				friendLabel.Size = UDim2.new(0, Theme.ButtonHeight, 0, Theme.ButtonHeight)
				friendLabel.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png"
				friendLabel.ScaleType = Enum.ScaleType.Slice
				friendLabel.SliceCenter = Rect.new(8,6,46,44)
				friendLabel.AutoButtonColor = false
				friendLabel.BackgroundTransparency = 1
				friendLabel.ZIndex = 2
				local friendImage = Instance.new("ImageLabel")
				friendImage.BackgroundTransparency = 1
				friendImage.Position = UDim2.new(0.5, 0, 0.5, 0)
				friendImage.Size = UDim2.new(0, 28, 0, 28)
				friendImage.AnchorPoint = Vector2.new(0.5, 0.5)
				friendImage.ZIndex = 3
				friendImage.Image = FRIEND_IMAGE
				if status == Enum.FriendStatus.Friend then
					friendImage.ImageTransparency = 0
				else
					friendImage.Image = ADD_FRIEND_IMAGE
					friendImage.ImageTransparency = 0.5
				end
				friendImage.Parent = friendLabel
				return friendLabel
			end
		elseif
			status == Enum.FriendStatus.Unknown
			or status == Enum.FriendStatus.NotFriend
			or status == Enum.FriendStatus.FriendRequestReceived
		then
			local addFriendButton, addFriendImage = nil
			local addFriendFunc = function()
				if addFriendButton and addFriendImage and addFriendButton.ImageTransparency ~= 1 then
					addFriendButton.ImageTransparency = 1
					addFriendImage.ImageTransparency = 1
					if localPlayer and player then
						AnalyticsService:ReportCounter("PlayersMenu-RequestFriendship")
						AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, Constants.AnalyticsRequestFriendContext, Constants.AnalyticsRequestFriendName, {
							category = "Game"
						})
						localPlayer:RequestFriendship(player)
					end
				end
			end
			addFriendButton, addFriendImage = utility:MakeStyledImageButton("FriendStatus", ADD_FRIEND_IMAGE,
				UDim2.new(0, Theme.ButtonHeight, 0, Theme.ButtonHeight), UDim2.new(0, 28, 0, 28), addFriendFunc)
			addFriendButton.Name = "FriendStatus"
			addFriendButton.Selectable = true
			return addFriendButton
		end
		return nil
	end

	local shareGameButton
	local muteAllButton
	local chatButton
	local muteToggles
	local muteImageButtons = {}
	local shouldShowMuteToggles = GetFFlagShowMuteToggles()
	local initialMuteTogglesState = false
	local playersFriends = {}
	local voiceAnalytics = VoiceAnalytics.new(AnalyticsService, "Players")
	local updateButtonsLayout
	local lastUsedColumnLayout = false
	local getUsedColumnLayout
	local primaryButtons = {}
	local buttonFrame
	local buttonFrameLayout

	if getShowAppChatTreatment() or GetFFlagEnableShowVoiceUI() then
		getUsedColumnLayout = function()
			return this.Page.AbsoluteSize.X < (FIntSettingsHubPlayersButtonsResponsiveThreshold * #primaryButtons)
		end

		updateButtonsLayout = function()
			primaryButtons = {}

			if shareGameButton then
				table.insert(primaryButtons, shareGameButton)
			end

			if muteAllButton then
				table.insert(primaryButtons, muteAllButton)
			end

			if chatButton then
				table.insert(primaryButtons, chatButton)
			end
			
			lastUsedColumnLayout = getUsedColumnLayout()

			if #primaryButtons > 0 then
				local buttonSize = UDim2.new(1 / #primaryButtons, 0, 0, BUTTON_ROW_HEIGHT)
				local buttonFrameProperties = {
					Size = UDim2.new(1, -BUTTON_ROW_HORIZONTAL_PADDING * (#primaryButtons - 1), 0, BUTTON_ROW_HEIGHT),
					AutomaticSize = Enum.AutomaticSize.None,
				}
				local buttonFrameLayoutProperties = {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, BUTTON_ROW_HORIZONTAL_PADDING),
				}

				if lastUsedColumnLayout then
					buttonSize = UDim2.new(1, 0, 0, BUTTON_ROW_HEIGHT)
					buttonFrameProperties = {
						Size = UDim2.fromScale(1, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
					}
					buttonFrameLayoutProperties = {
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Top,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, BUTTON_ROW_VERTICAL_PADDING),
					}
				end

				for _, button in primaryButtons do
					button.Size = buttonSize
					button.Parent = buttonFrame
				end

				for property, value in buttonFrameLayoutProperties do
					buttonFrameLayout[property] = value
				end

				for property, value in buttonFrameProperties do
					buttonFrame[property] = value
				end
			else
				buttonFrame:Destroy()
				buttonFrame = nil
			end
		end
	end

	local function resizeFriendButton(parent, player, isPortrait, wasIsPortrait)
		local friendLabel = parent:FindFirstChild("FriendStatus")
		if friendLabel and isPortrait == wasIsPortrait then
			return
		end

		if friendLabel then
			friendLabel:Destroy()
			friendLabel = nil
		end

		local status
		if showRightSideButtons(player) then
			status = getFriendStatus(player)
			if GetFFlagUseFriendsPropsInMuteToggles() then
				playersFriends[player.UserId] = status == Enum.FriendStatus.Friend
			end
		end

		if getIsBlocked(player) == false then
			if isPortrait then
				friendLabel = createFriendStatusImageLabel(status, player)
			else
				friendLabel = createFriendStatusTextLabel(status, player)
			end
		end

		if friendLabel then
			friendLabel.Name = "FriendStatus"
			friendLabel.LayoutOrder = 5
			friendLabel.Selectable = true
			if Theme.UIBloxThemeEnabled then
				local renderName = RENDER_NAME_PREFIX.."-friendstatuslabel-"..player.Name
				utility:MakeFocusState(friendLabel, renderName)
			end
			friendLabel.Parent = parent
		end
	end

	local function friendStatusCreate(playerLabel, player)
		local friendLabelParent = nil
		if playerLabel then
			friendLabelParent = playerLabel:FindFirstChild("RightSideButtons")
		end

		if friendLabelParent then
			-- remove any previous friend status labels
			for _, item in pairs(friendLabelParent:GetChildren()) do
				if item and item.Name == "FriendStatus" then
					if GuiService.SelectedCoreObject == item then
						GuiService.SelectedCoreObject = shareGameButton
					end
					item:Destroy()
				end
			end

			-- create a new friend label with updated status
			resizeFriendButton(friendLabelParent, player, utility:IsPortrait(), nil)
		end
	end

	localPlayer.FriendStatusChanged:connect(function(player, friendStatus)
		if player then
			local playerLabel = this.Page:FindFirstChild("PlayerLabel"..player.Name)
			if playerLabel then
				friendStatusCreate(playerLabel, player)
			end
			if GetFFlagUseFriendsPropsInMuteToggles() then
				playersFriends[player.UserId] = friendStatus == Enum.FriendStatus.Friend
			end
		end
	end)

	local resizeBlockButton
	local trySelection
	local blockingAnalytics = BlockingAnalytics.new(
		localPlayer.UserId,
		{ EventStream = AnalyticsService }
	)

	local function createBlockButton(parent, player, isPortrait, wasIsPortrait)
		local isBlocked = getIsBlocked(player)

		local function updateBlockButton(resumeSelection)
			local blockbutton = resizeBlockButton(parent, player, isPortrait, not isPortrait)
			resizeFriendButton(parent, player, isPortrait, not isPortrait)
			if GetFFlagWrapBlockModalScreenInProvider() and resumeSelection then
				trySelection(blockbutton)
			end
		end

		local function blockUser()
			local hasSelection = GuiService.SelectedCoreObject ~= nil or GuiService.SelectedObject ~= nil
			onBlockButtonActivated(player, blockingAnalytics, Constants.AnalyticsInGameMenuName):andThen(function()
				updateBlockButton(hasSelection)
			end)
		end

		local function unBlockUser()
			local success = BlockingUtility:UnblockPlayerAsync(player)
			if success then
				blockingAnalytics:action("SettingsHub", "unblockUser", {
					blockeeUserId = player.UserId
				})

				updateBlockButton()
			end
		end

		if isBlocked then
			return utility:MakeStyledButton(
				"BlockButton",
				RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.Unblock"),
				UDim2.new(0, 110, 0, Theme.ButtonHeight),
				unBlockUser
			)
		else
			return utility:MakeStyledImageButton(
				"BlockButton",
				BLOCK_IMAGE,
				UDim2.new(0, Theme.ButtonHeight, 0, Theme.ButtonHeight),
				UDim2.new(0, 28, 0, 28),
				blockUser
			)
		end
	end

	function trySelection(guiObject)
		if guiObject and not guiObject.Selectable then
			GuiService:Select(guiObject)
		else
			GuiService.SelectedCoreObject = guiObject
		end
	end

	function resizeBlockButton(parent, player, isPortrait, wasIsPortrait)
		local blockButton = parent:FindFirstChild("BlockButton")
		if blockButton and isPortrait == wasIsPortrait then
			return blockButton
		end

		if blockButton then
			blockButton:Destroy()
			blockButton = nil
		end

		if showRightSideButtons(player) then
			blockButton = createBlockButton(parent, player, isPortrait, wasIsPortrait)
		end

		if blockButton then
			blockButton.Name = "BlockButton"
			blockButton.LayoutOrder = 4
			blockButton.Selectable = true
			if Theme.UIBloxThemeEnabled then
				local renderName = RENDER_NAME_PREFIX.."-blockbutton-"..player.Name
				utility:MakeFocusState(blockButton, renderName)
			end
			blockButton.Parent = parent
		end
		return blockButton
	end

	local isLocalPlayerMutedState = false
	local muteAllState = false

	local function muteButtonUpdate(playerLabel, playerStatus)
		local buttonParent = nil
		if playerLabel then
			buttonParent = playerLabel:FindFirstChild("RightSideButtons")
		end

		if not buttonParent then
			return
		end
		local oldButton = buttonParent:FindFirstChild("MuteStatusButton")

		if playerStatus == nil then
			if oldButton then
				oldButton:Destroy()
			end
			return
		end

		local imageSize = UDim2.fromOffset(36, 36)
		local imageOffset = UDim2.fromOffset(0, 0)
		local imageTransparency = 0

		local image = playerStatus.isMuted
			and MuteStatusIcons.MicOff
			or MuteStatusIcons.MicOn

		if playerStatus.subscriptionFailed then
			image = MuteStatusIcons.Error
			imageSize = UDim2.fromOffset(36, 36)
			imageOffset = UDim2.fromOffset(2, -2)
			if LuaFlagVoiceChatDisableSubscribeRetryForMultistream then
				if EngineFeatureVoiceChatMultistreamSubscriptionsEnabled then
					imageTransparency = 0.5
				end
			end
		elseif playerStatus.isMutedLocally then
			image = MuteStatusIcons.MicDisabled
			imageTransparency = 0.5
		elseif not playerStatus.subscriptionCompleted then
			image = MuteStatusIcons.Loading
		elseif GetFFlagPlayerListAnimateMic() and playerStatus.isSignalActive then
			local level = math.random()
			local roundedLevel = 20 * math.floor(0.5 + 5*level)
			image = VoiceChatServiceManager:GetIcon("Unmuted" .. tostring(roundedLevel), if GetFFlagOldMenuUseSpeakerIcons() then "SpeakerLight" else "MicLight")
		end

		if oldButton then
			local muteStatusLabel
			if GetFFlagPlayerListAnimateMic() then
				muteStatusLabel = muteImageButtons[playerStatus.userId] or buttonParent:FindFirstChild("MuteStatusImageLabel", true)
			else
				muteStatusLabel = buttonParent:FindFirstChild("MuteStatusImageLabel", true)
			end
			muteStatusLabel.Image = image
			muteStatusLabel.Size = imageSize
			muteStatusLabel.ImageTransparency = imageTransparency
		else
			if not GetFFlagEnableShowVoiceUI() or VoiceChatServiceManager.voiceUIVisible then
				local muteLabel, muteLabelText = utility:MakeStyledImageButton(
					"MuteStatus",
					image,
					UDim2.fromOffset(Theme.ButtonHeight, Theme.ButtonHeight),
					imageSize,
					function ()
						-- TODO(SOCRTC-3638|kangiwang): replace per-user subscription failure
						-- rejoin buttons with one single button to retry all subscriptions.
						local status = VoiceChatServiceManager.participants[tostring(playerStatus.userId)]
						if status.subscriptionCompleted then
							if voiceAnalytics then
								voiceAnalytics:onToggleMutePlayer(playerStatus.userId, not status.isMutedLocally)
							end
							VoiceChatServiceManager:ToggleMutePlayer(
								playerStatus.userId,
								VoiceConstants.VOICE_CONTEXT_TYPE.IN_GAME_MENU
							)
						elseif status.subscriptionFailed then
							if LuaFlagVoiceChatDisableSubscribeRetryForMultistream then
								if not EngineFeatureVoiceChatMultistreamSubscriptionsEnabled then
									VoiceChatServiceManager:SubscribeRetry(playerStatus.userId)
								end
							else
								VoiceChatServiceManager:SubscribeRetry(playerStatus.userId)
							end
						end
					end
				)
				if GetFFlagPlayerListAnimateMic() then
					muteImageButtons[playerStatus.userId] = muteLabelText
				end
				muteLabelText.ZIndex = 3
				muteLabelText.Position = muteLabelText.Position + imageOffset
				muteLabelText.ImageTransparency = imageTransparency
				if Theme.UIBloxThemeEnabled then
					local renderName = RENDER_NAME_PREFIX.."-mutestatusbutton-"..playerStatus.userId
					utility:MakeFocusState(muteLabel, renderName)
				end
				muteLabel.Parent = buttonParent
			end
		end
	end

	local buttonsContainer = Create("Frame") {
		Name = "ButtonsContainer",
		Size = UDim2.new(1, 0, 0, 62),
		BackgroundTransparency = 1,
		Parent = this.Page,

		Visible = false
	}

	local buttonPadding = 5;
	if Theme.UIBloxThemeEnabled then
		Create("UIPadding") {
			PaddingBottom = UDim.new(0, 1),
			PaddingTop = UDim.new(0, 1),
			PaddingLeft = UDim.new(0, 1),
			PaddingRight = UDim.new(0, 1),
			Parent = buttonsContainer,
		}
		buttonPadding = 12
		buttonsContainer.Size = UDim2.new(1, 0, 0, Theme.ButtonHeight)
	end

	local leaveGameFunc = function()
		if GetFFlagEnableLeaveGameUpsellEntrypoint() and this.HubRef.leaveGameUpsellProp ~= VoiceConstants.PHONE_UPSELL_VALUE_PROP.None then
			this.HubRef:SwitchToPage(this.HubRef.LeaveGameUpsellPage, nil, 1, true)
		else
			this.HubRef:SwitchToPage(this.HubRef.LeaveGamePage, false, 1)
		end
	end

	local leaveGameText = "Leave"

	local leaveButton, leaveLabel = utility:MakeStyledButton("LeaveButton", leaveGameText, UDim2.new(1 / 3, -buttonPadding, 1, 0), leaveGameFunc)
	leaveButton.AnchorPoint = Vector2.new(0, 0)
	leaveButton.Position = UDim2.new(0, 0, 0, 0)
	if Theme.UIBloxThemeEnabled then
		leaveLabel.Size = UDim2.new(1, -4, 1, 0)
		leaveLabel.Position = UDim2.new(0, 2, 0, 0)
	else
		leaveLabel.Size = UDim2.new(1, 0, 1, -6)
	end

	leaveButton.Parent = buttonsContainer

	local resetFunc = function()
		this.HubRef:SwitchToPage(this.HubRef.ResetCharacterPage, false, 1)
	end
	local resetButton, resetLabel = utility:MakeStyledButton("ResetButton", "Reset Character", UDim2.new(1 / 3, -buttonPadding, 1, 0), resetFunc)
	resetButton.AnchorPoint = Vector2.new(0.5, 0)
	resetButton.Position = UDim2.new(0.5, 0, 0, 0)

	if Theme.UIBloxThemeEnabled then
		resetLabel.Size = UDim2.new(1, -4, 1, 0)
		resetLabel.Position = UDim2.new(0, 2, 0, 0)
	else
		resetLabel.Size = UDim2.new(1, 0, 1, -6)
	end
	resetButton.Parent = buttonsContainer

	local resumeGameFunc = function()
		this.HubRef:SetVisibility(false)
		AnalyticsService:SetRBXEventStream(
			Constants.AnalyticsTargetName,
			Constants.AnalyticsResumeGameName,
			Constants.AnalyticsMenuActionName,
			{ source = Constants.AnalyticsResumeButtonSource }
		)
	end

	local resumeGameText = "Resume"

	local resumeButton, resumeLabel = utility:MakeStyledButton("ResumeButton", resumeGameText, UDim2.new(1 / 3, -buttonPadding, 1, 0), resumeGameFunc)
	resumeButton.AnchorPoint = Vector2.new(1, 0)
	resumeButton.Position = UDim2.new(1, 0, 0, 0)

	if Theme.UIBloxThemeEnabled then
		resumeLabel.Size = UDim2.new(1, -4, 1, 0)
		resumeLabel.Position = UDim2.new(0, 2, 0, 0)
	else
		resumeLabel.Size = UDim2.new(1, 0, 1, -6)
	end

	resumeButton.Parent = buttonsContainer

	local function pollImage()
		local newMuted = VoiceChatServiceManager.localMuted
		local image
		if newMuted == nil then
			image = if GetFFlagOldMenuUseSpeakerIcons() then PlayerMuteStatusIcons.Loading else MuteStatusIcons.Loading
		elseif newMuted then
			image = if GetFFlagOldMenuUseSpeakerIcons() then PlayerMuteStatusIcons.MicOff else MuteStatusIcons.MicOff
		elseif VoiceChatServiceManager.isTalking and GetFFlagPlayerListAnimateMic() then
			local level = math.random()
			local roundedLevel = 20 * math.floor(0.5 + 5*level)
			image = VoiceChatServiceManager:GetIcon("Unmuted" .. tostring(roundedLevel), "MicLight")
		else
			image = if GetFFlagOldMenuUseSpeakerIcons() then PlayerMuteStatusIcons.MicOn else MuteStatusIcons.MicOn
		end
		return image
	end

	local function updateButtonPosition(buttonName, position, size, anchorPoint)
		-- We need to concat "ButtonButton" because addBottomBarButton creates name+"Button" and sends that to util.createButton
		-- which creates a button instance using name+"Button"...
		local buttonInstance = buttonsContainer:FindFirstChild(buttonName .. "Button", true)
		if not buttonInstance then
			return
		end
		buttonInstance.Position = position
		buttonInstance.Size = size
		buttonInstance.AnchorPoint = anchorPoint
	end

	local function updateButtonRow()
		local buttonPaddingY = 6
		local buttonPaddingX = 0

		local newButtonSize = 2 / 7
		if Theme.UIBloxThemeEnabled then
			buttonPaddingY = 0
			buttonPaddingX = 12
		end
		local oldButtonContainerSize = 6 / 7
		updateButtonPosition("ResumeButton", UDim2.new(1 * oldButtonContainerSize, 0, 0, 0), UDim2.new(newButtonSize, -buttonPaddingX, 1, -buttonPaddingY), Vector2.new(1, 0))
		updateButtonPosition("ResetButton", UDim2.new(0.5 * oldButtonContainerSize, 0, 0, 0), UDim2.new(newButtonSize, -buttonPaddingX, 1, -buttonPaddingY), Vector2.new(0.5, 0))
		updateButtonPosition("LeaveButton", UDim2.new(0 * oldButtonContainerSize, 0, 0, 0), UDim2.new(newButtonSize, -buttonPaddingX, 1, -buttonPaddingY), Vector2.new(0, 0))
	end

	local function muteButtonReset()
		local buttonInstance = buttonsContainer:FindFirstChild("PlayerMuteButtonButton", true)
		if buttonInstance then
			buttonInstance:Destroy()
		end
	end

	local function resetButtonRow()
		updateButtonPosition("ResumeButton", UDim2.new(1, 0, 0, 0), UDim2.new(1 / 3, -buttonPadding, 1, 0), Vector2.new(1, 0))
		updateButtonPosition("ResetButton", UDim2.new(0.5, 0, 0, 0), UDim2.new(1 / 3, -buttonPadding, 1, 0), Vector2.new(0.5, 0))
		updateButtonPosition("LeaveButton", UDim2.new(0, 0, 0, 0), UDim2.new(1 / 3, -buttonPadding, 1, 0), Vector2.new(0, 0))
		muteButtonReset()
	end

	local function updateIcon()
		local buttonInstance = buttonsContainer:FindFirstChild("PlayerMuteButtonImageLabel", true)
		if not buttonInstance then
			return
		end
		buttonInstance.Image = pollImage()
	end

	local function appendMuteButton()
		local muteButton, imageLabel = utility:MakeStyledImageButton(
			"PlayerMuteButton",
			pollImage(),
			GetFFlagPauseMuteFix() and UDim2.new(1, 0, 1, 0) or UDim2.new(1 / 5, -5, 4 / 5, 0),
			GetFFlagPauseMuteFix() and UDim2.new(1, -6, 1, -4) or UDim2.new(0.5, -6, 0.65, -4),
			function ()
				VoiceChatServiceManager:ToggleMic("InGameMenuPlayers")
				if voiceAnalytics then
					voiceAnalytics:onToggleMuteSelf(isLocalPlayerMutedState)
				end
			end
			,nil, nil, "DefaultButton"
		)

		if Theme.UIBloxThemeEnabled then
			muteButton.Position = UDim2.new(1, 0, 0, 0)
			muteButton.Size = UDim2.new(1 / 7, -12, 1, 0)
			imageLabel.Size = UDim2.new(1, -6, 1, -4)
			Create'UIAspectRatioConstraint'
			{
				AspectRatio = 1,
				Parent = imageLabel
			}
		else
			muteButton.Position = UDim2.new(1, 0, 0, 0)
			muteButton.Size = UDim2.new(1 / 7, 0, 1, -6)
		end

		muteButton.AnchorPoint = Vector2.new(1, 0)

		if GetFFlagPauseMuteFix() then
			imageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
		end
		muteButton.Parent = buttonsContainer
		VoiceChatServiceManager.muteChanged.Event:Connect(function(muted)
			isLocalPlayerMutedState = muted
			updateIcon()
		end)
	end

	local function addMuteButtonExperience()
		if ChromeEnabled then
			return
		end
		updateButtonRow()
		appendMuteButton()
	end

	utility:OnResized(buttonsContainer, function(newSize, isPortrait)

		if (isPortrait or utility:IsSmallTouchScreen()) and (not Theme.AlwaysShowBottomBar()) then
			local buttonsFontSize = isPortrait and Theme.textSize(18) or Theme.textSize(24)
			if Theme.UIBloxThemeEnabled and Theme.UseBiggerText then
				buttonsFontSize = Theme.textSize(20)
			end
			buttonsContainer.Visible = not Theme.UIBloxThemeEnabled or not Theme.EnableVerticalBottomBar
			if Theme.UIBloxThemeEnabled then
				buttonsContainer.Size = UDim2.new(1, 0, 0, Theme.ButtonHeight)
			else
				buttonsContainer.Size = UDim2.new(1, 0, 0, isPortrait and 50 or 62)
			end
			resetLabel.TextSize = buttonsFontSize
			leaveLabel.TextSize = buttonsFontSize
			resumeLabel.TextSize = buttonsFontSize
		else
			buttonsContainer.Visible = false
			buttonsContainer.Size = UDim2.new(1, 0, 0, 0)
		end
	end)

	if FFlagUseNotificationsLocalization then
		local function ApplyLocalizeTextSettingsToLabel(label)
			label.AnchorPoint = Vector2.new(0.5,0.5)
			label.Position = UDim2.new(0.5, 0, 0.5, -3)
			label.Size = UDim2.new(0.75, 0, 0.5, 0)
		end
		ApplyLocalizeTextSettingsToLabel(leaveLabel)
		ApplyLocalizeTextSettingsToLabel(resetLabel)
		ApplyLocalizeTextSettingsToLabel(resetLabel)
	end

	local function reportAbuseButtonCreate(playerLabel, player)
		local rightSideButtons = playerLabel:FindFirstChild("RightSideButtons")
		if rightSideButtons then
			local oldReportButton = rightSideButtons:FindFirstChild("ReportPlayer")
			if oldReportButton then
				oldReportButton:Destroy()
			end

			if showRightSideButtons(player) then
				local reportPlayerFunction = function()
					reportAbuseMenu:ReportPlayer(player, "MenuPlayerList")
				end

				local reportButton = utility:MakeStyledImageButton("ReportPlayer", REPORT_PLAYER_IMAGE,
					UDim2.new(0, Theme.ButtonHeight, 0, Theme.ButtonHeight), UDim2.new(0, 28, 0, 28), reportPlayerFunction)
				reportButton.Name = "ReportPlayer"
				reportButton.Position = UDim2.new(1, -260, 0, 7)
				reportButton.LayoutOrder = 3
				reportButton.Selectable = true
				if Theme.UIBloxThemeEnabled then
					local renderName = RENDER_NAME_PREFIX.."-reportplayer-"..player.Name
					utility:MakeFocusState(reportButton, renderName)
				end
				reportButton.Parent = rightSideButtons
			end
		end
	end

	local createShareGameButton = nil
	local createMuteAllButton = nil
	local createChatButton = nil
	local createPlayerRow = nil

	local voiceChatServiceConnected = false

	local function muteAllButtonRemove()
		if shouldShowMuteToggles then
			if muteToggles then
				Roact.unmount(muteToggles)
			end
		else
			if muteAllButton then
				muteAllButton.Visible = false
				muteAllButton:Destroy()
				if getShowAppChatTreatment() or GetFFlagEnableShowVoiceUI() then
					muteAllButton = nil
				end
			end
			if getShowAppChatTreatment() or GetFFlagEnableShowVoiceUI() then
				updateButtonsLayout()
			else
				if shareGameButton then
					shareGameButton.Size = FULL_SIZE_SHARE_GAME_BUTTON_SIZE
				end
			end
		end
	end

	local function createRow(frameClassName, hasSecondRow)
		local frame = Instance.new(frameClassName)
		frame.Size = UDim2.new(1, 0, 0, PLAYER_ROW_HEIGHT)
		frame.Position = UDim2.new(0, 0, 0, 0)
		frame.ZIndex = 2

		if Theme.UIBloxThemeEnabled then
			frame.BackgroundColor3 = Theme.color("PlayerRowFrame")
			frame.BackgroundTransparency = Theme.transparency("PlayerRowFrame")
			Create'UICorner'
			{
				CornerRadius = Theme.DefaultCornerRadius,
				Parent = frame,
			}
		else
			frame.Image = "rbxasset://textures/ui/dialog_white.png"
			frame.ScaleType = "Slice"
			frame.SliceCenter = Rect.new(10, 10, 10, 10)
			frame.BackgroundTransparency = 1
			frame.ImageTransparency = FRAME_DEFAULT_TRANSPARENCY
		end

		local icon = Instance.new("ImageLabel")
		icon.Name = "Icon"
		icon.BackgroundTransparency = 1
		icon.Size = UDim2.new(0, 36, 0, 36)
		icon.Position = UDim2.new(0, 12, 0, 12)
		icon.ZIndex = 3
		icon.Parent = frame

		local textLabel = Instance.new("TextLabel")
		textLabel.Text = ""
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.Font = Theme.font(Enum.Font.SourceSans, "DisplayName")
		textLabel.FontSize = hasSecondRow and Theme.fontSize(Enum.FontSize.Size36, "DisplayName") or Theme.fontSize(Enum.FontSize.Size24, "DisplayName")
		textLabel.TextColor3 = Color3.new(1, 1, 1)
		textLabel.BackgroundTransparency = 1
		textLabel.Position = hasSecondRow and UDim2.new(0, LABEL_POSX, 0.5, -10) or UDim2.new(0, LABEL_POSX, .5, 0)
		textLabel.Size = UDim2.new(0, 0, 0, 0)
		textLabel.ZIndex = 3
		textLabel.Parent = frame

		if hasSecondRow then
			local secondRow = Instance.new("TextLabel")
			secondRow.Text = ""
			secondRow.Name = "SecondRow"
			secondRow.TextXAlignment = Enum.TextXAlignment.Left
			secondRow.Font = Theme.font(Enum.Font.SourceSans)
			secondRow.FontSize = Theme.fontSize(Enum.FontSize.Size24, "Username")
			secondRow.TextColor3 = Color3.fromRGB(162, 162, 162)
			secondRow.BackgroundTransparency = 1
			secondRow.Position = UDim2.new(0, LABEL_POSX, .5, 12)
			secondRow.Size = UDim2.new(0, 0, 0, 0)
			secondRow.ZIndex = 3
			secondRow.Parent = frame
		end

		return frame
	end

	local TAP_ACCURACY_THREASHOLD = 20
	createShareGameButton = function()
		local frame = createRow("ImageButton")
		if Theme.UIBloxThemeEnabled then
			frame.Size = UDim2.new(1, 0, 0, BUTTON_ROW_HEIGHT)
		end
		local textLabel = frame.TextLabel
		local icon = frame.Icon
		if voiceChatServiceConnected then
			if not shouldShowMuteToggles then
				frame.Size = HALF_SIZE_SHARE_GAME_BUTTON_SIZE
			end
			textLabel.Size = UDim2.new(1, -LABEL_POSX, 0, 0)
			textLabel.TextTruncate = Enum.TextTruncate.AtEnd
			frame.AnchorPoint = Vector2.new(0, 0)
		end

		textLabel.Font = Theme.font(Enum.Font.SourceSansSemibold, "Semibold")
		textLabel.AutoLocalize = false
		textLabel.Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.InviteFriendsToPlay")

		if Theme.UIBloxThemeEnabled then
			icon.AnchorPoint = Vector2.new(0, 0.5)
			icon.Position = UDim2.new(0, 18, 0.5, 0)
			local iconImg = Theme.Images["icons/actions/friends/friendInvite"]
			if iconImg then
				icon.Image = iconImg.Image
				icon.ImageRectOffset = iconImg.ImageRectOffset
				icon.ImageRectSize = iconImg.ImageRectSize
			end
		else
			icon.Size = UDim2.new(0, 24, 0, 24)
			icon.Position = UDim2.new(0, 18, 0, 18)
			ShareGameIcons:ApplyImage(icon, "invite")
		end

		local function setIsHighlighted(isHighlighted)
			if isHighlighted then
				frame.ImageTransparency = FRAME_SELECTED_TRANSPARENCY
			else
				frame.ImageTransparency = FRAME_DEFAULT_TRANSPARENCY
			end
		end

		frame.InputBegan:Connect(function() setIsHighlighted(true) end)
		frame.InputEnded:Connect(function() setIsHighlighted(false) end)
		frame.Activated:Connect(function() setIsHighlighted(false) end)
		frame.TouchPan:Connect(function(_, totalTranslation)
			if math.abs(totalTranslation.Y) > TAP_ACCURACY_THREASHOLD then
				setIsHighlighted(false)
			end
		end)

		frame.SelectionGained:connect(function() setIsHighlighted(true) end)
		frame.SelectionLost:connect(function() setIsHighlighted(false) end)
		frame.SelectionImageObject = frame:Clone()

		if Theme.UIBloxThemeEnabled then
			local renderName = RENDER_NAME_PREFIX.."-sharegame"
			utility:MakeFocusState(frame, renderName)
		end

		return frame
	end

	createMuteAllButton = function()
		local frame = createRow("ImageButton")
		frame.Size = UDim2.new(shareGameButton and 0.5 or 1, -10, 0, BUTTON_ROW_HEIGHT)
		frame.Position = UDim2.new(1, 0, 0, 0)
		frame.AnchorPoint = Vector2.new(1, 0)
		local textLabel = frame.TextLabel
		local icon = frame.Icon

		textLabel.Size = UDim2.new(1, -LABEL_POSX, 0, 0)
		textLabel.TextTruncate = Enum.TextTruncate.AtEnd
		textLabel.Font = Theme.font(Enum.Font.SourceSansSemibold, "Semibold")
		textLabel.AutoLocalize = false
		textLabel.Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.MuteAll")

		icon.Size = UDim2.new(0, 32, 0, 32)
		icon.Position = UDim2.new(0, 18, 0, 16)
		icon.Image = VoiceChatServiceManager:GetIcon("UnmuteAll", "Misc")

		if Theme.UIBloxThemeEnabled then
			icon.AnchorPoint = Vector2.new(0, 0.5)
			icon.Position = UDim2.new(0, 18, 0.5, 0)
		end

		local function setIsHighlighted(isHighlighted)
			if isHighlighted then
				frame.ImageTransparency = FRAME_SELECTED_TRANSPARENCY
			else
				frame.ImageTransparency = FRAME_DEFAULT_TRANSPARENCY
			end
		end

		frame.InputBegan:Connect(function() setIsHighlighted(true) end)
		frame.InputEnded:Connect(function() setIsHighlighted(false) end)
		frame.Activated:Connect(function() setIsHighlighted(false) end)
		frame.TouchPan:Connect(function(_, totalTranslation)
			if math.abs(totalTranslation.Y) > TAP_ACCURACY_THREASHOLD then
				setIsHighlighted(false)
			end
		end)

		frame.SelectionGained:connect(function() setIsHighlighted(true) end)
		frame.SelectionLost:connect(function() setIsHighlighted(false) end)
		frame.SelectionImageObject = frame:Clone()

		if Theme.UIBloxThemeEnabled then
			local renderName = RENDER_NAME_PREFIX.."-muteall"
			utility:MakeFocusState(frame, renderName)
		end

		return frame
	end

	if getShowAppChatTreatment() then
		local unreadIndicator: GuiObject?
		local shouldUnreadIndicatorBeVisible = false

		this.UpdateAppChatUnreadMessagesCount = function(newCount)
			shouldUnreadIndicatorBeVisible = newCount > 0

			if unreadIndicator then
				unreadIndicator.Visible = shouldUnreadIndicatorBeVisible
			end
		end

		createChatButton = function()
			local frame = createRow("ImageButton")
			local textLabel = frame.TextLabel
			local icon = frame.Icon

			textLabel.Size = UDim2.new(1, -LABEL_POSX, 0, 0)
			textLabel.TextTruncate = Enum.TextTruncate.AtEnd
			textLabel.Font = Theme.font(Enum.Font.SourceSansSemibold, "Semibold")
			textLabel.AutoLocalize = false
			textLabel.Text = RobloxTranslator:FormatByKey("Feature.Chat.Label.RobloxConnect")

			icon.Size = UDim2.new(0, 32, 0, 32)
			icon.Position = UDim2.new(0, 18, 0, 16)

			if Theme.UIBloxThemeEnabled then
				icon.AnchorPoint = Vector2.new(0, 0.5)
				icon.Position = UDim2.new(0, 18, 0.5, 0)

				local iconImg = if FFlagAppChatTiltMenuConnectIcon then Theme.Images["icons/menu/platformChatOff"] else Theme.Images["icons/menu/chat_off"]

				icon.Image = iconImg.Image
				icon.ImageRectOffset = iconImg.ImageRectOffset
				icon.ImageRectSize = iconImg.ImageRectSize
			end

			local setHighlighted = function(isHighlighted)
				frame.ImageTransparency = FRAME_SELECTED_TRANSPARENCY
			end

			local setNotHighlighted = function(isHighlighted)
				frame.ImageTransparency = FRAME_DEFAULT_TRANSPARENCY
			end

			frame.InputBegan:Connect(setHighlighted)
			frame.InputEnded:Connect(setNotHighlighted)
			frame.Activated:Connect(setNotHighlighted)
			frame.TouchPan:Connect(function(_, totalTranslation)
				if math.abs(totalTranslation.Y) > TAP_ACCURACY_THREASHOLD then
					setNotHighlighted()
				end
			end)

			frame.SelectionGained:connect(setHighlighted)
			frame.SelectionLost:connect(setNotHighlighted)
			frame.SelectionImageObject = frame:Clone()

			if Theme.UIBloxThemeEnabled then
				local renderName = RENDER_NAME_PREFIX.."-chat"
				utility:MakeFocusState(frame, renderName)
			end

			unreadIndicator = Create'Frame'{
				Name = "UnreadIndicator",
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = Theme.transparency("White"),
				BackgroundColor3 = Theme.color("White"),
				Size = UDim2.new(0, 8, 0, 8),
				Position = UDim2.new(1, -15, 0.5, 0),
				Visible = shouldUnreadIndicatorBeVisible,
				Parent = frame
			}
			Create'UICorner'{
				CornerRadius = UDim.new(1, 0),
				Parent = unreadIndicator,
			}


			return frame
		end
	end

	local function createMuteToggles(initialTogglesState, playersFriends)
		return Roact.createElement(UIBlox.Core.Style.Provider, {
			style = Theme,
		}, {
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new(LocalizationService.RobloxLocaleId),
			}, {
				MuteToggles = Roact.createElement(MuteToggles, {
					Players = PlayersService,
					initialTogglesState = initialTogglesState,
					playersFriends = playersFriends,
				}),
			}),
		})
	end

	local function createInspectButtonImage(activateInspectAndBuyMenu)
		local inspectButton = utility:MakeStyledImageButton("InspectButton", INSPECT_IMAGE,
			UDim2.new(0, Theme.ButtonHeight, 0, Theme.ButtonHeight), UDim2.new(0, 28, 0, 28), activateInspectAndBuyMenu)
		return inspectButton
	end

	local function resizeInspectButton(parent, player, isPortrait, wasPortrait)
		local inspectButton = parent:FindFirstChild("Inspect")
		if inspectButton and isPortrait == wasPortrait then
			return
		end

		if inspectButton then
			inspectButton:Destroy()
		end

		local activateInspectAndBuyMenu = function()
			AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, Constants.AnalyticsExamineAvatarName, Constants.AnalyticsMenuActionName, {})
			GuiService:InspectPlayerFromUserIdWithCtx(player.UserId, "escapeMenu")
			this.HubRef:SetVisibility(false)
		end

		inspectButton = createInspectButtonImage(activateInspectAndBuyMenu)
		inspectButton.Name = "Inspect"
		inspectButton.LayoutOrder = 2
		inspectButton.Selectable = true
		inspectButton.Parent = parent
		if Theme.UIBloxThemeEnabled then
			local renderName = RENDER_NAME_PREFIX.."-inspect-"..player.Name
			utility:MakeFocusState(inspectButton, renderName)
		end
	end

	local function resizePlatformName(parent, consoleName, consoleUserId)
		local platformNameContainer = parent:FindFirstChild("PlatformNameContainer")

		if platformNameContainer then
			platformNameContainer:Destroy()
			platformNameContainer = nil
		end

		if consoleName == nil then
			return
		end

		--create container frame
		platformNameContainer = Instance.new("Frame")
		platformNameContainer.Name = "PlatformNameContainer"
		platformNameContainer.BackgroundTransparency = 1
		platformNameContainer.ZIndex = 3
		platformNameContainer.Position = UDim2.new(0, 0, 0, 0)
		platformNameContainer.Size = UDim2.new(0, 0, 1, 0)
		platformNameContainer.AutomaticSize = Enum.AutomaticSize.X
		platformNameContainer.Selectable = false
		platformNameContainer.LayoutOrder = -1
		platformNameContainer.Parent = parent

		local onActivated = nil
		if
			game:GetEngineFeature("PlatformFriendsService") and
			game:GetEngineFeature("PlatformFriendsProfile") and
			PlatformFriendsService and
			PlatformFriendsService:IsProfileEnabled() and
			consoleUserId and
			consoleUserId ~= ""
		then
			onActivated = function()
				PlatformFriendsService:ShowProfile(consoleUserId)
			end
		end

		-- create platform name
		local consoleNameContainer, consoleNameText = utility:MakeStyledButton("consoleNameContainer", consoleName, UDim2.new(0, 0, 0, Theme.ButtonHeight), onActivated)
		consoleNameContainer.AnchorPoint = Vector2.new(0, 0.5)
		consoleNameContainer.Position = UDim2.fromScale(0, 0.5)
		consoleNameContainer.AutomaticSize = Enum.AutomaticSize.X
		consoleNameContainer.Parent = platformNameContainer

		-- Config button text
		consoleNameText.Size = UDim2.fromScale(0, 1)
		consoleNameText.AutoLocalize = false
		consoleNameText.TextSize = Theme.platformNameTextSize
		consoleNameText.TextScaled = false
		consoleNameText.TextWrapped = false
		consoleNameText.AutomaticSize = Enum.AutomaticSize.X

		-- create platform icon
		local platformIcon = "rbxasset://textures/ui/Shell/Icons/PlatformLogo@3x.png"

		local iconLabel = Create("ImageLabel"){
			Name = "iconLabel",
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = Theme.platformNameIconSize,
			Image = platformIcon,
			ImageColor3 = Color3.new(1, 1, 1),
		}
		iconLabel.Parent = consoleNameContainer

		local layout = Create("UIListLayout"){
			Name = "PLatformNameUIListLayout",
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 12),
		}
		layout.Parent = consoleNameContainer

		iconLabel.LayoutOrder = 1
		consoleNameText.LayoutOrder = 2

		Create("UIPadding") {
			PaddingLeft = UDim.new(0, 12),
			PaddingRight = UDim.new(0, 12),
			Parent = consoleNameContainer,
		}

		return platformNameContainer
	end

	createPlayerRow = function()
		local showDisplayName = true
		local frame = createRow("ImageLabel", showDisplayName)
		frame.TextLabel.Name = "DisplayNameLabel"
		frame.SecondRow.Name = "NameLabel"
		if GetFFlagLuaAppEnableOpenTypeSupport() then
			frame.NameLabel.OpenTypeFeatures = OpenTypeSupport:getUserNameStylisticAlternative()
		end
		local rightSideButtons = Instance.new("Frame")
		rightSideButtons.Name = "RightSideButtons"
		rightSideButtons.BackgroundTransparency = 1
		rightSideButtons.ZIndex = 2
		rightSideButtons.Position = UDim2.new(0, 0, 0, 0)
		rightSideButtons.Size = UDim2.new(1, RIGHT_SIDE_BUTTON_PAD, 1, 0)
		rightSideButtons.Parent = frame

		-- Selection Highlighting logic:
		local updateHighlight = function(lostSelectionObject)
			if frame then
				if GuiService.SelectedCoreObject and GuiService.SelectedCoreObject ~= lostSelectionObject and GuiService.SelectedCoreObject.Parent == rightSideButtons then
					frame.ImageTransparency = FRAME_SELECTED_TRANSPARENCY
				else
					frame.ImageTransparency = FRAME_DEFAULT_TRANSPARENCY
				end
			end
		end

		local fakeSelectionObject = nil
		rightSideButtons.ChildAdded:connect(function(child)
			if child:IsA("GuiObject") then
				if fakeSelectionObject and child ~= fakeSelectionObject then
					fakeSelectionObject:Destroy()
					fakeSelectionObject = nil
				end
				child.SelectionGained:connect(function() updateHighlight(nil) end)
				child.SelectionLost:connect(function() updateHighlight(child) end)
			end
		end)

		fakeSelectionObject = Instance.new("Frame")
		fakeSelectionObject.Selectable = true
		fakeSelectionObject.Size = UDim2.new(1, 0, 1, 0)
		fakeSelectionObject.BackgroundTransparency = 1
		fakeSelectionObject.SelectionImageObject = fakeSelectionObject:Clone()
		fakeSelectionObject.Parent = rightSideButtons

		local rightSideListLayout = Instance.new("UIListLayout")
		rightSideListLayout.Name = "RightSideListLayout"
		rightSideListLayout.FillDirection = Enum.FillDirection.Horizontal
		rightSideListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
		rightSideListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		rightSideListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		rightSideListLayout.Padding = UDim.new(0, 12)
		rightSideListLayout.Parent = rightSideButtons

		pcall(function()
			frame.NameLabel.Localize = false
			if showDisplayName then
				frame.DisplayNameLabel.Localize = false
			end
		end)

		return frame
	end

	--Clean up with EngineTruncationEnabledForIngameSettingsV2
	-- Manage cutting off a players name if it is too long when switching into portrait mode.
	local function managePlayerNameCutoff(frame, player)
		local wasIsPortrait = nil
		local reportFlagAddedConnection = nil
		local function reportFlagChanged(reportFlag, prop, combinedName)
			if prop == "AbsolutePosition" and wasIsPortrait then
				local maxPlayerNameSize = reportFlag.AbsolutePosition.X - 20 - frame.NameLabel.AbsolutePosition.X
				frame.NameLabel.Text = "@" .. player.Name
				frame.DisplayNameLabel.Text = player.DisplayName
				if combinedName then
					frame.DisplayNameLabel.Text = combinedName
				end


				local newDisplayNameLength = utf8.len(player.DisplayName)
				if combinedName then
					newDisplayNameLength = utf8.len(combinedName)
				end

				while frame.NameLabel.TextBounds.X > maxPlayerNameSize and newDisplayNameLength > 0 do
					if combinedName then
						local offset = utf8.offset(combinedName, newDisplayNameLength)
						frame.NameLabel.Text = string.sub(combinedName, 1, offset) .. "..."
					else
						local offset = utf8.offset(player.DisplayName, newDisplayNameLength)
						frame.NameLabel.Text = string.sub(player.DisplayName, 1, offset) .. "..."
					end
					newDisplayNameLength = newDisplayNameLength - 1
				end

				local playerNameText = "@" .. player.Name
				local newNameLength = string.len(playerNameText)
				while frame.NameLabel.TextBounds.X > maxPlayerNameSize and newNameLength > 0 do
					frame.NameLabel.Text = string.sub(playerNameText, 1, newNameLength) .. "..."
					newNameLength = newNameLength - 1
				end
			end
		end

		local function reportFlagChangedWithCombinedName(reportFlag, prop, combinedName)
			if FFlagCheckForNilUserIdOnPlayerList and not player.UserId then
				reportFlagChanged(reportFlag, "AbsolutePosition")
			else
				ApolloClient:query({
					query = if FFlagInExperienceNameQueryEnabled then UserProfiles.Queries.userProfilesInExperienceNamesByUserIds else UserProfiles.Queries.userProfilesAllNamesByUserIds,
					variables = {
						userIds = { tostring(player.UserId) },
					},
				}):andThen(function(result)
					reportFlagChanged(reportFlag, "AbsolutePosition", if FFlagInExperienceNameQueryEnabled then getInExperienceCombinedNameFromId(result.data, player.UserId) else getCombinedNameFromId(result.data, player.UserId))
				end):catch(function()
					reportFlagChanged(reportFlag, "AbsolutePosition")
				end)
			end
		end

		if not isEngineTruncationEnabledForIngameSettings() then
			utility:OnResized(frame.NameLabel, function(newSize, isPortrait)
				if wasIsPortrait ~= nil and wasIsPortrait == isPortrait then
					return
				end
				local leftMostButton = "Inspect"
				isPortrait = isPortrait and not useOptimizedPortraitLayout()
				wasIsPortrait = isPortrait
				if isPortrait then
					if reportFlagAddedConnection == nil then
						reportFlagAddedConnection = frame.RightSideButtons.ChildAdded:connect(function(child)
							if child.Name == leftMostButton then
								child.Changed:connect(function(prop)
									reportFlagChangedWithCombinedName(child, "AbsolutePosition")
								end)
								reportFlagChangedWithCombinedName(child, "AbsolutePosition")
							end
						end)
					end
					local reportFlag = frame.RightSideButtons:FindFirstChild(leftMostButton)
					if reportFlag then
						reportFlag.Changed:connect(function(prop)
							reportFlagChangedWithCombinedName(reportFlag, prop)
						end)

						reportFlagChangedWithCombinedName(reportFlag, "AbsolutePosition")
					end
				else
					frame.NameLabel.Text = "@" .. player.Name
					if FFlagCheckForNilUserIdOnPlayerList and not player.UserId then
						frame.DisplayNameLabel.Text = player.DisplayName
					else
						ApolloClient:query({
							query = if FFlagInExperienceNameQueryEnabled then UserProfiles.Queries.userProfilesInExperienceNamesByUserIds else UserProfiles.Queries.userProfilesAllNamesByUserIds,
							variables = {
								userIds = { tostring(player.UserId) },
							},
						}):andThen(function(result)
							frame.DisplayNameLabel.Text = if FFlagInExperienceNameQueryEnabled then getInExperienceCombinedNameFromId(result.data, player.UserId) else getCombinedNameFromId(result.data, player.UserId)
						end):catch(function()
							frame.DisplayNameLabel.Text = player.DisplayName
						end)
					end
				end
			end)
		end

		local function getNearestRightSideButtonXPosition()
			local furthestLeftPos = nil

			for _, button in pairs(frame.RightSideButtons:GetChildren()) do
				if button:IsA("ImageButton") and (not furthestLeftPos or button.AbsolutePosition.X < furthestLeftPos) then
					furthestLeftPos = button.AbsolutePosition.X
				end
			end

			return furthestLeftPos
		end

		local lastRightSideButtonXPosition = nil
		local function rightSideButtonsChanged()
			local rightSideButtonXPosition = getNearestRightSideButtonXPosition()

			--We should only update if the absolute X position of the nearest "right-side-button" changes
			if rightSideButtonXPosition == lastRightSideButtonXPosition then
				return
			end
			lastRightSideButtonXPosition = rightSideButtonXPosition

			local nameLabelSize

			if rightSideButtonXPosition then
				nameLabelSize = UDim2.new(0, rightSideButtonXPosition - frame.NameLabel.AbsolutePosition.X - PLAYER_NAME_RIGHT_PADDING, 0, 0)
			else
				nameLabelSize = UDim2.new(1, - PLAYER_NAME_RIGHT_PADDING, 0, 0)
			end

			frame.NameLabel.Size = nameLabelSize
			frame.DisplayNameLabel.Size = nameLabelSize
			frame.NameLabel.Text = if FFlagPlayerListRefactorUsernameFormatting then formatUsername(player.Name) else "@" .. player.Name
			if FFlagCheckForNilUserIdOnPlayerList and not player.UserId then
				frame.DisplayNameLabel.Text = player.DisplayName
			else
				ApolloClient:query({
					query = if FFlagInExperienceNameQueryEnabled then UserProfiles.Queries.userProfilesInExperienceNamesByUserIds else UserProfiles.Queries.userProfilesAllNamesByUserIds,
					variables = {
						userIds = { tostring(player.UserId) },
					},
				}):andThen(function(result)
					frame.DisplayNameLabel.Text = if FFlagInExperienceNameQueryEnabled then getInExperienceCombinedNameFromId(result.data, player.UserId) else getCombinedNameFromId(result.data, player.UserId)
				end):catch(function()
					frame.DisplayNameLabel.Text = player.DisplayName
				end)
			end
		end

		if isEngineTruncationEnabledForIngameSettings() then
			reportFlagAddedConnection = frame.RightSideButtons.ChildAdded:connect(function(child)
				rightSideButtonsChanged()
				child:GetPropertyChangedSignal("AbsolutePosition"):Connect(rightSideButtonsChanged)
			end)

			rightSideButtonsChanged()
		end
	end

	local function canShareCurrentGame()
		return localPlayer.UserId > 0
	end

	local sortedPlayers
	local existingPlayerLabels = {}
	local livePlayers = {}
	local renderStepName = 'player-list-mute-update'
	local renderSteppedConnected = false

	local function updateAllMuteButtons()
		if shouldShowMuteToggles then
			if not muteToggles then
				return
			end
		elseif not muteAllButton then
			return
		elseif GetFFlagEnableShowVoiceUI() and not VoiceChatServiceManager.voiceUIVisible then
			return
		end

		local players = PlayersService:GetPlayers()
		local allMuted = true
		for _, player in ipairs(players) do
			local frame = existingPlayerLabels[player.Name]

			if player and frame then
				local status = VoiceChatServiceManager.participants[tostring(player.UserId)]
				-- Check if a player is not muted to update the Mute All button.
				if FFlagAvatarChatCoreScriptSupport and status and (not status.isMutedLocally and not status.isMuted) then
					allMuted = false
				end
				muteButtonUpdate(frame, status)
			end
		end

		-- See if the Mute All button needs to update.
		if (FFlagAvatarChatCoreScriptSupport or GetFFlagEnableShowVoiceUI()) and not shouldShowMuteToggles then
			if allMuted then
				muteAllState = true
			else
				muteAllState = false
			end
			local text = muteAllState and RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.UnmuteAll") or RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.MuteAll")

			-- This button may not exist when cleaning up the settings menu after exiting a game.
			if (FFlagAvatarChatCoreScriptSupport or GetFFlagEnableShowVoiceUI()) and not (muteAllButton and muteAllButton:FindFirstChild("TextLabel")) then
				return
			end
			muteAllButton.TextLabel.Text = text
			muteAllButton.Icon.Image = VoiceChatServiceManager:GetIcon(muteAllState and "MuteAll" or "UnmuteAll", "Misc")
		end
	end

	local function destroyAllUserMuteButtons()
		local players = PlayersService:GetPlayers()
		for _, player in players do
			local playerLabel = existingPlayerLabels[player.Name]
			if playerLabel then
				local buttons = playerLabel:FindFirstChild("RightSideButtons")
				if buttons then
					local muteStatusButton = buttons:FindFirstChild("MuteStatusButton")
					if muteStatusButton then
						if GuiService.SelectedCoreObject == muteStatusButton then
							if UserInputService.GamepadEnabled then
								GuiService.SelectedCoreObject = shareGameButton
							else
								GuiService.SelectedCoreObject = nil
							end
						end
						muteStatusButton:Destroy()
					end
				end
			end
		end
	end

	local rebuildPlayerList = function(switchedFromGamepadInput)
		sortedPlayers = PlayersService:GetPlayers()

		if ChromeEnabled then
			table.sort(sortedPlayers, function(item1,item2)
				local name1 = item1.Name:lower()
				local name2 = item2.Name:lower()
				-- pin localPlayer to the top of the sort
				if item1 == localPlayer then
					name1 = " "
				end
				if item2 == localPlayer then
					name2 = " "
				end
				return name1 < name2
			end)
		else
			table.sort(sortedPlayers, function(item1,item2)
				return item1.Name:lower() < item2.Name:lower()
			end)
		end

		local extraOffset = if shouldShowMuteToggles then 60 else 20
		if utility:IsSmallTouchScreen() or utility:IsPortrait() then
			extraOffset = if shouldShowMuteToggles then 125 else 85
		end

		local showMuteAllButton = voiceChatServiceConnected and not muteAllButton
		if GetFFlagEnableShowVoiceUI() then
			showMuteAllButton = voiceChatServiceConnected and not muteAllButton and VoiceChatServiceManager.voiceUIVisible
		end
		local renderMuteToggles = voiceChatServiceConnected and not muteToggles
		if GetFFlagEnableShowVoiceUI() then
			renderMuteToggles = VoiceChatServiceManager.voiceUIVisible
		end

		local showChatButton
		local showShareGameButton

		if getShowAppChatTreatment() or GetFFlagEnableShowVoiceUI() then
			showShareGameButton = canShareCurrentGame() and not shareGameButton and not RunService:IsStudio()
			showChatButton = not chatButton


			if (showShareGameButton or showMuteAllButton or showChatButton) and not buttonFrame then
				buttonFrame = Create'Frame'
				{
					Name = "Holder",
					BackgroundTransparency = 1,
					Size = UDim2.fromScale(1, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					Parent = this.Page,
					LayoutOrder = 1,
				}
				buttonFrameLayout = Create'UIListLayout'
				{
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, BUTTON_ROW_HORIZONTAL_PADDING),
					Parent = buttonFrame,
				}
			end
		else
			if not shouldShowMuteToggles then
				if showMuteAllButton then
					buttonFrame = Create'Frame'
					{
						Name = "Holder",
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, BUTTON_ROW_HEIGHT),
						Parent = this.Page,
						LayoutOrder = 1,
					}
				end
			end
		end

		local function layoutMuteAll()
			if not buttonFrame then
				buttonFrame = Create'Frame'
					{
						Name = "Holder",
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, BUTTON_ROW_HEIGHT),
						Parent = this.Page,
						LayoutOrder = 1,
					}
			end
			shareGameButton.Parent = buttonFrame
			shareGameButton.Size = HALF_SIZE_SHARE_GAME_BUTTON_SIZE
			muteAllButton.Parent = buttonFrame
		end

		-- Create "invite friends" button if it doesn't exist yet
		-- We shouldn't create this button if we're not in a live game
		-- If this condition is updated, showShareGameButton should be updated above
		local isNotStudio = (not RunService:IsStudio())
		if canShareCurrentGame() and not shareGameButton and isNotStudio then
			local inviteToGameAnalytics
			if GetFFlagLuaInExperienceCoreScriptsGameInviteUnification() then
				inviteToGameAnalytics = GameInviteAnalyticsManager:withButtonName(GameInviteAnalyticsManager.ButtonName.SettingsHub)
			else
				inviteToGameAnalytics = InviteToGameAnalytics.new()
					:withEventStream(EventStream.new(AnalyticsService))
					:withDiag(Diag.new(AnalyticsService))
					:withButtonName(InviteToGameAnalytics.ButtonName.SettingsHub)
			end

			shareGameButton = createShareGameButton()
			shareGameButton.Activated:connect(function()
				inviteToGameAnalytics:inputShareGameEntryPoint()

				this.HubRef:InviteToGame()
			end)

			shareGameButton.LayoutOrder = 1
			if getShowAppChatTreatment() then
				shareGameButton.Parent = buttonFrame
				updateButtonsLayout()
			else
				if not shouldShowMuteToggles and showMuteAllButton then
					shareGameButton.Parent = buttonFrame
				else
					-- Ensure the button is always at the top of the list
					shareGameButton.Parent = this.Page
				end
			end
		end

		if getShowAppChatTreatment() then
			if showChatButton then
				chatButton = createChatButton()
				chatButton.Activated:connect(function()
					this.HubRef:SwitchToPage(this.HubRef.AppChatPage, false)
				end)
				chatButton.LayoutOrder = if getShowAppChatTreatment() then 2 else 3
				chatButton.Parent = buttonFrame
				updateButtonsLayout()
			end
			
			this.Page:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
				if getUsedColumnLayout() ~= lastUsedColumnLayout then
					updateButtonsLayout()
				end
			end)
		end

		local inspectMenuEnabled = GuiService:GetInspectMenuEnabled()

		-- iterate through players to reuse or create labels for players
		for index=1, #sortedPlayers do
			local player = sortedPlayers[index]
			local frame
			frame = existingPlayerLabels[player.Name]

			if player then
				livePlayers[player.Name] = true
				-- create label (frame) for this player index if one does not exist
				if not frame or not frame.Parent then
					frame = createPlayerRow((index - 1)*PLAYER_ROW_SPACING + extraOffset)
					frame.Parent = this.Page
					existingPlayerLabels[player.Name] = frame
				end
				frame.Name = "PlayerLabel" ..player.Name

				if voiceChatServiceConnected then
					local status = VoiceChatServiceManager.participants[tostring(player.UserId)]
					muteButtonUpdate(frame, status)
				end

				local imageUrl = SocialUtil.GetPlayerImage(
					math.max(1, player.UserId), Enum.ThumbnailSize.Size100x100, Enum.ThumbnailType.AvatarThumbnail)
				frame.Icon.Image = imageUrl

				frame.NameLabel.Text = if FFlagPlayerListRefactorUsernameFormatting then formatUsername(player.Name) else "@" .. player.Name

				frame.ImageTransparency = FRAME_DEFAULT_TRANSPARENCY
				-- extra index room for shareGameButton
				frame.LayoutOrder = index + 1

				if isEngineTruncationEnabledForIngameSettings() then
					frame.NameLabel.TextTruncate = Enum.TextTruncate.AtEnd
					frame.DisplayNameLabel.TextTruncate = Enum.TextTruncate.AtEnd
				end

				managePlayerNameCutoff(frame, player)

				friendStatusCreate(frame, player)

				local wasIsPortrait = nil
				utility:OnResized(frame, function(newSize, isPortrait)

					local parent = frame:FindFirstChild("RightSideButtons")

					if FFlagExtendedExpMenuPortraitLayout then
						local firstRow = frame:FindFirstChild("DisplayNameLabel")
						local secondRow = frame:FindFirstChild("NameLabel")
						local rightSideListLayout = parent and parent:FindFirstChild("RightSideListLayout")

						if useOptimizedPortraitLayout() then
							--[[
								If portrait layout on mobile, move the buttons onto ..
								a second line to remove overlap with username

								Changes:
									- Taller frame. Moves usernames higher in parent frame
									- Changes alignment of buttons to left/bottom
									- Aligns button left edge to username left edge
							--]]
							frame.Size = UDim2.new(1, 0, 0, PLAYER_ROW_HEIGHT_PORTRAIT)

							if firstRow then
								if secondRow then
									firstRow.Position = UDim2.new(0, LABEL_POSX, USERNAME_POSITION_PORTRAIT, -10)
									secondRow.Position = UDim2.new(0, LABEL_POSX, USERNAME_POSITION_PORTRAIT, 12)
								else
									firstRow.Position = UDim2.new(0, LABEL_POSX, USERNAME_POSITION_PORTRAIT, 0)
								end
							end

							if parent then
								parent.Position = UDim2.new(0, LABEL_POSX-3, 0, -2)
								if Theme.UIBloxThemeEnabled then
									parent.Size = UDim2.new(1, RIGHT_SIDE_BUTTON_PAD, 0.99, -8)
								else
									parent.Size = UDim2.new(1, RIGHT_SIDE_BUTTON_PAD, 0.99, 0)
								end
							end

							if rightSideListLayout then
								rightSideListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
								rightSideListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
							end
						else -- reset defaults
							frame.Size = UDim2.new(1, 0, 0, PLAYER_ROW_HEIGHT)

							if firstRow then
								if secondRow then
									firstRow.Position = UDim2.new(0, LABEL_POSX, USERNAME_POSITION, -10)
									secondRow.Position = UDim2.new(0, LABEL_POSX, USERNAME_POSITION, 12)
								else
									firstRow.Position = UDim2.new(0, LABEL_POSX, USERNAME_POSITION, 0)
								end
							end

							if parent then
								parent.Position = UDim2.new(0, 0, 0, 0)
								parent.Size = UDim2.new(1, RIGHT_SIDE_BUTTON_PAD, 1, 0)
							end

							if rightSideListLayout then
								rightSideListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
								rightSideListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
							end
						end
					end -- FFlagExtendedExpMenuPortraitLayout

					if parent then
						resizeFriendButton(parent, player, isPortrait, wasIsPortrait)
						resizeBlockButton(parent, player, isPortrait, wasIsPortrait)
						if inspectMenuEnabled then
							resizeInspectButton(parent, player, isPortrait, wasIsPortrait)
						end
						wasIsPortrait = isPortrait
					end
				end)

				reportAbuseButtonCreate(frame, player)
			end
		end

		if shouldShowMuteToggles then
			if renderMuteToggles then
				muteToggles = Roact.mount(createMuteToggles(initialMuteTogglesState, playersFriends), this.Page, "MuteToggles")
			end
		else
			if showMuteAllButton then
				muteAllButton = createMuteAllButton()
				muteAllButton.Activated:connect(function()
					muteAllState = not muteAllState
					local text = muteAllState and RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.UnmuteAll") or RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.MuteAll")
					muteAllButton.TextLabel.Text = text
					muteAllButton.Icon.Image = VoiceChatServiceManager:GetIcon(muteAllState and "MuteAll" or "UnmuteAll", "Misc")
					if GetFFlagVoiceChatUILogging() then
						log:debug("{} all players", muteAllState and "Muting" or "Unmuting")
					end

					if voiceAnalytics then
						voiceAnalytics:onToggleMuteAll(muteAllState)
					end

					VoiceChatServiceManager:MuteAll(muteAllState, VoiceConstants.VOICE_CONTEXT_TYPE.IN_GAME_MENU)
					updateAllMuteButtons()
				end)

				muteAllButton.LayoutOrder = if getShowAppChatTreatment() then 3 else 1
				if FFlagCorrectlyPositionMuteButton then
					layoutMuteAll()
				else
					muteAllButton.Parent = buttonFrame
				end
				if getShowAppChatTreatment() or GetFFlagEnableShowVoiceUI() then
					updateButtonsLayout()
				end
			end
		end

		local playerIds
		if FFlagCheckForNilUserIdOnPlayerList then
			playerIds = Cryo.List.filterMap(sortedPlayers, function(player)
				if not player.UserId then
					return nil
				else
					return tostring(player.UserId)
				end
			end)
		else
			playerIds = Cryo.List.filter(sortedPlayers, function(player)
				return tostring(player.UserId)
			end)
		end

		ApolloClient:query({
			query = if FFlagInExperienceNameQueryEnabled then UserProfiles.Queries.userProfilesInExperienceNamesByUserIds else UserProfiles.Queries.userProfilesAllNamesByUserIds,
			variables = {
				userIds = playerIds,
			},
		}):andThen(function(response)
			Cryo.List.map(response.data.userProfiles, function(userProfile)
				local labelFrame = existingPlayerLabels[userProfile.names.username]

				if labelFrame then
					labelFrame.DisplayNameLabel.Text = if FFlagInExperienceNameQueryEnabled then userProfile.names.inExperienceCombinedName else userProfile.names.combinedName

					if FFlagEnablePlatformName then
						local rightSideButtons = labelFrame:FindFirstChild("RightSideButtons")
						local platformName = nil

						if userProfile.names.platformName ~= "" then
							platformName = userProfile.names.platformName
						end

						if game:GetEngineFeature("PlatformFriendsService") and game:GetEngineFeature("PlatformFriendsProfile") then
							resizePlatformName(rightSideButtons, platformName, userProfile.platformProfileId)
						else
							resizePlatformName(rightSideButtons, platformName)
						end
					end
				end
			end)
		end):catch(function()
			Cryo.List.map(sortedPlayers, function(player)
				local labelFrame = existingPlayerLabels[player.Name]
				labelFrame.DisplayNameLabel.Text = player.DisplayName
			end)
		end)

		local frame = 0
		if voiceChatServiceConnected and not renderSteppedConnected and GetFFlagPlayerListAnimateMic() then
			log:debug("Setting Up Playerlist Mic Update Renderstep Hook")
			RunService:BindToRenderStep(renderStepName, Enum.RenderPriority.Last.Value, function()
				frame = frame + 1
				-- This looks a little less flickery if we only do it once every 3 frames
				if frame % 3 == 0 then
					updateAllMuteButtons()
					updateIcon()
				end
			end)
			renderSteppedConnected = true
		end

		for playerName, frame in pairs(existingPlayerLabels) do
			if not livePlayers[playerName] then
				frame:Destroy()
				existingPlayerLabels[playerName] = nil
			end
		end

		if UserInputService.GamepadEnabled then
			GuiService.SelectedCoreObject = shareGameButton
		end

		utility:OnResized("MenuPlayerListExtraPageSize", function(newSize, isPortrait)
			local extraOffset = if shouldShowMuteToggles then 60 else 20
			if utility:IsSmallTouchScreen() or utility:IsPortrait() then
				extraOffset = if shouldShowMuteToggles then 125 else 85
			end

			local inviteToGameRow = 1
			local playerListRowsCount = #sortedPlayers + inviteToGameRow
			if useOptimizedPortraitLayout() then
				this.Page.Size = UDim2.new(1,0,0, extraOffset + PLAYER_ROW_SPACING_PORTRAIT * playerListRowsCount - 5)
			else
				this.Page.Size = UDim2.new(1,0,0, extraOffset + PLAYER_ROW_SPACING * playerListRowsCount - 5)
			end
		end)
	end

	local cleanup = function()
		if renderStepName and renderSteppedConnected and GetFFlagPlayerListAnimateMic() then
			log:debug("Unbinding Playerlist Mic Update Renderstep Hook")
			renderSteppedConnected = false
			RunService:UnbindFromRenderStep(renderStepName)
		end
	end

	if game:GetEngineFeature("VoiceChatSupported")
		and not voiceChatServiceConnected
	then
		VoiceChatServiceManager:asyncInit():andThen(function()
			-- We should only check if the user is in the mute toggles experiment after voice chat is connected
			if GetFFlagShowMuteToggles() and GetFFlagMuteTogglesEnableIXP() then
				-- Get IXP layer data
				local layerFetchSuccess, layerData = pcall(function()
					return IXPServiceWrapper:GetLayerData(GetFStringMuteTogglesIXPLayerName())
				end)

				if not layerFetchSuccess then
					-- Don't show mute toggles if we can't access IXP service
					shouldShowMuteToggles = false
				elseif not layerData then
					shouldShowMuteToggles = false
				elseif not layerData.ShowMuteToggles then
					-- Don't show mute toggles if user is not enrolled in experiment
					shouldShowMuteToggles = false
				else
					shouldShowMuteToggles = true
				end
			end

			voiceChatServiceConnected = true
			VoiceChatServiceManager:SetupParticipantListeners()
			-- This will only affect mobile as buttonContainer is only visibile in mobile
			addMuteButtonExperience()
			-- Rerender when the participants state changes
			VoiceChatServiceManager.participantsUpdate.Event:Connect(function()
				updateAllMuteButtons()
			end)
			VoiceChatServiceManager.participantLeft.Event:Connect(function(participants, userLeft)
				updateAllMuteButtons()
				if GetFFlagPlayerListAnimateMic() then
					muteImageButtons[userLeft] = nil
				end
				if GetFFlagUseFriendsPropsInMuteToggles() then
					playersFriends[userLeft] = nil
				end
			end)
			if GetFFlagVoiceRecordingIndicatorsEnabled() then
				local VCS = VoiceChatServiceManager:getService()
				VCS.StateChanged:Connect(function(_oldState, newState)
					if newState == (Enum :: any).VoiceChatState.Ended then
						muteAllButtonRemove()
						voiceChatServiceConnected = false
					elseif newState == (Enum :: any).VoiceChatState.Joined and voiceChatServiceConnected == false then
						-- TODO: Re-Add removed buttons as soon as we have a valid usecase for re-joining voice mid-game
						if GetFFlagEnableShowVoiceUI() then
							voiceChatServiceConnected = true
							rebuildPlayerList()
						end
					end
				end)
			end
			if GetFFlagShowMuteToggles() then
				VoiceChatServiceManager.userAgencySelected.Event:Connect(function(isMuteAll)
					initialMuteTogglesState = isMuteAll
				end)
			end
			if FFlagCorrectlyPositionMuteButton then
				rebuildPlayerList()
			end
			if GetFFlagEnableShowVoiceUI() then
				VoiceChatServiceManager.showVoiceUI.Event:Connect(function()
					if not buttonsContainer:FindFirstChild("PlayerMuteButtonButton", true) then
						addMuteButtonExperience()
					end
					rebuildPlayerList()
				end)
				VoiceChatServiceManager.hideVoiceUI.Event:Connect(function()
					if muteAllButton then
						muteAllButtonRemove()
					end
					destroyAllUserMuteButtons()
					rebuildPlayerList()
					resetButtonRow()
				end)
				VoiceChatServiceManager.muteAllChanged.Event:Connect(function()
					updateAllMuteButtons()
				end)
			end
		end):catch(function(err)
			if GetFFlagVoiceChatUILogging() then
				log:warning("Failed to init VoiceChatServiceManager")
			end
		end)
	end

	if getShowAppChatTreatment() then
		this.Displayed.Event:connect(function()
			rebuildPlayerList()
		end)
	else
		this.Displayed.Event:connect(rebuildPlayerList)
	end
	this.Hidden.Event:connect(cleanup)

	PlayersService.PlayerRemoving:Connect(function (player)
		livePlayers[player.Name] = nil
		if GetFFlagUseFriendsPropsInMuteToggles() then
			playersFriends[player.UserId] = nil
		end

		local playerLabel = existingPlayerLabels[player.Name]

		if not playerLabel then
			return
		end

		local buttons = playerLabel:FindFirstChild("RightSideButtons")
		if not buttons then
			return
		end

		local friendStatus = buttons:FindFirstChild("FriendStatus")
		if friendStatus then
			if GuiService.SelectedCoreObject == friendStatus then
				if UserInputService.GamepadEnabled then
					GuiService.SelectedCoreObject = shareGameButton
				else
					GuiService.SelectedCoreObject = nil
				end
			end
			friendStatus:Destroy()
		end

		local reportPlayer = buttons:FindFirstChild("ReportPlayer")
		if reportPlayer then
			if GuiService.SelectedCoreObject == reportPlayer then
				if UserInputService.GamepadEnabled then
					GuiService.SelectedCoreObject = shareGameButton
				else
					GuiService.SelectedCoreObject = nil
				end
			end
			reportPlayer:Destroy()
		end

		local muteStatus = buttons:FindFirstChild("MuteStatusButton")
		if muteStatus then
			if GuiService.SelectedCoreObject == muteStatus then
				if UserInputService.GamepadEnabled then
					GuiService.SelectedCoreObject = shareGameButton
				else
					GuiService.SelectedCoreObject = nil
				end
			end
			muteStatus:Destroy()
		end

		local blockButton = buttons:FindFirstChild("BlockButton")
		if blockButton then
			if GuiService.SelectedCoreObject == blockButton then
				if UserInputService.GamepadEnabled then
					GuiService.SelectedCoreObject = shareGameButton
				else
					GuiService.SelectedCoreObject = nil
				end
			end
			blockButton:Destroy()
		end

		local inspectButton = buttons:FindFirstChild("Inspect")
		if inspectButton then
			if GuiService.SelectedCoreObject == inspectButton then
				GuiService.SelectedCoreObject = nil
			end
			inspectButton:Destroy()
		end
	end)

	local function removeInspectButtons()
		for _, frame in pairs(existingPlayerLabels) do
			local buttons = frame:FindFirstChild("RightSideButtons")

			if buttons then
				local inspectButton = buttons:FindFirstChild("Inspect")
				if inspectButton then
					if GuiService.SelectedCoreObject == inspectButton then
						GuiService.SelectedCoreObject = nil
					end
					inspectButton:Destroy()
				end
			end
		end
	end

	-- If the developer disables the Inspect Menu, remove the button from the escape menu.
	GuiService.InspectMenuEnabledChangedSignal:Connect(function(enabled)
		if not enabled then
			removeInspectButtons()
		end
	end)

	return this
end

----------- Public Facing API Additions --------------
PageInstance = Initialize()

return PageInstance
