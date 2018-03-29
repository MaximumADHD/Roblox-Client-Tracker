local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")

local Modules = CoreGui.RobloxGui.Modules
local Analytics = require(Modules.Common.Analytics)
local LuaChat = script.Parent.Parent
local LuaApp = Modules.LuaApp
local StringsLocale = require(LuaApp.StringsLocale)

local Create = require(LuaChat.Create)
local Constants = require(LuaChat.Constants)
local Text = require(LuaChat.Text)

local LoadingIndicator = require(script.Parent.LoadingIndicator)

local GetPlaceInfo = require(LuaChat.Actions.GetPlaceInfo)
local GetPlaceThumbnail = require(LuaChat.Actions.GetPlaceThumbnail)

local GameParams = require(LuaChat.Models.GameParams)

local BUBBLE_PADDING = 10
local DEFAULT_THUMBNAIL = "rbxasset://textures/ui/LuaChat/icons/share-game-thumbnail.png"
local EXTERIOR_PADDING = 3
local INTERIOR_PADDING = 12
local ICON_SIZE = 64
local LINK_CARD_CLICKED_EVENT = "clickLinkCardInChat"
local PLACE_INFO_THUMBNAIL_SIZE = 50
local VIEW_DETAILS_BUTTON_CLICKED_EVENT = "clickBtnFromLinkCardInChat"

local function isOutgoingMessage(message)
	local localUserId = tostring(Players.LocalPlayer.UserId)
	return message.senderTargetId == localUserId
end

local UrlSupportNewGamesAPI = settings():GetFFlag("UrlSupportNewGamesAPI")
local LuaChatAssetCardsCanShowPlayButton = settings():GetFFlag("LuaChatAssetCardsCanShowPlayButton")

local AssetCard = {}
AssetCard.__index = AssetCard

function AssetCard.new(appState, message, assetId)
	local self = {}
	setmetatable(self, AssetCard)

	local state = appState.store:GetState()
	local user = state.Users[message.senderTargetId]
	local username = user and user.name or "unknown user"

	self._analytics = Analytics.new()
	self.appState = appState
	self.paddingObject = nil
	self.message = message
	self.bubbleType = "AssetCard"
	self.connections = {}
	self.cardBodyClick = nil
	self.assetId = assetId
	self.conversationId = message.conversationId

	self.tail = Create.new "ImageLabel" {
		Name = "Tail",
		Size = UDim2.new(0, 6, 0, 6),
		BackgroundTransparency = 1,
	}

	self.actionLabel = Create.new "TextLabel" {
		Name = "ActionLabel",
		BackgroundTransparency = 1,

		AnchorPoint = Vector2.new(0.5, 0.5),
		Size = UDim2.new(0.8, 0, 0.8, 0),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		TextSize = Constants.Font.FONT_SIZE_20,
		TextColor3 = Constants.Color.GRAY1,
		Font = Enum.Font.SourceSans,
		Text = self.appState.localization:Format(StringsLocale.Keys.VIEW_ASSET_DETAILS),
	}

	self.actionButton = Create.new "ImageButton" {
		Name = "Action",
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 1),
		Position = UDim2.new(0.5, 0, 1, 0),
		Size = UDim2.new(1, 0, 0, 32),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(3,3,4,4),
		Image = "rbxasset://textures/ui/LuaChat/9-slice/input-default.png",
		self.actionLabel,
	}

	self.Title = Create.new "TextLabel" {
		Name = "Title",
		BackgroundTransparency = 1,

		AnchorPoint = Vector2.new(0.5, 0),
		TextSize = Constants.Font.FONT_SIZE_20,
		Size = UDim2.new(1, 0, 0, 20),
		Position = UDim2.new(0.5, 0, 0, 0),

		TextColor3 = Constants.Color.GRAY1,
		Font = Enum.Font.SourceSans,
		TextXAlignment = Enum.TextXAlignment.Left
	}

	self.Icon = Create.new "ImageLabel" {
		Name = "Icon",
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 0, 0, self.Title.TextSize + INTERIOR_PADDING),
		Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
	}

	self.Details = Create.new "TextLabel" {
		Name = "Details",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, - INTERIOR_PADDING -ICON_SIZE, 0, ICON_SIZE),
		Position = self.Icon.Position + UDim2.new(0 , INTERIOR_PADDING + ICON_SIZE, 0, 0),

		TextColor3 = Constants.Color.GRAY2,
		Font = Enum.Font.SourceSans,
		TextSize = Constants.Font.FONT_SIZE_14,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		TextWrapped = true,
	}

	self.fadeScreen = Create.new "Frame" {
		Name = "FadeScreen",
		BackgroundTransparency = 0,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderSizePixel = 0,
	}


	self.Content = Create.new "ImageButton" {
		Name = "Content",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -BUBBLE_PADDING * 2, 1, -BUBBLE_PADDING * 2),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Visible = false,

		self.actionButton,
		self.Title,
		self.Icon,
		self.Details,
		self.fadeScreen,
	}

	self.bubble = Create.new "ImageLabel" {
		Name = "Bubble",
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(0, 267, 1, 0),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(10, 10, 11, 11),
		LayoutOrder = 2,

		self.Content,
		self.tail,
	}

	self.usernameLabel = Create.new "TextLabel" {
		Name = "UsernameLabel",
		Font = Enum.Font.SourceSans,
		TextSize = Constants.Font.FONT_SIZE_12,
		Visible = false,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -56, 0, 16),
		Position = UDim2.new(0, 56, 0, 0),
		TextColor3 = Constants.Color.GRAY2,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		Text = username,
	}

	self.bubbleContainer = Create.new "Frame" {
		Name = "BubbleContainer",
		BackgroundTransparency = 1,
		LayoutOrder = 2,
		Size = UDim2.new(1, 0, 0, 0),

		self.bubble,
		self.usernameLabel,
	}

	self.rbx = Create.new "Frame" {
		Name = "AssetCard",
		BackgroundTransparency = 1,

		Create.new "UIListLayout" {
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		},

		self.bubbleContainer,
	}

	-- 'isOutgoing' means "is sent by the local user". This function separates the tail position & color
	if isOutgoingMessage(message) then
		self.tail.AnchorPoint = Vector2.new(0, 0)
		self.tail.Position = UDim2.new(1, 0, 0, 0)
		self.tail.ImageColor3 = Color3.new(1, 1, 1)

		self.bubble.ImageColor3 = Color3.new(1, 1, 1)
		self.bubble.AnchorPoint = Vector2.new(1, 0)
		self.bubble.Position = UDim2.new(1, -10, 0, 0)

		self.rbx.UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	else
		self.tail.AnchorPoint = Vector2.new(1, 0)
		self.tail.Position = UDim2.new(0, 0, 0, 0)
		self.tail.ImageColor3 = Color3.new(1, 1, 1)

		self.bubble.ImageColor3 = Color3.new(1, 1, 1)
		self.bubble.AnchorPoint = Vector2.new(0, 0)
		self.bubble.Position = UDim2.new(0, 54, 0, 0)

		self.rbx.UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
	end

	if state.PlaceInfos[self.assetId] == nil then
		appState.store:Dispatch(GetPlaceInfo(assetId))
	end

	self.appStateConnection = self.appState.store.Changed:Connect(function(state)
		self:Update(state)
	end)
	table.insert(self.connections, self.appStateConnection)

	local connection = self.rbx:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		self:Resize()
	end)
	table.insert(self.connections, connection)

	self:Update(state)

	return self
end

function AssetCard:Resize()
	local formFactor = self.appState.store:GetState().FormFactor
	self.bubble.Size = UDim2.new(1, -Constants:GetFormFactorSpecific(formFactor).ASSET_CARD_HORIZONTAL_MARGIN, 0, 92 + ICON_SIZE)

	local containerHeight = self.bubble.AbsoluteSize.Y

	if self.usernameLabel.Visible then
		containerHeight = containerHeight + self.usernameLabel.AbsoluteSize.Y
	end

	self.bubbleContainer.Size = UDim2.new(1, 0, 0, containerHeight)

	local height = 0
	for _, child in ipairs(self.rbx:GetChildren()) do
		if child:IsA("GuiObject") then
			height = height + child.AbsoluteSize.Y
		end
	end

	Text.TruncateTextLabel(self.Title, "...")

	self.rbx.Size = UDim2.new(1, 0, 0, height + EXTERIOR_PADDING*2)
end

function AssetCard:Update(newState)
	local placeInfo = newState.PlaceInfos[self.assetId]
	if placeInfo == nil then
		self:ShowLoadingIndicator(true)
		self.appState.store:Dispatch(GetPlaceInfo(self.assetId))
	else
		self.placeInfo = placeInfo
		self.Title.Text = placeInfo.name
		self.Details.Text = placeInfo.description:gsub("%s", " ")
		if UrlSupportNewGamesAPI then
			local thumbnail = newState.PlaceThumbnails[placeInfo.imageToken]
			if thumbnail == nil then
				self.appState.store:Dispatch(GetPlaceThumbnail(
					placeInfo.imageToken, PLACE_INFO_THUMBNAIL_SIZE, PLACE_INFO_THUMBNAIL_SIZE
				))
			else
				if thumbnail.image == '' then
					self.thumbnail = DEFAULT_THUMBNAIL
				else
					self.thumbnail = thumbnail.image
				end
				self:FillThumbnail()
				self:Show()
			end
		else
			self.thumbnail = DEFAULT_THUMBNAIL
			self:Show()
		end
	end
	if self.cardBodyClick then self.cardBodyClick:Disconnect() end
	if self.detailsButtonClick then self.detailsButtonClick:Disconnect() end

	if LuaChatAssetCardsCanShowPlayButton then
		self:StyleViewDetailsAsPlay(self.placeInfo ~= nil and self.placeInfo.isPlayable)
	end

	self.cardBodyClick = self.Content.MouseButton1Click:Connect(function()
		self:ReportTouchEvent(LINK_CARD_CLICKED_EVENT)
		if self.placeInfo then
			GuiService:BroadcastNotification(self.assetId,
				GuiService:GetNotificationTypeList().VIEW_GAME_DETAILS_ANIMATED)
		end
	end)

	self.detailsButtonClick = self.actionButton.MouseButton1Click:Connect(function()
		self:ReportTouchEvent(VIEW_DETAILS_BUTTON_CLICKED_EVENT)
		if self.placeInfo then
			if LuaChatAssetCardsCanShowPlayButton then
				if self.placeInfo.isPlayable then
					local gameParams = GameParams.fromPlaceId(self.assetId)
					local payload = HttpService:JSONEncode(gameParams)

					GuiService:BroadcastNotification(payload,
						GuiService:GetNotificationTypeList().LAUNCH_GAME)
				else
					GuiService:BroadcastNotification(self.assetId,
						GuiService:GetNotificationTypeList().VIEW_GAME_DETAILS_ANIMATED)
				end
			else
				GuiService:BroadcastNotification(self.assetId,
					GuiService:GetNotificationTypeList().VIEW_GAME_DETAILS_ANIMATED)
			end
		end
	end)

	self:Resize()
end

function AssetCard:ReportTouchEvent(eventName)
	local eventContext = "touch"
	local additionalArgs = {
		conversationId = self.conversationId,
		assetId = self.assetId
	}
	self._analytics.EventStream:setRBXEventStream(eventContext, eventName, additionalArgs)
end

function AssetCard:StyleViewDetailsAsPlay(isShowingAsPlay)
	if isShowingAsPlay then
		self.actionButton.ImageColor3 = Constants.Color.GREEN_PRIMARY
		self.actionLabel.Text = self.appState.localization:Format(StringsLocale.Keys.PLAY_GAME)
		self.actionLabel.TextColor3 = Constants.Color.WHITE
	else
		self.actionButton.ImageColor3 = Constants.Color.WHITE
		self.actionLabel.Text = self.appState.localization:Format(StringsLocale.Keys.VIEW_ASSET_DETAILS)
		self.actionLabel.TextColor3 = Constants.Color.GRAY1
	end
end

function AssetCard:Show()
	self.Content.Visible = true
	spawn(function()
		while (not self.Icon.IsLoaded) do wait() end

		self:ShowLoadingIndicator(false)
		local fadeInTween = TweenService:Create(
			self.fadeScreen,
			TweenInfo.new(0.4),
			{BackgroundTransparency = 1}
		)
		fadeInTween:Play()
	end)

	--TODO: Remove comments. CLICHAT-820 for more info.
	--[[
	do
		if self.appStateConnection then
			self.appStateConnection:Disconnect()
		end
	end
	]]
end

function AssetCard:FillThumbnail()
	self.Icon.Image = self.thumbnail or ""
end

function AssetCard:ShowLoadingIndicator(isVisible)
	if isVisible then
		if not self.loadingIndicator then
			local loadingIndicator = LoadingIndicator.new(self.appState)
			loadingIndicator.rbx.AnchorPoint = Vector2.new(0.5, 0.5)
			loadingIndicator.rbx.Position = UDim2.new(0.5, 0, 0.5, 0)
			loadingIndicator.rbx.Size = UDim2.new(0.5, 0, 0.25, 0)
			loadingIndicator.rbx.Parent = self.bubble
			loadingIndicator:SetVisible(true)
			self.loadingIndicator = loadingIndicator
		end
	else
		if self.loadingIndicator then
			self.loadingIndicator:Destroy()
		end
	end
end

--TODO: Remove do block. CLICHAT-820 for more info.
do
	function AssetCard:DisconnectUpdate()
		if self.Content.Visible then
			if self.appStateConnection then
				self.appStateConnection:Disconnect()
				self.appStateConnection = nil
			end
		end
	end
end

function AssetCard:Destruct()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end
	self.connections = {}
	self.rbx:Destroy()
end

return AssetCard
