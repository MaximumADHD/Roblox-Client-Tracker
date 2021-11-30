--[[
	Display page on publish fail
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

-- TODO: jbousellam - 9/10/21 - STUDIOPLAT-25892 - Figure out why we need to do this instead of using ContextServices.API
local RobloxAPI = Framework.RobloxAPI
local API = RobloxAPI.new()

local SetPublishInfo = require(Plugin.Src.Actions.SetPublishInfo)
local SetScreen = require(Plugin.Src.Actions.SetScreen)
local SetIsPublishing = require(Plugin.Src.Actions.SetIsPublishing)

local Constants = require(Plugin.Src.Resources.Constants)

local RoundTextButton = UILibrary.Component.RoundTextButton

local SettingsImpl = require(Plugin.Src.Network.Requests.SettingsImpl)

local Analytics = require(Plugin.Src.Util.Analytics)

local StudioService = game:GetService("StudioService")
local ContentProvider = game:GetService("ContentProvider")

local ICON_SIZE = 150
local BUTTON_WIDTH = 150
local BUTTON_HEIGHT = 40

local FFlagStudioNewGamesInCloudUI = game:GetFastFlag("StudioNewGamesInCloudUI")
local FFlagPublishPlaceAsUseDevFrameworkRobloxAPI2 = game:GetFastFlag("PublishPlaceAsUseDevFrameworkRobloxAPI2")

local FFlagStudioEnableNewGamesInTheCloudMetrics = game:GetFastFlag("StudioEnableNewGamesInTheCloudMetrics")

local ScreenPublishFail = Roact.PureComponent:extend("ScreenPublishFail")

function ScreenPublishFail:init()
	self.state = {
		assetFetchStatus = nil,
	}

	self.finishedConnection = nil

	self.isMounted = false

	self.thumbnailUrl = string.format("rbxthumb://type=Asset&id=%i&w=%i&h=%i", self.props.Id, ICON_SIZE, ICON_SIZE)
end

function ScreenPublishFail:didMount()
	self.isMounted = true
	spawn(function()
		local asset = { self.thumbnailUrl }
		local function setStatus(contentId, status)
			if self.isMounted then
				self:setState({
					assetFetchStatus = status
				})
			end
		end
		ContentProvider:PreloadAsync(asset, setStatus)
	end)

	self.finishedConnection = StudioService.GamePublishFinished:connect(function(success)
		if success then
			self.props.OpenPublishSuccessfulPage(self.props.Id, self.props.Name, self.props.ParentGameName)
		end
	end)

	if FFlagStudioEnableNewGamesInTheCloudMetrics then
		Analytics.reportSaveFailure()
	end
end

function ScreenPublishFail:willUnmount()
	self.isMounted = false
	if self.finishedConnection then
		self.finishedConnection:disconnect()
	end
end

function ScreenPublishFail:render()
	local props = self.props
	local theme = props.Theme:get("Plugin")
	local localization = props.Localization
	local apiImpl = API

	local id = props.Id
	local name = props.Name
	local parentGameId = props.ParentGameId
	local settings = props.Settings
	local isPublishing = props.IsPublishing

	local dispatchSetIsPublishing = props.dispatchSetIsPublishing

	local failureMessage = localization:getText("PublishFail", "Fail")
	if FFlagStudioNewGamesInCloudUI and isPublishing == false then
		-- Use a different error message for save failures
		failureMessage = localization:getText("PublishFail", "SaveFail")
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
			Image = self.state.assetFetchStatus == Enum.AssetFetchStatus.Success and self.thumbnailUrl or theme.icons.thumbnailPlaceHolder,
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

		Fail = Roact.createElement("TextLabel", {
			Text = failureMessage,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			TextSize = 24,
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextColor3 = theme.failText.text,
			Font = theme.failText.font,
		}),


		Retry = Roact.createElement(RoundTextButton, {
			Position = UDim2.new(0.5, 0, 0.8, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Style = theme.defaultButton,
			Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
			Active = not isPublishing,
			Name = localization:getText("Button", "Retry"),
			TextSize = Constants.TEXT_SIZE,
			OnClicked = function()
				if not isPublishing then
					if parentGameId == 0 then
						if FFlagPublishPlaceAsUseDevFrameworkRobloxAPI2 then
							SettingsImpl.saveAll(settings, localization, apiImpl)
						else
							SettingsImpl.saveAll(settings, localization)
						end
					else
						-- groupId is unused in existing game/place publish, only new game publish
						-- which is in the if block
						StudioService:publishAs(parentGameId, id, 0)

					end
				end
				dispatchSetIsPublishing(true)
			end,
		})
	})
end


ScreenPublishFail = withContext({
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
	API = FFlagPublishPlaceAsUseDevFrameworkRobloxAPI2 and ContextServices.API or nil,
})(ScreenPublishFail)


local function mapStateToProps(state, props)
	local publishInfo = state.PublishedPlace.publishInfo
	return {
        Id = publishInfo.id,
        Name = publishInfo.name,
        ParentGameName = publishInfo.parentGameName,
        ParentGameId = publishInfo.parentGameId,
		Settings = publishInfo.settings,
		IsPublishing = state.PublishedPlace.isPublishing,
	}
end

local function useDispatchForProps(dispatch)
	return {
		OpenPublishSuccessfulPage = function(id, name, parentGameName)
			dispatch(SetPublishInfo({ id = id, name = name, parentGameName = parentGameName, }))
			dispatch(SetScreen(Constants.SCREENS.PUBLISH_SUCCESSFUL))
		end,

		dispatchSetIsPublishing = function(isPublishing)
			dispatch(SetIsPublishing(isPublishing))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, useDispatchForProps)(ScreenPublishFail)
