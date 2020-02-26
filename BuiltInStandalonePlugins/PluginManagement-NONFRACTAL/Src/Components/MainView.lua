local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Theming = require(Plugin.Src.ContextServices.Theming)
local Localizing = require(Plugin.Packages.UILibrary).Localizing
local PluginInstalledStatus = require(Plugin.Src.Constants.PluginInstalledStatus)

local MainView = Roact.Component:extend("MainView")

local composedRender = function(component, renderFunc)
	return Theming.withTheme(function(theme)
		return Localizing.withLocalization( function(localization)
			local contextProps = {
				theme = theme,
				localization = localization,
			}
			return renderFunc(contextProps)
		end)
	end)
end

function MainView:renderContentNotReady(theme, localization)
	local targetPluginId = self.props.pluginId

	return {
		SimpleLabel = Roact.createElement("TextLabel", {
			Text = localization:getText("Main", "InstallingPlugin", targetPluginId),
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0,0,0,0),
			BackgroundTransparency = 1.0,
			TextColor3 = theme.textColor,
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

	return {
		ListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Title = Roact.createElement("TextLabel", {
			Text = localization:getText("Progress", "Completed"),
			TextColor3 = theme.textColor,
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
			Text = localization:getText("Progress", "CompletedMessage", '"' .. name .. '"'),
			TextColor3 = theme.textColor,
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
		msg = localization:getText("Main", "InstallingPlugin", targetPluginId)
	elseif installStatus == PluginInstalledStatus.HTTP_ERROR then
		msg = localization:getText("Progress", "HttpError", installationMsg)
	elseif installStatus == PluginInstalledStatus.PLUGIN_NOT_OWNED then
		msg = localization:getText("Progress", "NotOwned", installationMsg)
	elseif installStatus == PluginInstalledStatus.PLUGIN_DETAILS_UNAVAILABLE then
		msg = localization:getText("Progress", "Unavailable", installationMsg)
	elseif installStatus == PluginInstalledStatus.PLUGIN_NOT_INSTALLED then
		msg = localization:getText("Progress", "NotInstalled", installationMsg)
	elseif installStatus == PluginInstalledStatus.PLUGIN_AlREADY_INSTALLED then
		msg = localization:getText("Progress", "AlreadyInstalled", installationMsg)
	end

	-- render a simple error message
	return {
		SimpleLabel = Roact.createElement("TextLabel", {
			Text = msg,
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0,0,0,0),
			BackgroundTransparency = 1.0,
			TextColor3 = theme.textColor,
			TextSize = 18,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
		}),
	}
end

function MainView:render()
	return composedRender( self, function(contextProps)
		local pluginInfo = self.props.info
		local localization = contextProps.localization
		local theme = contextProps.theme

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
	end)
end

return RoactRodux.connect(function(state, props)
	local targetPluginId = props.pluginId
	return {
		info = state.PluginInfo.plugins[targetPluginId],
	}
end)(MainView)