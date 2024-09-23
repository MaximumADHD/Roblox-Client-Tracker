--!nonstrict
local AnalyticsService = game:GetService("RbxAnalyticsService")
local AppStorageService = game:GetService("AppStorageService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local TextService = game:GetService("TextService")
local TweenService = game:GetService("TweenService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local UIBlox = InGameMenuDependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images

local RobloxGuiModules = CoreGui.RobloxGui.Modules
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local IXPServiceWrapper = require(RobloxGuiModules.Common.IXPServiceWrapper)
local log = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)
local RobloxTranslator = require(RobloxGuiModules.RobloxTranslator)
local VoiceChatServiceManager = require(RobloxGuiModules.VoiceChat.VoiceChatServiceManager).default
local Constants = require(RobloxGuiModules.VoiceChat.Constants)
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts

local GetFFlagVoiceUserAgencyEnableIXP = require(RobloxGuiModules.Flags.GetFFlagVoiceUserAgencyEnableIXP)
local GetFStringVoiceUserAgencyIXPLayerName = require(RobloxGuiModules.Flags.GetFStringVoiceUserAgencyIXPLayerName)

local FIntVoiceUserAgencyAlertInitTimeOffset = game:DefineFastInt("VoiceUserAgencyAlertInitTimeOffset", 5)
local FIntVoiceUserAgencyAlertStartTimeOffset = game:DefineFastInt("VoiceUserAgencyAlertStartTimeOffset", 3)
local FIntVoiceUserAgencyAlertTimerDuration = game:DefineFastInt("VoiceUserAgencyAlertTimerDuration", 7)
local FFlagMuteNonFriendsEvent = require(RobloxGuiModules.Flags.FFlagMuteNonFriendsEvent)
local GetFFlagShowMuteToggles = require(RobloxGuiModules.Settings.Flags.GetFFlagShowMuteToggles)

local FFlagVoiceUserAgencyAddMuteDecisionAnalytics =
	game:DefineFastFlag("VoiceUserAgencyAddMuteDecisionAnalytics", false)
local FFlagVoiceUserAgencyAdjustDescriptionText = game:DefineFastFlag("VoiceUserAgencyAdjustDescriptionText", false)

local CHECKBOX_TEXT = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.VoiceUserAgency.Remember")
local CHECKBOX_TEXT_SIZE = 16
local CHECKBOX_TEXTLABEL_INITIAL_WIDTH = 350

local LOCAL_STORAGE_KEY_VOICE_USER_AGENCY = "VoiceUserAgencyPlaceIds"

local PLACE_ID_STR = tostring(game.PlaceId)
local PLAYER_USER_ID = Players.LocalPlayer.UserId

local function getAppStorageTable()
	local success, jsonString = pcall(function()
		return AppStorageService:GetItem(LOCAL_STORAGE_KEY_VOICE_USER_AGENCY)
	end)
	if success then
		local decodeSuccess, decodedTbl = pcall(function()
			return HttpService:JSONDecode(jsonString)
		end)
		if decodeSuccess then
			return decodedTbl
		end
	end
	return {}
end

local didResetHistory = false
local function resetHistory()
	if didResetHistory then
		return
	end
	local checkAppStorageSuccess, errorMsg = pcall(function()
		local placeIds = getAppStorageTable()
		for placeIdStr, _ in placeIds do
			if placeIdStr == PLACE_ID_STR then
				placeIds[placeIdStr] = nil
				AppStorageService:SetItem(LOCAL_STORAGE_KEY_VOICE_USER_AGENCY, HttpService:JSONEncode(placeIds))
				AppStorageService:Flush()
				didResetHistory = true
				break
			end
		end
	end)
	if not checkAppStorageSuccess then
		log:trace(errorMsg)
	end
end

local function bindResetHistory()
	-- remove from "remember for this experience" history
	VoiceChatServiceManager.muteAllChanged.Event:Connect(function(muteState)
		if FFlagMuteNonFriendsEvent then
			resetHistory()
		else
			if didResetHistory then
				return
			end
			local checkAppStorageSuccess, errorMsg = pcall(function()
				local placeIds = getAppStorageTable()
				for placeIdStr, _ in placeIds do
					if placeIdStr == PLACE_ID_STR then
						placeIds[placeIdStr] = nil
						AppStorageService:SetItem(LOCAL_STORAGE_KEY_VOICE_USER_AGENCY, HttpService:JSONEncode(placeIds))
						AppStorageService:Flush()
						didResetHistory = true
						break
					end
				end
			end)
			if not checkAppStorageSuccess then
				log:trace(errorMsg)
			end
		end
	end)
	if FFlagMuteNonFriendsEvent then
		VoiceChatServiceManager.mutedNonFriends.Event:Connect(function()
			resetHistory()
		end)
	end
end

local function removeUserAgencyPrompt(screenGui, shouldRememberSetting, isMuteAll)
	screenGui:Destroy()

	if shouldRememberSetting then
		local placeIds = getAppStorageTable()
		placeIds[PLACE_ID_STR] = isMuteAll
		AppStorageService:SetItem(LOCAL_STORAGE_KEY_VOICE_USER_AGENCY, HttpService:JSONEncode(placeIds))
		AppStorageService:Flush()
	end

	if FFlagVoiceUserAgencyAddMuteDecisionAnalytics then
		AnalyticsService:SendEventDeferred("client", "voiceChat", "SelectJoinWithVoice", {
			userId = PLAYER_USER_ID,
			voiceSessionId = VoiceChatServiceManager:getService():GetSessionId(),
			voiceExperienceId = VoiceChatServiceManager:getService():GetVoiceExperienceId(),
			isMuteAll = isMuteAll,
			isRememberSetting = shouldRememberSetting,
		})
	end

	if GetFFlagShowMuteToggles() then
		VoiceChatServiceManager:FireUserAgencySelectedEvent(isMuteAll)
	end

	bindResetHistory()
end

local function showUserAgencyPrompt()
	local isMuteAll = false
	local shouldRememberSetting = false

	if GetFFlagVoiceUserAgencyEnableIXP() then
		-- get ixp layer data
		local layerFetchSuccess, layerData = pcall(function()
			return IXPServiceWrapper:GetLayerData(GetFStringVoiceUserAgencyIXPLayerName())
		end)

		-- bail if we aren't able to communicate with IXP service
		if not layerFetchSuccess then
			return
		end

		-- check if user is enrolled in experiment or not
		if not layerData then
			return
		end
		if not layerData.VoiceUserAgencyEnabled then
			return
		end
	end

	-- check "remember for this experience" history
	local checkAppStorageSuccess, isMutedAllHistory = pcall(function()
		local placeIds = getAppStorageTable()
		for placeIdStr, isMuted in pairs(placeIds) do
			if placeIdStr == PLACE_ID_STR and isMuted ~= nil then
				return isMuted
			end
		end
	end)
	if not checkAppStorageSuccess then
		log:trace(isMutedAllHistory)
		return
	end
	if isMutedAllHistory ~= nil then
		VoiceChatServiceManager:MuteAll(isMutedAllHistory, Constants.VOICE_CONTEXT_TYPE.USER_AGENCY)
		if GetFFlagShowMuteToggles() then
			VoiceChatServiceManager:FireUserAgencySelectedEvent(isMutedAllHistory)
		end
		bindResetHistory()
		AnalyticsService:SendEventDeferred("client", "voiceChat", "JoinWithVoice", {
			userId = PLAYER_USER_ID,
			voiceSessionId = VoiceChatServiceManager:getService():GetSessionId(),
			voiceExperienceId = VoiceChatServiceManager:getService():GetVoiceExperienceId(),
			isMutedAll = isMutedAllHistory,
		})
		return
	end

	-- create and render prompt
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "VoiceUserAgency"
	screenGui.ResetOnSpawn = false
	screenGui.DisplayOrder = -1
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screenGui.Parent = CoreGui

	local muteAllButton = Create("TextButton")({
		Name = "MuteAllButton",
		BorderSizePixel = 0,
		Size = UDim2.new(0.5, -6, 0, 36),
		Font = AppFonts.default:getDefault(),
		Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.VoiceUserAgency.JoinMuted"),
		TextSize = 16,
		BackgroundColor3 = Color3.fromRGB(57, 59, 61),
		TextColor3 = Color3.fromRGB(178, 178, 178),
		LayoutOrder = 1,

		Create("UICorner")({
			CornerRadius = UDim.new(0, 8),
		}),

		Create("UIStroke")({
			Thickness = 1,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Color = Color3.fromRGB(178, 178, 178),
		}),
	})
	muteAllButton.Activated:Connect(function()
		isMuteAll = true
		VoiceChatServiceManager:MuteAll(isMuteAll, Constants.VOICE_CONTEXT_TYPE.USER_AGENCY)
		removeUserAgencyPrompt(screenGui, shouldRememberSetting, isMuteAll)
	end)

	local unmuteAllButton = Create("TextButton")({
		Name = "UnmuteAllButton",
		BorderSizePixel = 0,
		Size = UDim2.new(0.5, -6, 0, 36),
		Font = AppFonts.default:getDefault(),
		Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.VoiceUserAgency.JoinUnmuted"),
		TextSize = 16,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		TextColor3 = Color3.fromRGB(57, 59, 61),
		LayoutOrder = 2,

		Create("UICorner")({
			CornerRadius = UDim.new(0, 8),
		}),
	})
	unmuteAllButton.Activated:Connect(function()
		isMuteAll = false
		VoiceChatServiceManager:MuteAll(isMuteAll, Constants.VOICE_CONTEXT_TYPE.USER_AGENCY)
		removeUserAgencyPrompt(screenGui, shouldRememberSetting, isMuteAll)
	end)

	local timerBar = Create("Frame")({
		Name = "TimerBar",
		BorderSizePixel = 0,
		Size = UDim2.new(0, 0, 1, 0),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 0,
	})
	local timerBarTweenGoal = {}
	timerBarTweenGoal.Size = UDim2.fromScale(1, 1)
	local timerBarTweenInfo = TweenInfo.new(FIntVoiceUserAgencyAlertTimerDuration, Enum.EasingStyle.Sine)
	local timerBarTween = TweenService:Create(timerBar, timerBarTweenInfo, timerBarTweenGoal)
	timerBarTween.Completed:Connect(function(playbackState)
		if playbackState == Enum.PlaybackState.Completed then
			removeUserAgencyPrompt(screenGui, shouldRememberSetting, isMuteAll)
		end
	end)

	local checkboxButtonOverlay = Create("ImageLabel")({
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = Images["icons/status/success_small"].Image,
		ImageRectOffset = Images["icons/status/success_small"].ImageRectOffset,
		ImageRectSize = Images["icons/status/success_small"].ImageRectSize,
	})
	local checkboxButton = Create("ImageButton")({
		Size = UDim2.new(0, 14, 0, 14),
		BackgroundTransparency = 1,
		Image = Images["squircles/hollow"].Image,
		ImageRectOffset = Images["squircles/hollow"].ImageRectOffset,
		ImageRectSize = Images["squircles/hollow"].ImageRectSize,
	})
	checkboxButtonOverlay.Visible = false
	checkboxButtonOverlay.Parent = checkboxButton
	checkboxButton.Activated:Connect(function()
		checkboxButtonOverlay.Visible = not checkboxButtonOverlay.Visible
		shouldRememberSetting = checkboxButtonOverlay.Visible
		timerBarTween:Pause()

		AnalyticsService:SendEventDeferred("client", "voiceChat", "RememberJoinWithVoice", {
			userId = PLAYER_USER_ID,
			voiceSessionId = VoiceChatServiceManager:getService():GetSessionId(),
			voiceExperienceId = VoiceChatServiceManager:getService():GetVoiceExperienceId(),
			shouldRememberStatus = shouldRememberSetting,
		})
	end)

	local checkboxTextLabel = Create("TextLabel")({
		Name = "CheckboxTextLabel",
		Font = AppFonts.default:getDefault(),
		Text = CHECKBOX_TEXT,
		TextColor3 = Color3.fromRGB(190, 190, 190),
		TextSize = CHECKBOX_TEXT_SIZE,
		TextWrapped = true,
		Size = UDim2.new(0, CHECKBOX_TEXTLABEL_INITIAL_WIDTH, 0, 24),
		BackgroundTransparency = 1,
		TextTransparency = 0,
		LayoutOrder = 2,
	})
	local checkboxTextSize = TextService:GetTextSize(
		CHECKBOX_TEXT,
		CHECKBOX_TEXT_SIZE,
		AppFonts.default:getDefault(),
		Vector2.new(CHECKBOX_TEXTLABEL_INITIAL_WIDTH, 24)
	)
	checkboxTextLabel.Size = UDim2.new(0, checkboxTextSize.X + 10, 0, 24)

	local dialog = Create("Frame")({
		Name = "VoiceUserAgencyFrame",
		AnchorPoint = Vector2.new(0.5, 0),
		Size = UDim2.new(0.9, 0, 1, 0),
		Position = UDim2.new(0.5, 0, 0, 4),
		BackgroundColor3 = Color3.fromRGB(57, 59, 61),
		BorderSizePixel = 0,

		Create("UICorner")({
			CornerRadius = UDim.new(0, 8),
		}),

		Create("UISizeConstraint")({
			MaxSize = Vector2.new(400, 216),
		}),

		Create("UIPadding")({
			PaddingTop = UDim.new(0, 24),
			PaddingLeft = UDim.new(0, 24),
			PaddingRight = UDim.new(0, 24),
			PaddingBottom = UDim.new(0, 24),
		}),

		Create("UIListLayout")({
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Create("TextLabel")({
			Name = "Title",
			Font = AppFonts.default:getBold(),
			Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.VoiceUserAgency.JoinUnmuted.Title"),
			TextSize = 20,
			TextWrapped = true,
			Size = UDim2.new(1, 0, 0, 22),
			BackgroundTransparency = 1,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextTransparency = 0,
			LayoutOrder = 1,
		}),

		Create("TextLabel")({
			Name = "Lower",
			Font = AppFonts.default:getDefault(),
			Text = FFlagVoiceUserAgencyAdjustDescriptionText and RobloxTranslator:FormatByKey(
				"Feature.SettingsHub.Prompt.VoiceUserAgency.JoinUnmuted.Description"
			) or RobloxTranslator:FormatByKey("Feature.SettingsHub.VoiceUserAgency.JoinUnmuted.Description"),
			TextColor3 = Color3.fromRGB(190, 190, 190),
			TextSize = 16,
			TextWrapped = true,
			Size = UDim2.new(1, 0, 0, 60),
			BackgroundTransparency = 1,
			TextTransparency = 0,
			LayoutOrder = 2,
		}),

		Create("Frame")({
			Name = "TimerFrame",
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			Size = UDim2.new(1, 48, 0, 3),
			BackgroundTransparency = 0,
			LayoutOrder = 3,

			timerBar,
		}),

		Create("Frame")({
			Name = "ButtonsContainer",
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 62),
			BackgroundTransparency = 1,
			LayoutOrder = 4,

			Create("UIListLayout")({
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 12),
			}),

			unmuteAllButton,
			muteAllButton,
		}),

		Create("Frame")({
			Name = "CheckboxContainer",
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 28),
			BackgroundTransparency = 1,
			LayoutOrder = 5,

			Create("UIListLayout")({
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 8),
			}),

			checkboxButton,
			checkboxTextLabel,
		}),
	})

	dialog.Parent = screenGui

	task.delay(FIntVoiceUserAgencyAlertStartTimeOffset, function()
		-- send impressions analytics
		AnalyticsService:SendEventDeferred("client", "voiceChat", "ShowJoinWithVoice", {
			userId = PLAYER_USER_ID,
			voiceSessionId = VoiceChatServiceManager:getService():GetSessionId(),
			voiceExperienceId = VoiceChatServiceManager:getService():GetVoiceExperienceId(),
		})

		-- start the timer bar
		timerBarTween:Play()
	end)
end

task.delay(FIntVoiceUserAgencyAlertInitTimeOffset, function()
	VoiceChatServiceManager:asyncInit()
		:andThen(function()
			showUserAgencyPrompt()
		end)
		:catch(function()
			log:trace("VoiceChatServiceManager did not initialize for VoiceUserAgency")
		end)
end)
