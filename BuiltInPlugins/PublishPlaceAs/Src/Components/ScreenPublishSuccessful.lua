--[[
	Display page on publish success
]]
local Plugin = script.Parent.Parent.Parent

local StudioService = game:GetService("StudioService")

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local SharedFlags = Framework.SharedFlags
local FFlagRemoveUILibraryButton = SharedFlags.getFFlagRemoveUILibraryButton()

local Constants = require(Plugin.Src.Resources.Constants)

local UI = Framework.UI
local Button = if FFlagRemoveUILibraryButton then UI.Button else UILibrary.Component.RoundTextButton

local ContentProvider = game:GetService("ContentProvider")

local ICON_SIZE = 150
local BUTTON_WIDTH = 150
local BUTTON_HEIGHT = 30

local ScreenPublishSuccessful = Roact.PureComponent:extend("ScreenPublishSuccessful")

function ScreenPublishSuccessful:init()
	self.state = {
		assetFetchStatus = nil,
	}

	self.isMounted = false

	local gameId = self.props.Id
	-- new place publish
	if gameId == 0 then
		gameId = game.GameId
	end
	self.thumbnailUrl = string.format("rbxthumb://type=GameIcon&id=%i&w=%i&h=%i", gameId, ICON_SIZE, ICON_SIZE)
end

function ScreenPublishSuccessful:didMount()
	self.isMounted = true
	spawn(function()
		local asset = { self.thumbnailUrl }
		local function setStatus(contentId, status)
			if self.isMounted then
				self:setState({
					assetFetchStatus = status,
				})
			end
		end
		ContentProvider:PreloadAsync(asset, setStatus)
	end)
end

function ScreenPublishSuccessful:willUnmount()
	self.isMounted = false
	StudioService:requestClose(self.props.CloseMode)
end

function ScreenPublishSuccessful:render()
	local props = self.props
	local theme = props.Stylizer
	local localization = props.Localization

	local onClose = props.OnClose

	local name = props.Name
	local parentGameName = props.ParentGameName

	local findText = localization:getText("PublishSuccess", "FindInGame", { parentGameName })

	local successText = localization:getText("PublishSuccess", "Success")
	if props.IsPublish == false then
		-- Save uses a different success message than publish
		successText = localization:getText("PublishSuccess", "SaveSuccess")
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = theme.backgroundColor,
		BorderSizePixel = 0,
	}, {
		Icon = Roact.createElement("ImageLabel", {
			Position = UDim2.new(0.5, 0, 0.2, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
			Image = self.state.assetFetchStatus == Enum.AssetFetchStatus.Success and self.thumbnailUrl
				or theme.icons.thumbnailPlaceHolder,
			BorderSizePixel = 0,
		}),

		Name = Roact.createElement("TextLabel", {
			Text = name,
			Position = UDim2.new(0.5, 0, 0.35, 0),
			TextSize = 20,
			BackgroundTransparency = 1,
			TextColor3 = theme.header.text,
			TextXAlignment = Enum.TextXAlignment.Center,
			Font = theme.header.font,
		}),

		Success = Roact.createElement("TextLabel", {
			Text = successText,
			Position = UDim2.new(0.5, 0, 0.4, 0),
			TextSize = 24,
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextColor3 = theme.successText.text,
			Font = theme.successText.font,
		}),

		ParentGame = Roact.createElement("TextLabel", {
			Text = findText,
			Position = UDim2.new(0.5, 0, 0.5, 0),

			TextSize = 18,
			BackgroundTransparency = 1,
			TextColor3 = theme.header.text,
			TextXAlignment = Enum.TextXAlignment.Center,
			Font = theme.header.font,
		}),

		CloseButton = Roact.createElement(
			Button,
			if FFlagRemoveUILibraryButton
				then {
					AnchorPoint = Vector2.new(0.5, 0.5),
					OnClick = onClose,
					Position = UDim2.new(0.5, 0, 0.9, 0),
					Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
					Style = "Round",
					Text = localization:getText("Button", "Close"),
				}
				else {
					Position = UDim2.new(0.5, 0, 0.9, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Style = theme.cancelButton,
					Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
					Active = true,
					Name = localization:getText("Button", "Close"),
					TextSize = Constants.TEXT_SIZE,

					OnClicked = function()
						onClose()
					end,
				}
		),
	})
end

ScreenPublishSuccessful = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(ScreenPublishSuccessful)

local function mapStateToProps(state, props)
	local publishInfo = state.PublishedPlace.publishInfo
	return {
		Id = publishInfo.id,
		Name = publishInfo.name,
		ParentGameName = publishInfo.parentGameName,
	}
end

return RoactRodux.connect(mapStateToProps)(ScreenPublishSuccessful)
