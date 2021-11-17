local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext
local PluginInstalledStatus = require(Plugin.Src.Constants.PluginInstalledStatus)

local MainView = Roact.Component:extend("MainView")

function MainView:renderContentNotReady(theme, localization)
	local targetPluginId = self.props.pluginId
	local localizationArgs = { targetPluginId }
	return {
		SimpleLabel = Roact.createElement("TextLabel", {
			Text = localization:getText("Main", "InstallingPlugin", localizationArgs),
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0,0,0,0),
			BackgroundTransparency = 1.0,
			TextColor3 = theme.TextColor,
			TextSize = 18,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
		}),
	}
end

function MainView:renderInstallSuccess(theme, localization)
	local pluginInfo = self.props.info
	local name = pluginInfo.name or ""

	local localizationArgs = { '"' .. name .. '"' }


	return {
		ListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Title = Roact.createElement("TextLabel", {
			Text = localization:getText("Progress", "Completed"),
			TextColor3 = theme.TextColor,
			TextSize = 16,
			Font = Enum.Font.SourceSansSemibold,
			BackgroundTransparency = 1.0,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			Size = UDim2.new(1, 0, 0, 18),
			LayoutOrder = 1,
		}),
		Padding = Roact.createElement("Frame", {
			BackgroundTransparency = 1.0,
			Size = UDim2.new(1, 0, 0, 24),
			LayoutOrder = 2,
		}),
		Message = Roact.createElement("TextLabel", {
			Text = localization:getText("Progress", "CompletedMessage", localizationArgs),
			TextColor3 = theme.TextColor,
			TextSize = 16,
			Font = Enum.Font.SourceSans,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			Size = UDim2.new(1, 0, 0, 48),
			BackgroundTransparency = 1.0,
			LayoutOrder = 3
		}),
	}
end

function MainView:renderInstallProgress(theme, localization)
	local targetPluginId = self.props.pluginId
	local pluginInfo = self.props.info
	local installStatus = pluginInfo.installStatus
	local installationMsg = pluginInfo.installationMsg

	local msg
	if installStatus == PluginInstalledStatus.UNKNOWN then
		msg = localization:getText("Main", "InstallingPlugin", { targetPluginId })
	elseif installStatus == PluginInstalledStatus.HTTP_ERROR then
		msg = localization:getText("Progress", "HttpError", { installationMsg })
	elseif installStatus == PluginInstalledStatus.PLUGIN_NOT_OWNED then
		msg = localization:getText("Progress", "NotOwned", { installationMsg })
	elseif installStatus == PluginInstalledStatus.PLUGIN_DETAILS_UNAVAILABLE then
		msg = localization:getText("Progress", "Unavailable", { installationMsg })
	elseif installStatus == PluginInstalledStatus.PLUGIN_NOT_INSTALLED then
		msg = localization:getText("Progress", "NotInstalled", { installationMsg })
	elseif installStatus == PluginInstalledStatus.PLUGIN_AlREADY_INSTALLED then
		msg = localization:getText("Progress", "AlreadyInstalled", { installationMsg })
	end

	-- render a simple error message
	return {
		SimpleLabel = Roact.createElement("TextLabel", {
			Text = msg,
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0,0,0,0),
			BackgroundTransparency = 1.0,
			TextColor3 = theme.TextColor,
			TextSize = 18,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
		}),
	}
end

function MainView:render()
	local pluginInfo = self.props.info

	local theme = self.props.Stylizer
	local localization = self.props.Localization

	local contents
	if not pluginInfo then
		contents = self:renderContentNotReady(theme, localization)
	elseif pluginInfo.installStatus == PluginInstalledStatus.PLUGIN_INSTALLED_SUCCESSFULLY then
		contents = self:renderInstallSuccess(theme, localization)
	else
		contents = self:renderInstallProgress(theme, localization)
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0,0,0,0),
		BackgroundTransparency = 1,
	}, contents)
end

MainView = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(MainView)

return RoactRodux.connect(function(state, props)
	local targetPluginId = props.pluginId
	return {
		info = state.PluginInfo.plugins[targetPluginId],
	}
end)(MainView)
