local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local FitFrame = require(Plugin.Packages.FitFrame)
local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext
local LayoutOrderIterator = require(Plugin.Packages.Framework).Util.LayoutOrderIterator

local Constants = require(Plugin.Src.Util.Constants)
local PluginAPI2 = require(Plugin.Src.ContextServices.PluginAPI2)
local Navigation = require(Plugin.Src.ContextServices.Navigation)
local IconWithText = require(Plugin.Src.Components.IconWithText)

local FitTextLabel = FitFrame.FitTextLabel

local FlagsList = require(Plugin.Src.Util.FlagsList)

--TODO: Rename this component to PermissionOverview as it now pertains to multiple permissions
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
	local allowedScriptInjection = self.props.allowedScriptInjection
	local showHttpPermissions = acceptedRequestsCount > 0 or deniedRequestsCount > 0
	local showScriptInjectionPermission = allowedScriptInjection ~= nil
	local showQ3PermissionUI = FlagsList:get("FFlagPluginManagementQ3ContentSecurity")
	local showAnyPermissions = showHttpPermissions or showScriptInjectionPermission
	local layoutOrder = self.props.LayoutOrder
	local localization = self.props.Localization

	local theme = self.props.Stylizer

	local layoutIndex = LayoutOrderIterator.new()
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

		NoPermissionsRequested = showQ3PermissionUI and (not showAnyPermissions) and Roact.createElement(FitTextLabel, {
			BackgroundTransparency = 1,
			Font = theme.Font,
			LayoutOrder = layoutIndex:getNextOrder(),
			Size = UDim2.new(1, 0, 0, 16),
			TextSize = 16,
			Text = localization:getText("PluginEntry", "NoPermissionsRequested"),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextColor3 = theme.HttpOverviewTextColor,
			width = FitTextLabel.Width.FitToText,
		}),

		Label = showHttpPermissions and Roact.createElement(FitTextLabel, {
			BackgroundTransparency = 1,
			Font = theme.Font,
			LayoutOrder = layoutIndex:getNextOrder(),
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
			LayoutOrder = layoutIndex:getNextOrder(),
			Text = acceptedRequestsCount,
			TextColor3 = theme.HttpOverviewTextColor,
			TextSize = 16,
		}),

		Denied = (deniedRequestsCount > 0) and Roact.createElement(IconWithText, {
			Image = DENIED_ICON,
			imageSize = Constants.HTTP_OVERVIEW_ICON_SIZE,
			imageTopPadding = 1,
			LayoutOrder = layoutIndex:getNextOrder(),
			Text = deniedRequestsCount,
			TextColor3 = theme.HttpOverviewTextColor,
			TextSize = 16,
		}),

		Border = showHttpPermissions and Roact.createElement("Frame", {
			BorderSizePixel = 0,
			BackgroundColor3 = theme.BorderColor,
			LayoutOrder = layoutIndex:getNextOrder(),
			Size = UDim2.new(0, 1, 0, Constants.HTTP_OVERVIEW_ICON_SIZE),
		}),

		ScriptInjection = showQ3PermissionUI and showScriptInjectionPermission and Roact.createElement(FitTextLabel, {
			BackgroundTransparency = 1,
			Font = theme.Font,
			LayoutOrder = layoutIndex:getNextOrder(),
			Size = UDim2.new(1, 0, 0, 16),
			TextSize = 16,
			Text = localization:getText("PluginEntry", allowedScriptInjection and "ScriptInjectionAllowed" or "ScriptInjectionDenied"),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextColor3 = theme.HttpOverviewTextColor,
			width = FitTextLabel.Width.FitToText,
		}),

		Border2 = showQ3PermissionUI and showScriptInjectionPermission and Roact.createElement("Frame", {
			BorderSizePixel = 0,
			BackgroundColor3 = theme.BorderColor,
			LayoutOrder = layoutIndex:getNextOrder(),
			Size = UDim2.new(0, 1, 0, Constants.HTTP_OVERVIEW_ICON_SIZE),
		}),

		EditButton = showAnyPermissions and Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Image = EDIT_ICON,
			ImageColor3 = theme.HttpOverviewTextColor,
			LayoutOrder = layoutIndex:getNextOrder(),
			Size = UDim2.new(0, Constants.HTTP_OVERVIEW_ICON_SIZE, 0, Constants.HTTP_OVERVIEW_ICON_SIZE),
		}),
	})
end

local function mapStateToProps(state, props)
	local pluginPermissions = state.PluginPermissions[props.assetId]

	return {
		-- pluginPermissions is only ever unspecified in testing
		acceptedRequestsCount = pluginPermissions and pluginPermissions.allowedHttpCount or 0,
		deniedRequestsCount = pluginPermissions and pluginPermissions.deniedHttpCount or 0,
		allowedScriptInjection = pluginPermissions and pluginPermissions.allowedScriptInjection,
	}
end

HttpRequestOverview = withContext({
	Navigation = Navigation,
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
	API = PluginAPI2,
})(HttpRequestOverview)

return RoactRodux.connect(mapStateToProps, nil)(HttpRequestOverview)
