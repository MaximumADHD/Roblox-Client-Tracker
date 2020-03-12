local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local FitFrame = require(Plugin.Packages.FitFrame)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local Constants = require(Plugin.Src.Util.Constants)
local PluginAPI2 = require(Plugin.Src.ContextServices.PluginAPI2)
local Navigation = require(Plugin.Src.ContextServices.Navigation)
local IconWithText = require(Plugin.Src.Components.IconWithText)

local FitTextLabel = FitFrame.FitTextLabel

local HttpRequestOverview = Roact.PureComponent:extend("HttpRequestOverview")

local ALLOWED_ICON = "rbxasset://textures/PluginManagement/allowed.png"
local DENIED_ICON = "rbxasset://textures/PluginManagement/declined.png"
local EDIT_ICON = "rbxasset://textures/PluginManagement/edit.png"

HttpRequestOverview.defaultProps = {
    assetId = nil,
    LayoutOrder = 1,
    navigation = nil,
}

function HttpRequestOverview:init()
    self.openPluginDetails = function()
		local rn = self.props.Navigation:get()
		rn.navigation.navigate({
			routeName = Constants.APP_PAGE.Detail,
			params = { assetId = self.props.assetId },
		})
    end
end

function HttpRequestOverview:render()
	local acceptedRequestsCount = self.props.acceptedRequestsCount
	local deniedRequestsCount = self.props.deniedRequestsCount
    local layoutOrder = self.props.LayoutOrder
	local localization = self.props.Localization

    local theme = self.props.Theme:get("Plugin")

	return Roact.createElement("TextButton", {
        BackgroundTransparency = 1,
        LayoutOrder = layoutOrder,
        -- TODO? Consider dynamically resizing this frame based on the checkbox/text height
        Size = UDim2.new(1, 0, 0, 16),
        Text = "",
        [Roact.Event.Activated] = self.openPluginDetails,
    }, {
        Layout = Roact.createElement("UIListLayout", {
            FillDirection = Enum.FillDirection.Horizontal,
            Padding = UDim.new(0, 8),
            SortOrder = Enum.SortOrder.LayoutOrder,
            VerticalAlignment = Enum.VerticalAlignment.Top,
        }),

        Label = Roact.createElement(FitTextLabel, {
            BackgroundTransparency = 1,
            Font = theme.Font,
            LayoutOrder = 0,
            Size = UDim2.new(1, 0, 0, 16),
            TextSize = 16,
            Text = localization:getText("PluginEntry", "HttpRequest"),
            TextXAlignment = Enum.TextXAlignment.Left,
            TextColor3 = theme.HttpOverviewTextColor,
            width = FitTextLabel.Width.FitToText,
        }),

        Allowed = (acceptedRequestsCount > 0) and Roact.createElement(IconWithText, {
            Image = ALLOWED_ICON,
            imageSize = Constants.HTTP_OVERVIEW_ICON_SIZE,
            imageTopPadding = 1,
            LayoutOrder = 1,
            Text = acceptedRequestsCount,
            TextColor3 = theme.HttpOverviewTextColor,
            TextSize = 16,
        }),

        Denied = (deniedRequestsCount > 0) and Roact.createElement(IconWithText, {
            Image = DENIED_ICON,
            imageSize = Constants.HTTP_OVERVIEW_ICON_SIZE,
            imageTopPadding = 1,
            LayoutOrder = 2,
            Text = deniedRequestsCount,
            TextColor3 = theme.HttpOverviewTextColor,
            TextSize = 16,
        }),

        Border = Roact.createElement("Frame", {
            BorderSizePixel = 0,
            BackgroundColor3 = theme.BorderColor,
            LayoutOrder = 3,
            Size = UDim2.new(0, 1, 0, Constants.HTTP_OVERVIEW_ICON_SIZE),
        }),

		EditButton = Roact.createElement("ImageLabel", {
            BackgroundTransparency = 1,
            Image = EDIT_ICON,
			ImageColor3 = theme.HttpOverviewTextColor,
            LayoutOrder = 4,
			Size = UDim2.new(0, Constants.HTTP_OVERVIEW_ICON_SIZE, 0, Constants.HTTP_OVERVIEW_ICON_SIZE),
		}),
    })
end

local function mapStateToProps(state, props)
    local pluginPermissions = state.PluginPermissions[props.assetId]

	return {
        acceptedRequestsCount = pluginPermissions.allowedHttpCount,
        deniedRequestsCount = pluginPermissions.deniedHttpCount,
	}
end

ContextServices.mapToProps(HttpRequestOverview, {
	Navigation = Navigation,
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
	API = PluginAPI2,
})

return RoactRodux.connect(mapStateToProps, nil)(HttpRequestOverview)
