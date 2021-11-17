local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local FitFrame = require(Plugin.Packages.FitFrame)
local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)
local PluginAPI2 = require(Plugin.Src.ContextServices.PluginAPI2)
local Navigation = require(Plugin.Src.ContextServices.Navigation)

local FitFrameVertical = FitFrame.FitFrameVertical

local CONTENT_PADDING = 18
local BACK_ICON_SIZE = 32
local BACK_ICON = "rbxasset://textures/PluginManagement/back.png"

local DetailsTopBar = Roact.Component:extend("DetailsTopBar")

DetailsTopBar.defaultProps = {
	name = "",
}

function DetailsTopBar:init()
	self.onBackButtonActivated = function()
		local rn = self.props.Navigation:get()
		rn.navigation.goBack()
	end
end

function DetailsTopBar:render()
	local assetId = self.props.assetId
	local layoutOrder = self.props.LayoutOrder
	local name = self.props.name

	local theme = self.props.Stylizer
	local api = self.props.API:get()

	local thumbnailUrl = api.Images.AssetThumbnailUrl(assetId)

	local contentWidth = Constants.THUMBNAIL_SIZE + Constants.PLUGIN_HORIZONTAL_PADDING

	return Roact.createElement(FitFrameVertical, {
		BackgroundColor3 = theme.BackgroundColor,
		BorderSizePixel = 0,
		contentPadding = UDim.new(0, CONTENT_PADDING),
		FillDirection = Enum.FillDirection.Horizontal,
		LayoutOrder = layoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		width = UDim.new(1, 0),
		margin = {
			top = CONTENT_PADDING,
			bottom = CONTENT_PADDING,
			left = 0,
			right = 0,
		},
	}, {
		BackButton = Roact.createElement("ImageButton", {
			BackgroundTransparency = 1,
			LayoutOrder = 0,
			Image = BACK_ICON,
			ImageColor3 = theme.TextColor,
			Size = UDim2.new(0, BACK_ICON_SIZE, 0, BACK_ICON_SIZE),
			[Roact.Event.Activated] = self.onBackButtonActivated,
		}),

		Border = Roact.createElement("Frame", {
			BorderSizePixel = 0,
			BackgroundColor3 = theme.BorderColor,
			LayoutOrder = 1,
			Size = UDim2.new(0, 1, 0, Constants.DETAILS_THUMBNAIL_SIZE),
		}),

		Thumbnail = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Image = thumbnailUrl,
			LayoutOrder = 2,
			Size = UDim2.new(0, Constants.DETAILS_THUMBNAIL_SIZE, 0, Constants.DETAILS_THUMBNAIL_SIZE),
		}),

		Name = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Font = theme.FontBold,
			LayoutOrder = 3,
			Size = UDim2.new(0.5, -contentWidth, 0, 20),
			Text = name,
			TextColor3 = theme.TextColor,
			TextSize = 18,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end


DetailsTopBar = withContext({
	Navigation = Navigation,
	Stylizer = ContextServices.Stylizer,
	API = PluginAPI2,
})(DetailsTopBar)



return DetailsTopBar
