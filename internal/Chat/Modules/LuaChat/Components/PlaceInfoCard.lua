local CoreGui = game:GetService("CoreGui")

local LuaApp = CoreGui.RobloxGui.Modules.LuaApp
local Modules = script.Parent.Parent

local Create = require(Modules.Create)
local Constants = require(Modules.Constants)
local GetPlaceThumbnail = require(Modules.Actions.GetPlaceThumbnail)

local PlaceInfoCard = {}
PlaceInfoCard.__index = PlaceInfoCard

local PLACE_INFO_CARD_HEIGHT = 72
local PLACE_INFO_THUMBNAIL_SIZE = 50

local UrlSupportNewGamesAPI = settings():GetFFlag("UrlSupportNewGamesAPI")

function PlaceInfoCard.new(appState, placeInfo)
	local self = {}
	self.appState = appState
	self.placeInfo = placeInfo
	self.thumbnail = appState.store:GetState().PlaceThumbnails[placeInfo.imageToken]
	self.connections = {}
	setmetatable(self, PlaceInfoCard)

	self.rbx = Create.new "Frame" {
		Name = "PlaceInfoCardFrame",
		BackgroundColor3 = Constants.Color.WHITE,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, PLACE_INFO_CARD_HEIGHT),

		Create.new "Frame" {
			Name = "PlaceThumbnailFrame",
			BackgroundColor3 = Constants.Color.WHITE,
			BorderSizePixel = 0,
			Size = UDim2.new(0, PLACE_INFO_CARD_HEIGHT, 0, PLACE_INFO_CARD_HEIGHT),
			Position = UDim2.new(0, 0, 0, 0)
		},

		Create.new"TextLabel" {
			Name = "PlaceTitle",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -PLACE_INFO_CARD_HEIGHT, 0.75, 0),
			Position = UDim2.new(0, PLACE_INFO_CARD_HEIGHT, 0, 0),
			TextSize = Constants.Font.FONT_SIZE_16,
			TextColor3 = Constants.Color.GRAY1,
			Font = Enum.Font.SourceSans,
			Text = placeInfo.name,
			TextXAlignment = Enum.TextXAlignment.Left,
		},

		Create.new"TextLabel" {
			Name = "BuilderLabel",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -PLACE_INFO_CARD_HEIGHT, 0.35, 0),
			Position = UDim2.new(0, PLACE_INFO_CARD_HEIGHT, 0.5, 0),
			TextSize = Constants.Font.FONT_SIZE_14,
			TextColor3 = Constants.Color.GRAY2,
			Font = Enum.Font.SourceSans,
			Text = appState.localization:Format("Feature.Chat.Label.ByBuilder", { USERNAME = placeInfo.builder }),
			TextXAlignment = Enum.TextXAlignment.Left,
		},
	}

	if not UrlSupportNewGamesAPI then
		self.thumbnail = "rbxasset://textures/ui/LuaChat/icons/share-game-thumbnail.png"
	end

	if not self.thumbnail then
		self.appState.store:Dispatch(GetPlaceThumbnail(self.placeInfo.imageToken,
			PLACE_INFO_THUMBNAIL_SIZE, PLACE_INFO_THUMBNAIL_SIZE))

		local appStateConnection = self.appState.store.Changed:Connect(function(state, oldState)
			self:Update(state, oldState)
		end)
		table.insert(self.connections, appStateConnection)
	else
		self:FillThumbnail()
	end

	return self
end

function PlaceInfoCard:Update(newState, oldState)
	local thumbnail = newState.PlaceThumbnails[self.placeInfo.imageToken]
	if (not self.thumbnail) and thumbnail then
		if thumbnail == '' then
			self.thumbnail = "rbxasset://textures/ui/LuaChat/icons/share-game-thumbnail.png"
		else
			self.thumbnail = thumbnail
		end
		self:FillThumbnail()
	end
end

function PlaceInfoCard:FillThumbnail()
	self.placeThumbnail = Create.new "ImageLabel" {
		Name = "PlaceThumbnail",
		Image = self.thumbnail.image,
		Size = UDim2.new(0, 48, 0, 48),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
	}
	self.placeThumbnail.Parent = self.rbx.PlaceThumbnailFrame
end

function PlaceInfoCard:Destruct()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end
	self.connections = {}
	self.rbx:Destroy()
end

return PlaceInfoCard