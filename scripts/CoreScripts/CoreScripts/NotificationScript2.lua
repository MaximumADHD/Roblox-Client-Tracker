--!nonstrict

--[[
		Filename: NotificationScript2.lua
		Version 1.1
		Written by: jmargh
		Description: Handles notification gui for the following in game ROBLOX events
			Badge Awarded
			Player Points Awarded
			Friend Request Recieved/New Friend
			Graphics Quality Changed
			Teleports
			CreatePlaceInPlayerInventoryAsync
--]]

local BadgeService = game:GetService("BadgeService")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local PointsService = game:GetService("PointsService")
local MarketplaceService = game:GetService("MarketplaceService")
local TextService = game:GetService("TextService")
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")
local CoreGui = game:GetService("CoreGui")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local VRService = game:GetService("VRService")
local GroupService = game:GetService("GroupService")
local TeleportService = game:GetService("TeleportService")
local LocalizationService = game:GetService("LocalizationService")
local CorePackages = game:GetService("CorePackages")
local UniversalAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local Logging = require(CorePackages.Workspace.Packages.AppCommonLib).Logging
local RobloxGui = CoreGui.RobloxGui
local Settings = UserSettings()
local GameSettings = Settings.GameSettings
local FFlagCoreScriptShowTeleportPrompt = require(RobloxGui.Modules.Flags.FFlagCoreScriptShowTeleportPrompt)
local FriendingUtility = require(RobloxGui.Modules.FriendingUtility)

local FFlagClientToastNotificationsEnabled = game:GetEngineFeature("ClientToastNotificationsEnabled")
local GetFFlagClientToastNotificationsRedirect =
	require(RobloxGui.Modules.Flags.GetFFlagClientToastNotificationsRedirect)
local GetFFlagFriendshipNotifsUseSendr = require(RobloxGui.Modules.Flags.GetFFlagFriendshipNotifsUseSendr)
local FFlagNotificationsRenameFriendRequestToConnection =
	game:DefineFastFlag("NotificationsRenameFriendRequestToConnection", false)

local shouldSaveScreenshotToAlbum = require(RobloxGui.Modules.shouldSaveScreenshotToAlbum)
local FFlagFixOnBadgeAwardedError = game:DefineFastFlag("FixOnBadgeAwardedError", false)
local FFlagFixGraphicsQualityLevelNotif = game:DefineFastFlag("FixGraphicsQualityLevelNotif", false)

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)


local function LocalizedGetString(key, rtv)
	pcall(function()
		rtv = RobloxTranslator:FormatByKey(key)
	end)
	return rtv
end

local LocalPlayer
while not Players.LocalPlayer do
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
end
LocalPlayer = Players.LocalPlayer
local RbxGui = script.Parent
local NotificationQueue = {}
local OverflowQueue = {}
local FriendRequestBlacklist = {}
local BadgeBlacklist = {}
local CurrentGraphicsQualityLevel = GameSettings.SavedQualityLevel.Value
local BindableEvent_SendNotificationInfo = Instance.new("BindableEvent")
BindableEvent_SendNotificationInfo.Name = "SendNotificationInfo"
BindableEvent_SendNotificationInfo.Parent = RobloxGui
local isPaused = false
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()

local pointsNotificationsActive = true
local badgesNotificationsActive = true

local SocialUtil = require(RobloxGui.Modules.SocialUtil)
local GameTranslator = require(RobloxGui.Modules.GameTranslator)
local CachedPolicyService = require(CorePackages.Workspace.Packages.CachedPolicyService)

local BG_TRANSPARENCY_DEFAULT = 0.6
local bgTransparency = BG_TRANSPARENCY_DEFAULT * GameSettings.PreferredTransparency
local MAX_NOTIFICATIONS = 3
local IMAGE_SIZE = isTenFootInterface and 72 or 48

local NOTIFICATION_Y_OFFSET = isTenFootInterface and 145 or 64
local NOTIFICATION_FRAME_WIDTH = isTenFootInterface and 450 or 200
local NOTIFICATION_PADDING = IMAGE_SIZE / 6.0

local NOTIFICATION_TITLE_HEIGHT = isTenFootInterface and 42 or 18
local NOTIFICATION_TITLE_HEIGHT_MAX = isTenFootInterface and 84 or 36
local NOTIFICATION_TITLE_Y_OFFSET = -NOTIFICATION_TITLE_HEIGHT
local NOTIFICATION_TITLE_FONT_SIZE = isTenFootInterface and Enum.FontSize.Size42 or Enum.FontSize.Size18

local NOTIFICATION_TEXT_HEIGHT = isTenFootInterface and 72 or 28
local NOTIFICATION_TEXT_HEIGHT_MAX = isTenFootInterface and 144 or 56
local NOTIFICATION_TEXT_Y_OFFSET = 1
local NOTIFICATION_TEXT_FONT_SIZE = isTenFootInterface and Enum.FontSize.Size36 or Enum.FontSize.Size14

local NOTIFICATION_BUTTON_HEIGHT = NOTIFICATION_Y_OFFSET / 2
local NOTIFICATION_BUTTON_PADDING = NOTIFICATION_PADDING / 2
local NOTIFICATION_BUTTON_FONT_SIZE = isTenFootInterface and Enum.FontSize.Size42 or Enum.FontSize.Size18
local NOTIFICATION_BUTTON_MAX_TEXT_SIZE = isTenFootInterface and 42 or 18
local NOTIFICATION_BUTTON_MIN_TEXT_SIZE = isTenFootInterface and 30 or 14

local EASE_DIR = Enum.EasingDirection.InOut
local EASE_STYLE = Enum.EasingStyle.Sine
local TWEEN_TIME = 0.35
local DEFAULT_NOTIFICATION_DURATION = 5
local MAX_GET_FRIEND_IMAGE_YIELD_TIME = 5
local FRIEND_REQUEST_NOTIFICATION_THROTTLE = 5

local FRIEND_REQUEST_NOTIFICATION_LOCALIZATION_KEYS = {
	ACCEPTED = "InGame.NotificationScript2.Message.ConnectionRequestEvent.Accepted",
	SENT = "InGame.NotificationScript2.Message.ConnectionRequestEvent.Sent",
}

-- The new, supported way to translate strings in the client.
-- This function should be used instead of coreScriptTableTranslator:FormatByKey.
-- Errors will be caught and an empty string will be returned if the translation fails.
local function translateString(key: string, arguments: { [string]: any }?): string
	local localeId = LocalizationService.RobloxLocaleId
	local localization = Localization.new(localeId)
	localization:SetLocale(localeId)

	local success, result = pcall(function()
		return localization:Format(key, arguments)
	end)
	if success then
		return result
	end
	Logging.warn("Failed to translate string with key: " .. key)
	return ""
end

local friendRequestNotificationFIntSuccess, friendRequestNotificationFIntValue = pcall(function()
	return tonumber(settings():GetFVariable("FriendRequestNotificationThrottle"))
end)
if friendRequestNotificationFIntSuccess and friendRequestNotificationFIntValue ~= nil then
	FRIEND_REQUEST_NOTIFICATION_THROTTLE = friendRequestNotificationFIntValue
end

StarterGui:RegisterSetCore("PointsNotificationsActive", function(value)
	if type(value) == "boolean" then
		pointsNotificationsActive = value
	end
end)
StarterGui:RegisterSetCore("BadgesNotificationsActive", function(value)
	if type(value) == "boolean" then
		badgesNotificationsActive = value
	end
end)

StarterGui:RegisterGetCore("PointsNotificationsActive", function()
	return pointsNotificationsActive
end)
StarterGui:RegisterGetCore("BadgesNotificationsActive", function()
	return badgesNotificationsActive
end)

local PLAYER_POINTS_IMG = "https://www.roblox.com/asset?id=206410433"
local BADGE_IMG = "https://www.roblox.com/asset?id=206410289"

local function createFrame(name, size, position, bgt)
	local frame = Instance.new("Frame")
	frame.Name = name
	frame.Size = size
	frame.Position = position
	frame.BackgroundTransparency = bgt

	return frame
end

local function createTextButton(name, position)
	local button = Instance.new("TextButton")
	button.Name = name
	button.Size = UDim2.new(0.5, -1, 0, NOTIFICATION_BUTTON_HEIGHT)
	button.Position = position
	button.BackgroundTransparency = bgTransparency
	button.BackgroundColor3 = Color3.new(0, 0, 0)
	button.BorderSizePixel = 0
	button.Font = Enum.Font.SourceSansBold
	button.FontSize = NOTIFICATION_BUTTON_FONT_SIZE
	button.TextColor3 = Color3.new(1, 1, 1)
	button.TextTruncate = Enum.TextTruncate.AtEnd
	button.TextScaled = true

	local buttonPadding = Instance.new("UIPadding")
	buttonPadding.PaddingTop = UDim.new(0, NOTIFICATION_BUTTON_PADDING / 2)
	buttonPadding.PaddingBottom = UDim.new(0, NOTIFICATION_BUTTON_PADDING / 2)
	buttonPadding.PaddingLeft = UDim.new(0, NOTIFICATION_BUTTON_PADDING)
	buttonPadding.PaddingRight = UDim.new(0, NOTIFICATION_BUTTON_PADDING)
	buttonPadding.Parent = button

	local textSizeConstraint = Instance.new("UITextSizeConstraint")
	textSizeConstraint.MaxTextSize = NOTIFICATION_BUTTON_MAX_TEXT_SIZE
	textSizeConstraint.MinTextSize = NOTIFICATION_BUTTON_MIN_TEXT_SIZE
	textSizeConstraint.Parent = button

	return button
end

local NotificationFrame = createFrame(
	"NotificationFrame",
	UDim2.new(0, NOTIFICATION_FRAME_WIDTH, 0.42, 0),
	UDim2.new(1, -NOTIFICATION_FRAME_WIDTH - 4, 0.50, 0),
	1.0
)
if FFlagCoreScriptShowTeleportPrompt then
	NotificationFrame.ZIndex = 3
else
	NotificationFrame.ZIndex = 2
end
NotificationFrame.Parent = RbxGui

local function createDefaultNotification()
	local Frame =
		createFrame("Notification", UDim2.new(1, 0, 0, NOTIFICATION_Y_OFFSET), UDim2.new(0, 0, 0, 0), bgTransparency)
	Frame.BackgroundColor3 = Color3.new(0, 0, 0)
	Frame.BorderSizePixel = 0
	return Frame
end
local DefaultNotification = createDefaultNotification()

local NotificationTitle = Instance.new("TextLabel")
NotificationTitle.Name = "NotificationTitle"
NotificationTitle.Size = UDim2.new(1, -NOTIFICATION_PADDING * 2, 0, NOTIFICATION_TITLE_HEIGHT)
NotificationTitle.Position = UDim2.new(0, NOTIFICATION_PADDING, 0.5, NOTIFICATION_TITLE_Y_OFFSET)
NotificationTitle.BackgroundTransparency = 1
NotificationTitle.Font = Enum.Font.SourceSansBold
NotificationTitle.FontSize = NOTIFICATION_TITLE_FONT_SIZE
NotificationTitle.TextColor3 = Color3.new(0.97, 0.97, 0.97)

local NotificationText = Instance.new("TextLabel")
NotificationText.Name = "NotificationText"
NotificationText.Size = UDim2.new(1, -NOTIFICATION_PADDING * 2, 0, NOTIFICATION_TEXT_HEIGHT)
NotificationText.Position = UDim2.new(0, NOTIFICATION_PADDING, 0.5, NOTIFICATION_TEXT_Y_OFFSET)
NotificationText.BackgroundTransparency = 1
NotificationText.Font = Enum.Font.SourceSans
NotificationText.FontSize = NOTIFICATION_TEXT_FONT_SIZE
NotificationText.TextColor3 = Color3.new(0.92, 0.92, 0.92)
NotificationText.TextWrap = true
NotificationText.TextYAlignment = Enum.TextYAlignment.Top

local NotificationImage = Instance.new("ImageLabel")
NotificationImage.Name = "NotificationImage"
NotificationImage.Size = UDim2.new(0, IMAGE_SIZE, 0, IMAGE_SIZE)
NotificationImage.Position = UDim2.new(0, NOTIFICATION_PADDING, 0, 0.5 * (NOTIFICATION_Y_OFFSET - IMAGE_SIZE))
NotificationImage.BackgroundTransparency = 1
NotificationImage.Image = ""

-- Would really like to get rid of this but some events still require this
local PopupFrame = createFrame("PopupFrame", UDim2.new(0, 360, 0, 160), UDim2.new(0.5, -180, 0.5, -50), 0)
PopupFrame.Style = Enum.FrameStyle.DropShadow
PopupFrame.ZIndex = 4
PopupFrame.Visible = false
PopupFrame.Parent = RbxGui

local PopupAcceptButton = Instance.new("TextButton")
PopupAcceptButton.Name = "PopupAcceptButton"
PopupAcceptButton.Size = UDim2.new(0, 100, 0, 50)
PopupAcceptButton.Position = UDim2.new(0.5, -102, 1, -58)
PopupAcceptButton.Style = Enum.ButtonStyle.RobloxRoundButton
PopupAcceptButton.Font = Enum.Font.SourceSansBold
PopupAcceptButton.FontSize = Enum.FontSize.Size24
PopupAcceptButton.TextColor3 = Color3.new(1, 1, 1)
PopupAcceptButton.Text = "Accept"
PopupAcceptButton.ZIndex = 5
PopupAcceptButton.Parent = PopupFrame

local PopupDeclineButton = PopupAcceptButton:Clone()
PopupDeclineButton.Name = "PopupDeclineButton"
PopupDeclineButton.Position = UDim2.new(0.5, 2, 1, -58)
PopupDeclineButton.Text = "Decline"
PopupDeclineButton.Parent = PopupFrame

local PopupOKButton = PopupAcceptButton:Clone()
PopupOKButton.Name = "PopupOKButton"
PopupOKButton.Position = UDim2.new(0.5, -50, 1, -58)
PopupOKButton.Text = "OK"
PopupOKButton.Visible = false
PopupOKButton.Parent = PopupFrame

local PopupText = Instance.new("TextLabel")
PopupText.Name = "PopupText"
PopupText.Size = UDim2.new(1, -16, 0.8, 0)
PopupText.Position = UDim2.new(0, 8, 0, 8)
PopupText.BackgroundTransparency = 1
PopupText.Font = Enum.Font.SourceSansBold
PopupText.FontSize = Enum.FontSize.Size36
PopupText.TextColor3 = Color3.new(0.97, 0.97, 0.97)
PopupText.TextWrap = true
PopupText.ZIndex = 5
PopupText.TextYAlignment = Enum.TextYAlignment.Top
PopupText.Text = "This is a popup"
PopupText.Parent = PopupFrame

local insertNotification
local removeNotification

local function getFriendImage(playerId)
	-- SocialUtil.GetPlayerImage can yield for up to  MAX_GET_FRIEND_IMAGE_YIELD_TIME seconds while waiting for thumbnail to be final.
	-- It will just return an invalid thumbnail if a valid one can not be generated in time.
	return SocialUtil.GetPlayerImage(
		playerId,
		Enum.ThumbnailSize.Size48x48,
		Enum.ThumbnailType.HeadShot, --[[timeOut = ]]
		MAX_GET_FRIEND_IMAGE_YIELD_TIME
	)
end

local function createNotification(title, text, image)
	local notificationFrame = DefaultNotification:Clone()
	notificationFrame.Position = UDim2.new(1, 4, 1, -NOTIFICATION_Y_OFFSET - 4)

	local notificationTitle = NotificationTitle:Clone()
	notificationTitle.Text = title
	notificationTitle.Parent = notificationFrame

	local notificationText = NotificationText:Clone()
	notificationText.Text = text
	notificationText.Parent = notificationFrame

	local isTitleMultipleLines = false
	local function updateNotificationForMultiLineTitle()
		isTitleMultipleLines = true
		notificationTitle.TextWrapped = true
		notificationTitle.TextTruncate = Enum.TextTruncate.AtEnd

		local textSize = TextService:GetTextSize(
			notificationTitle.Text,
			notificationTitle.TextSize,
			notificationTitle.Font,
			Vector2.new(notificationTitle.AbsoluteSize.X, 1000)
		)
		local addHeight = math.min(
			textSize.Y - notificationTitle.Size.Y.Offset,
			NOTIFICATION_TITLE_HEIGHT_MAX - notificationTitle.Size.Y.Offset
		)

		notificationTitle.Size = notificationTitle.Size + UDim2.new(0, 0, 0, addHeight)
		notificationTitle.Position = notificationTitle.Position - UDim2.new(0, 0, 0, addHeight / 2)
		notificationText.Position = notificationText.Position + UDim2.new(0, 0, 0, addHeight / 2)
		notificationFrame.Size = notificationFrame.Size + UDim2.new(0, 0, 0, addHeight)
	end

	-- Parent to NotificationFrame for sizing
	notificationFrame.Parent = NotificationFrame

	if image == nil or image == "" then
		if not notificationTitle.TextFits then
			isTitleMultipleLines = true
			updateNotificationForMultiLineTitle()
		end

		if not notificationText.TextFits then
			local textSize = TextService:GetTextSize(
				notificationText.Text,
				notificationText.TextSize,
				notificationText.Font,
				Vector2.new(notificationText.AbsoluteSize.X, 1000)
			)
			local addHeight = math.min(
				textSize.Y - notificationText.Size.Y.Offset,
				NOTIFICATION_TEXT_HEIGHT_MAX - notificationText.Size.Y.Offset
			)

			notificationText.Size = notificationText.Size + UDim2.new(0, 0, 0, addHeight)
			notificationTitle.Position = notificationTitle.Position - UDim2.new(0, 0, 0, addHeight / 2)
			notificationText.Position = notificationText.Position - UDim2.new(0, 0, 0, addHeight / 2)
			notificationFrame.Size = notificationFrame.Size + UDim2.new(0, 0, 0, addHeight)
		end
	else
		local leftPadding = IMAGE_SIZE + NOTIFICATION_PADDING * 2
		local rightPadding = NOTIFICATION_PADDING

		local notificationImage = NotificationImage:Clone()
		notificationImage.Image = image
		notificationImage.Parent = notificationFrame

		notificationTitle.Size = UDim2.new(1, -leftPadding - rightPadding, 0, notificationTitle.Size.Y.Offset)
		notificationTitle.Position =
			UDim2.new(0, leftPadding, notificationTitle.Position.Y.Scale, notificationTitle.Position.Y.Offset)
		notificationTitle.TextXAlignment = Enum.TextXAlignment.Left

		-- Indent
		notificationText.Size = UDim2.new(1, -leftPadding - rightPadding, 0, notificationText.Size.Y.Offset)
		notificationText.Position =
			UDim2.new(0, leftPadding, notificationText.Position.Y.Scale, notificationText.Position.Y.Offset)
		notificationText.TextXAlignment = Enum.TextXAlignment.Left

		if not notificationTitle.TextFits then
			updateNotificationForMultiLineTitle()

			-- Allow one full line of notificationText next to image
			local subtractHeight = notificationText.TextSize
			notificationText.Size = notificationText.Size - UDim2.new(0, 0, 0, subtractHeight)

			-- Slight vertical offset for consistent placement with 2 line notificationText
			local verticalOffset = 4
			notificationTitle.Position = notificationTitle.Position
				+ UDim2.new(0, 0, 0, subtractHeight / 2 - verticalOffset / 2)
			notificationText.Position = notificationText.Position
				+ UDim2.new(0, 0, 0, subtractHeight / 2 - verticalOffset / 2)
			notificationFrame.Size = notificationFrame.Size - UDim2.new(0, 0, 0, subtractHeight + verticalOffset)
		end

		if not notificationText.TextFits then
			local extraText = nil
			local text = notificationText.Text
			for i = string.len(text) - 1, 2, -1 do
				if string.sub(text, i, i) == " " then
					notificationText.Text = string.sub(text, 1, i - 1)
					if notificationText.TextFits then
						extraText = string.sub(text, i + 1)
						break
					end
				end
			end

			if extraText then
				local notificationText2 = NotificationText:Clone()
				notificationText2.TextXAlignment = Enum.TextXAlignment.Left
				notificationText2.Text = extraText
				notificationText2.Name = "ExtraText"
				notificationText2.TextTruncate = Enum.TextTruncate.AtEnd
				notificationText2.Parent = notificationFrame

				local textSize = TextService:GetTextSize(
					extraText,
					notificationText2.TextSize,
					notificationText2.Font,
					Vector2.new(notificationText2.AbsoluteSize.X, 1000)
				)
				local addHeight = math.min(textSize.Y, NOTIFICATION_TEXT_HEIGHT_MAX - notificationText.Size.Y.Offset)

				notificationText2.Size =
					UDim2.new(notificationText2.Size.X.Scale, notificationText2.Size.X.Offset, 0, addHeight)
				notificationTitle.Position = notificationTitle.Position - UDim2.new(0, 0, 0, addHeight / 2)
				notificationText.Position = notificationText.Position - UDim2.new(0, 0, 0, addHeight / 2)
				notificationFrame.Size = notificationFrame.Size + UDim2.new(0, 0, 0, addHeight)

				notificationText2.AnchorPoint = Vector2.new(0.5, 0)
				notificationText2.Position = UDim2.new(
					0.5,
					0,
					notificationText.Position.Y.Scale,
					notificationText.Position.Y.Offset + notificationText.AbsoluteSize.Y
				)
			else
				notificationText.Text = text
			end
		end
	end

	if isTitleMultipleLines and notificationText.TextFits then
		-- Ensure that notificationText's height is the minimum height required
		local textSize = TextService:GetTextSize(
			notificationText.Text,
			notificationText.TextSize,
			notificationText.Font,
			Vector2.new(notificationText.AbsoluteSize.X, 1000)
		)
		if textSize.Y < notificationText.Size.Y.Offset then
			local subtractHeight = notificationText.Size.Y.Offset - textSize.Y
			notificationText.Size = notificationText.Size - UDim2.new(0, 0, 0, subtractHeight)
			notificationTitle.Position = notificationTitle.Position + UDim2.new(0, 0, 0, subtractHeight / 2)
			notificationText.Position = notificationText.Position + UDim2.new(0, 0, 0, subtractHeight / 2)
			notificationFrame.Size = notificationFrame.Size - UDim2.new(0, 0, 0, subtractHeight)
		end
	end

	notificationFrame.Parent = nil;

	-- AddSelectionParent is deprecated
	(GuiService :: any):AddSelectionParent(HttpService:GenerateGUID(false), notificationFrame)

	return notificationFrame
end

local function findNotification(notification)
	local index = nil
	for i = 1, #NotificationQueue do
		if NotificationQueue[i] == notification then
			return i
		end
	end
end

local function updateNotifications()
	local pos = 1
	local yOffset = 0
	for i = #NotificationQueue, 1, -1 do
		local currentNotification = NotificationQueue[i]
		if currentNotification then
			local frame = currentNotification.Frame
			if frame and frame.Parent then
				local thisOffset = currentNotification.IsFriend and (NOTIFICATION_Y_OFFSET + 2) * 1.5
					or NOTIFICATION_Y_OFFSET
				thisOffset = currentNotification.IsFriend and frame.Size.Y.Offset + ((NOTIFICATION_Y_OFFSET + 2) * 0.5)
					or frame.Size.Y.Offset
				yOffset = yOffset + thisOffset
				frame:TweenPosition(
					UDim2.new(0, 0, 1, -yOffset - (pos * 4)),
					EASE_DIR,
					EASE_STYLE,
					TWEEN_TIME,
					true,
					function()
						if currentNotification.TweenOutCallback then
							currentNotification.TweenOutCallback()
						end
					end
				)
				pos = pos + 1
			end
		end
	end
end

local lastTimeInserted = 0
insertNotification = function(notification)
	spawn(function()
		while isPaused do
			wait()
		end
		notification.IsActive = true
		local size = #NotificationQueue
		if size == MAX_NOTIFICATIONS then
			NotificationQueue[1].Duration = 0
			OverflowQueue[#OverflowQueue + 1] = notification
			return
		end

		NotificationQueue[size + 1] = notification
		notification.Frame.Parent = NotificationFrame

		spawn(function()
			wait(TWEEN_TIME * 2)
			-- Wait for it to tween in, and then wait that same amount of time before calculating lifetime.
			-- This is to have it not zoom out while half tweened in when the OverflowQueue forcibly
			-- makes room for itself.

			while notification.Duration > 0 do
				wait(0.2)
				notification.Duration = notification.Duration - 0.2
			end

			removeNotification(notification)
		end)

		while tick() - lastTimeInserted < TWEEN_TIME do
			wait()
		end
		lastTimeInserted = tick()

		updateNotifications()
	end)
end

removeNotification = function(notification)
	if not notification then
		return
	end
	--
	local index = findNotification(notification)
	table.remove(NotificationQueue, index)
	local frame = notification.Frame
	if frame and frame.Parent then
		notification.IsActive = false
		spawn(function()
			while isPaused do
				wait()
			end

			-- Tween out now, or set up to tween out immediately after current tween is finished, but don't interrupt.
			local function doTweenOut()
				if frame:IsDescendantOf(game) then
					return frame:TweenPosition(
						UDim2.new(1, 0, 1, frame.Position.Y.Offset),
						EASE_DIR,
						EASE_STYLE,
						TWEEN_TIME,
						false,
						function()
							frame:Destroy()
							notification = nil
						end
					)
				else
					return false
				end
			end

			if not doTweenOut() then
				notification.TweenOutCallback = doTweenOut
			end
		end)
	end
	if #OverflowQueue > 0 then
		local nextNotification = OverflowQueue[1]
		table.remove(OverflowQueue, 1)

		insertNotification(nextNotification)

		if #OverflowQueue > 0 and NotificationQueue[1] then
			NotificationQueue[1].Duration = 0
		end
	else
		updateNotifications()
	end
end

local function sendNotificationInfo(notificationInfo)
	notificationInfo.Duration = notificationInfo.Duration or DEFAULT_NOTIFICATION_DURATION
	BindableEvent_SendNotificationInfo:Fire(notificationInfo)
end

local function createNotificationButtonDetails(buttonText: string, buttonType: Enum.NotificationButtonType, callback)
	return {
		Text = buttonText,
		ButtonType = buttonType,
		OnActivated = function()
			if callback and type(callback) ~= "function" then -- callback should be a bindable
				pcall(function()
					callback:Invoke(buttonText)
				end)
			elseif type(callback) == "function" then
				callback(buttonText)
			end
		end,
	}
end

local function onSendNotificationInfo(notificationInfo)
	if VRService.VREnabled then
		--If VR is enabled, notifications will be handled by Modules.VR.NotificationHub
		return
	end
	local callback = notificationInfo.Callback

	local button1Text = notificationInfo.Button1Text
	local button2Text = notificationInfo.Button2Text

	if FFlagClientToastNotificationsEnabled and GetFFlagClientToastNotificationsRedirect() then
		local buttons = {}

		if button1Text and button1Text ~= "" then
			table.insert(
				buttons,
				createNotificationButtonDetails(button1Text, Enum.NotificationButtonType.Primary, callback)
			)
		end

		if button2Text and button2Text ~= "" then
			table.insert(
				buttons,
				createNotificationButtonDetails(button2Text, Enum.NotificationButtonType.Secondary, callback)
			)
		end

		local newNotificationInfo = {
			Title = if notificationInfo.Autolocalize
				then GameTranslator:TranslateGameText(CoreGui, notificationInfo.Title)
				else notificationInfo.Title,
			Text = if notificationInfo.AutoLocalize
				then GameTranslator:TranslateGameText(CoreGui, notificationInfo.Text)
				else notificationInfo.Text,
			Icon = notificationInfo.Image,
			OnDisplay = notificationInfo.OnDisplay,
			OnDismiss = notificationInfo.OnDismiss,
			Buttons = buttons,
		};
		(GuiService :: any):SendNotification(newNotificationInfo)
		return
	end

	local notification = {}
	local notificationFrame

	if notificationInfo.AutoLocalize then
		-- AutoLocalize should only be used for Developer notifcations.
		notificationFrame = createNotification(
			GameTranslator:TranslateGameText(CoreGui, notificationInfo.Title),
			GameTranslator:TranslateGameText(CoreGui, notificationInfo.Text),
			notificationInfo.Image
		)
	else
		notificationFrame = createNotification(notificationInfo.Title, notificationInfo.Text, notificationInfo.Image)
	end

	local button1
	if button1Text and button1Text ~= "" then
		notification.IsFriend = true -- Prevents other notifications overlapping the buttons
		button1 = createTextButton("Button1", UDim2.new(0, 0, 1, 2))
		if notificationInfo.AutoLocalize then
			GameTranslator:TranslateAndRegister(button1, CoreGui, button1Text)
		else
			button1.Text = button1Text
		end

		button1.Parent = notificationFrame
		local button1ClickedConnection = nil
		button1ClickedConnection = button1.MouseButton1Click:connect(function()
			if button1ClickedConnection then
				button1ClickedConnection:disconnect()
				button1ClickedConnection = nil
				removeNotification(notification)
				if callback and type(callback) ~= "function" then -- callback should be a bindable
					pcall(function()
						callback:Invoke(button1Text)
					end)
				elseif type(callback) == "function" then
					callback(button1Text)
				end
			end
		end)
	end

	local button2
	if button2Text and button2Text ~= "" then
		notification.IsFriend = true

		button2 = createTextButton("Button2", UDim2.new(0.5, 1, 1, 2))

		if notificationInfo.AutoLocalize then
			GameTranslator:TranslateAndRegister(button2, CoreGui, button2Text)
		else
			button2.Text = button2Text
		end

		button2.Parent = notificationFrame
		local button2ClickedConnection = nil
		button2ClickedConnection = button2.MouseButton1Click:connect(function()
			if button2ClickedConnection then
				button2ClickedConnection:disconnect()
				button2ClickedConnection = nil
				removeNotification(notification)
				if callback and type(callback) ~= "function" then -- callback should be a bindable
					pcall(function()
						callback:Invoke(button2Text)
					end)
				elseif type(callback) == "function" then
					callback(notificationInfo.Button2Text)
				end
			end
		end)
	else
		-- Resize button1 to take up all the space under the notification if button2 doesn't exist
		if button1 then
			button1.Size = UDim2.new(1, 0, 0, NOTIFICATION_BUTTON_HEIGHT)
		end
	end

	notification.Frame = notificationFrame
	notification.Duration = notificationInfo.Duration
	insertNotification(notification)
end
BindableEvent_SendNotificationInfo.Event:connect(onSendNotificationInfo)

local function createDeveloperNotification(notificationTable)
	if type(notificationTable) == "table" then
		if type(notificationTable.Title) == "string" and type(notificationTable.Text) == "string" then
			local iconImage = (type(notificationTable.Icon) == "string" and notificationTable.Icon or "")
			local duration = (
				type(notificationTable.Duration) == "number" and notificationTable.Duration
				or DEFAULT_NOTIFICATION_DURATION
			)
			local bindable = (
				typeof(notificationTable.Callback) == "Instance"
					and notificationTable.Callback:IsA("BindableFunction")
					and notificationTable.Callback
				or nil
			)

			local button1Text
			local button2Text
			if FFlagClientToastNotificationsEnabled and GetFFlagClientToastNotificationsRedirect() then
				button1Text = (type(notificationTable.Button1) == "string" and notificationTable.Button1 or nil)
				button2Text = (type(notificationTable.Button2) == "string" and notificationTable.Button2 or nil)
			else
				button1Text = (type(notificationTable.Button1) == "string" and notificationTable.Button1 or "")
				button2Text = (type(notificationTable.Button2) == "string" and notificationTable.Button2 or "")
			end

			-- AutoLocalize allows developers to disable automatic localization if they have pre-localized it. Defaults true.
			local autoLocalize = notificationTable.AutoLocalize == nil or notificationTable.AutoLocalize == true
			local title = notificationTable.Title
			local text = notificationTable.Text

			sendNotificationInfo({
				GroupName = "Developer",
				Title = title,
				Text = text,
				Image = iconImage,
				Duration = duration,
				Callback = bindable,
				Button1Text = button1Text,
				Button2Text = button2Text,
				AutoLocalize = autoLocalize,
			})
		end
	end
end

StarterGui:RegisterSetCore("SendNotification", createDeveloperNotification)

local checkFriendRequestIsThrottled
do
	local friendRequestThrottlingMap = {}

	checkFriendRequestIsThrottled = function(fromPlayer)
		local throttleFinishedTime = friendRequestThrottlingMap[fromPlayer]

		if throttleFinishedTime then
			if tick() < throttleFinishedTime then
				return true
			end
		end

		friendRequestThrottlingMap[fromPlayer] = tick() + FRIEND_REQUEST_NOTIFICATION_THROTTLE
		return false
	end
end

local function sendFriendNotification(fromPlayer)
	if checkFriendRequestIsThrottled(fromPlayer) then
		return
	end

	local acceptText = "Accept"
	local declineText = "Decline"

	local shouldRenameToConnection = FFlagNotificationsRenameFriendRequestToConnection
		and UniversalAppPolicy.getAppFeaturePolicies().getRenameFriendsToConnections()
	local text = if shouldRenameToConnection
		then translateString(FRIEND_REQUEST_NOTIFICATION_LOCALIZATION_KEYS.SENT)
		else "Sent you a friend request!"

	sendNotificationInfo({
		GroupName = "Friends",
		Title = fromPlayer.DisplayName,
		Text = text,
		DetailText = fromPlayer.DisplayName,
		Image = getFriendImage(fromPlayer.UserId),
		Duration = 8,
		Callback = function(buttonChosen)
			if buttonChosen == acceptText then
				AnalyticsService:ReportCounter("NotificationScript-RequestFriendship")
				AnalyticsService:TrackEvent("Game", "RequestFriendship", "NotificationScript")

				AnalyticsService:ReportCounter("NotificationScript-AcceptFriendship")
				AnalyticsService:TrackEvent("Game", "AcceptFriendship", "NotificationScript")

				LocalPlayer:RequestFriendship(fromPlayer)
			else
				AnalyticsService:ReportCounter("NotificationScript-RevokeFriendship")
				AnalyticsService:TrackEvent("Game", "RevokeFriendship", "NotificationScript")

				LocalPlayer:RevokeFriendship(fromPlayer)
				FriendRequestBlacklist[fromPlayer] = true
			end
		end,
		Button1Text = acceptText,
		Button2Text = declineText,
		OnDisplay = function()
			AnalyticsService:ReportCounter("NotificationScript-FriendshipNotificationDisplayed")
			AnalyticsService:TrackEvent("Game", "FriendshipNotificationDisplayed", "NotificationScript")
		end,
		OnDismiss = function()
			AnalyticsService:ReportCounter("NotificationScript-FriendshipNotificationDismissed")
			AnalyticsService:TrackEvent("Game", "FriendshipNotificationDismissed", "NotificationScript")
		end,
	})
end

local function onFriendRequestEvent(fromPlayer, toPlayer, event)
	if fromPlayer ~= LocalPlayer and toPlayer ~= LocalPlayer then
		return
	end

	local shouldRenameToConnection = FFlagNotificationsRenameFriendRequestToConnection
		and UniversalAppPolicy.getAppFeaturePolicies().getRenameFriendsToConnections()
	local titleText = if shouldRenameToConnection
		then translateString(FRIEND_REQUEST_NOTIFICATION_LOCALIZATION_KEYS.ACCEPTED)
		else "New Friend"

	local requiresOSAFriendingEducation = UniversalAppPolicy.getAppFeaturePolicies().getRequiresOSAFriendingEducation()

	local friendCount =  FriendingUtility:GetFriendCountAsync(LocalPlayer.UserId) 
	local hasNoFriends = friendCount == 0 or friendCount == nil

	if fromPlayer == LocalPlayer then
		if event == Enum.FriendRequestEvent.Accept and (not GetFFlagFriendshipNotifsUseSendr()) then
			local detailText = RobloxTranslator:FormatByKey(
				"InGame.NotificationScript2.FriendRequestEvent.Accept",
				{ RBX_NAME = toPlayer.Name }
			)

			sendNotificationInfo({
				GroupName = "Friends",
				Title = titleText,
				Text = toPlayer.Name,
				DetailText = detailText,

				Image = getFriendImage(toPlayer.UserId),
				Duration = DEFAULT_NOTIFICATION_DURATION,
			})
		end
	elseif toPlayer == LocalPlayer then
		if event == Enum.FriendRequestEvent.Issue and (not GetFFlagFriendshipNotifsUseSendr()) then
			if FriendRequestBlacklist[fromPlayer] then
				return
			elseif requiresOSAFriendingEducation and hasNoFriends then
				return
			end
			sendFriendNotification(fromPlayer)
		elseif event == Enum.FriendRequestEvent.Accept then
			local detailText = RobloxTranslator:FormatByKey(
				"InGame.NotificationScript2.FriendRequestEvent.Accept",
				{ RBX_NAME = fromPlayer.Name }
			)

			sendNotificationInfo({
				GroupName = "Friends",
				Title = titleText,
				Text = fromPlayer.Name,
				DetailText = detailText,

				Image = getFriendImage(fromPlayer.UserId),
				Duration = DEFAULT_NOTIFICATION_DURATION,
			})
		end
	end
end

local function onPointsAwarded(userId, pointsAwarded, userBalanceInGame, userTotalBalance)
	if pointsNotificationsActive and userId == LocalPlayer.UserId then
		local title, text, detailText
		if pointsAwarded == 1 then
			title = "Point Awarded"
			text = RobloxTranslator:FormatByKey(
				"InGame.NotificationScript2.onPointsAwarded.single",
				{ RBX_NUMBER = tostring(pointsAwarded) }
			)
		elseif pointsAwarded > 0 then
			title = "Points Awarded"
			text = RobloxTranslator:FormatByKey(
				"InGame.NotificationScript2.onPointsAwarded.multiple",
				{ RBX_NUMBER = tostring(pointsAwarded) }
			)
		elseif pointsAwarded < 0 then
			title = "Points Lost"
			text = RobloxTranslator:FormatByKey(
				"InGame.NotificationScript2.onPointsAwarded.negative",
				{ RBX_NUMBER = tostring(pointsAwarded) }
			)
		else
			--don't notify for 0 points, shouldn't even happen
			return
		end
		detailText = text

		sendNotificationInfo({
			GroupName = "PlayerPoints",
			Title = title,
			Text = text,
			DetailText = detailText,
			Image = PLAYER_POINTS_IMG,
			Duration = DEFAULT_NOTIFICATION_DURATION,
		})
	end
end

local function onBadgeAwarded(userId, creatorId, badgeId)
	if not BadgeBlacklist[badgeId] and badgesNotificationsActive and userId == LocalPlayer.UserId then
		BadgeBlacklist[badgeId] = true
		local creatorName = ""
		if game.CreatorType == Enum.CreatorType.Group then
			local success, groupInfo = pcall(function()
				return GroupService:GetGroupInfoAsync(creatorId)
			end)
			if not success then
				creatorName = ""
			end

			if groupInfo then
				creatorName = groupInfo.Name
			end
		elseif game.CreatorType == Enum.CreatorType.User then
			local success
			success, creatorName = pcall(function()
				return Players:GetNameFromUserIdAsync(creatorId)
			end)
			if not success then
				creatorName = ""
			end
		end

		local success, badgeInfo = pcall(function()
			return BadgeService:GetBadgeInfoAsync(badgeId)
		end)
		if not success then
			return
		end -- could not get info from network

		if FFlagFixOnBadgeAwardedError then
			if creatorName == nil then
				creatorName = ""
			end
		end
		local badgeAwardText = RobloxTranslator:FormatByKey(
			"InGame.NotificationScript2.onBadgeAwardedDetail",
			{ RBX_NAME = LocalPlayer.Name, CREATOR_NAME = creatorName, BADGE_NAME = badgeInfo.DisplayName }
		)
		local badgeTitle = LocalizedGetString("InGame.NotificationScript2.onBadgeAwardedTitle" )

		sendNotificationInfo({
			GroupName = "BadgeAwards",
			Title = badgeTitle,
			Text = badgeAwardText,
			DetailText = badgeAwardText,
			Image = BADGE_IMG,
			Duration = DEFAULT_NOTIFICATION_DURATION,
			OnDisplay = function()
				AnalyticsService:ReportCounter("NotificationScript-BadgeAwardNotificationDisplayed")
				AnalyticsService:TrackEvent("Game", "BadgeAwardNotificationDisplayed", "NotificationScript")
			end,
			OnDismiss = function()
				AnalyticsService:ReportCounter("NotificationScript-BadgeAwardNotificationDismissed")
				AnalyticsService:TrackEvent("Game", "BadgeAwardNotificationDismissed", "NotificationScript")
			end,
		})
	end
end

function onGameSettingsChanged(property, amount)
	if property == "SavedQualityLevel" then
		local level = GameSettings.SavedQualityLevel.Value + amount
		if level > 10 then
			level = 10
		elseif level < 1 then
			level = 1
		end
		-- value of 0 is automatic, we do not want to send a notification in that case
		if
			level > 0
			and level ~= CurrentGraphicsQualityLevel
			and GameSettings.SavedQualityLevel ~= Enum.SavedQualitySetting.Automatic
		then
			local action = (level > CurrentGraphicsQualityLevel) and "Increased" or "Decreased"
			local message = ("%s to (%d)"):format(action, level)

			if level > CurrentGraphicsQualityLevel then
				message = RobloxTranslator:FormatByKey(
					"InGame.NotificationScrip2.onCurrentGraphicsQualityLevelChanged.Increased",
					{ RBX_NUMBER = tostring(level) }
				)
			else
				message = RobloxTranslator:FormatByKey(
					"InGame.NotificationScrip2.onCurrentGraphicsQualityLevelChanged.Decreased",
					{ RBX_NUMBER = tostring(level) }
				)
			end

			sendNotificationInfo({
				GroupName = "Graphics",
				Title = "Graphics Quality",
				Text = message,
				DetailText = message,
				Image = "",
				Duration = 2,
			})
			CurrentGraphicsQualityLevel = level
		end
	end
end

if not CachedPolicyService:IsSubjectToChinaPolicies() then
	BadgeService.OnBadgeAwarded:connect(onBadgeAwarded)
end

if not isTenFootInterface then
	Players.FriendRequestEvent:connect(onFriendRequestEvent)
	PointsService.PointsAwarded:connect(onPointsAwarded)
	--GameSettings.Changed:connect(onGameSettingsChanged)

	game.GraphicsQualityChangeRequest:Connect(function(graphicsIncrease) --graphicsIncrease is a boolean
		onGameSettingsChanged("SavedQualityLevel", if FFlagFixGraphicsQualityLevelNotif then 0 else graphicsIncrease == true and 1 or -1)
	end)
end

local allowScreenshots = not CachedPolicyService:IsSubjectToChinaPolicies()

if allowScreenshots then
	-- Otherwise game.ScreenshotSavedToAlbum signal will be fired, handling in CaptureNotification.lua
	if not shouldSaveScreenshotToAlbum() then
		game.ScreenshotReady:Connect(function(path)
			local titleText = RobloxTranslator:FormatByKey("InGame.NotificationScript2.Screenshot.Title")
			local descriptionText = RobloxTranslator:FormatByKey("InGame.NotificationScript2.Screenshot.Description")
			local buttonText = RobloxTranslator:FormatByKey("InGame.NotificationScript2.Screenshot.ButtonText")

			sendNotificationInfo({
				Title = titleText,
				Text = descriptionText,
				Duration = 3.0,
				Button1Text = buttonText,
				Callback = function(text)
					if text == buttonText then
						game:OpenScreenshotsFolder()
					end
				end,
			})
		end)
	end

	-- FIXME: Add GetService method to RobloxDefinitions.cpp settingsProps
	(settings() :: any):GetService("GameSettings").VideoRecordingChangeRequest:Connect(function(value)
		if not value then
			local titleText = RobloxTranslator:FormatByKey("InGame.NotificationScript2.Video.Title")
			local descriptionText = RobloxTranslator:FormatByKey("InGame.NotificationScript2.Video.Description")
			local buttonText = RobloxTranslator:FormatByKey("InGame.NotificationScript2.Video.ButtonText")

			sendNotificationInfo({
				Title = titleText,
				Text = descriptionText,
				Duration = 3.0,
				Button1Text = buttonText,
				Callback = function(text)
					if text == buttonText then
						game:OpenVideosFolder()
					end
				end,
			})
		end
	end)
end

GuiService.SendCoreUiNotification = function(title, text)
	local notification = createNotification(title, text, "")
	notification.BackgroundTransparency = 0.5
	notification.Size = UDim2.new(0.5, 0, 0.1, 0)
	notification.Position = UDim2.new(0.25, 0, -0.1, 0)
	notification.NotificationTitle.FontSize = Enum.FontSize.Size36
	notification.NotificationText.FontSize = Enum.FontSize.Size24
	notification.Parent = RbxGui
	notification:TweenPosition(UDim2.new(0.25, 0, 0, 0), EASE_DIR, EASE_STYLE, TWEEN_TIME, true)
	wait(5)
	if notification then
		notification:Destroy()
	end
end

-- This is used for when a player calls CreatePlaceInPlayerInventoryAsync
local function onClientLuaDialogRequested(msg, accept, decline)
	PopupText.Text = msg
	--
	local acceptCn, declineCn = nil, nil
	local function disconnectCns()
		if acceptCn then
			acceptCn:disconnect()
		end
		if declineCn then
			declineCn:disconnect()
		end
		--
		GuiService:RemoveCenterDialog(PopupFrame)
		PopupFrame.Visible = false
	end

	acceptCn = PopupAcceptButton.MouseButton1Click:connect(function()
		disconnectCns()
		MarketplaceService:SignalServerLuaDialogClosed(true)
	end)
	declineCn = PopupDeclineButton.MouseButton1Click:connect(function()
		disconnectCns()
		MarketplaceService:SignalServerLuaDialogClosed(false)
	end)

	local centerDialogSuccess = pcall(function()
		GuiService:AddCenterDialog(PopupFrame, Enum.CenterDialogType.QuitDialog, function()
			PopupOKButton.Visible = false
			PopupAcceptButton.Visible = true
			PopupDeclineButton.Visible = true
			PopupAcceptButton.Text = accept
			PopupDeclineButton.Text = decline
			PopupFrame.Visible = true
		end, function()
			PopupFrame.Visible = false
		end)
	end)

	if not centerDialogSuccess then
		PopupFrame.Visible = true
		PopupAcceptButton.Text = accept
		PopupDeclineButton.Text = decline
	end

	return true
end
MarketplaceService.ClientLuaDialogRequested:connect(onClientLuaDialogRequested)

local function onPreferredTransparencyChanged()
	bgTransparency = BG_TRANSPARENCY_DEFAULT * GameSettings.PreferredTransparency
	DefaultNotification.BackgroundTransparency = bgTransparency

	for i = 1, #NotificationQueue do
		NotificationQueue[i].Frame.BackgroundTransparency = bgTransparency
	end
end
GameSettings:GetPropertyChangedSignal("PreferredTransparency"):connect(onPreferredTransparencyChanged)

if FFlagCoreScriptShowTeleportPrompt then
	local function onMenuTeleportAttemptNotification()
		local title = LocalizedGetString("Feature.SettingsHub.Prompt.TeleportBlock.Title", "Teleporting Paused")
		local body = LocalizedGetString(
			"Feature.SettingsHub.Prompt.TeleportBlock.Subtitle",
			"Teleporting will resume upon menu close."
		)

		sendNotificationInfo({
			GroupName = "Teleport",
			Title = title,
			Text = body,
			Image = "http://www.roblox.com/asset/?id=10961494062",
			Duration = DEFAULT_NOTIFICATION_DURATION,
			BottomPadding = NOTIFICATION_TITLE_Y_OFFSET,
		})
	end

	local function connectMenuTeleportAttemptEvent()
		TeleportService.MenuTeleportAttempt:Connect(function()
			onMenuTeleportAttemptNotification()
		end)
	end
	connectMenuTeleportAttemptEvent()
end
