local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Libs.Roact)
local RoactRodux = require(Plugin.Libs.RoactRodux)
local UILibrary = require(Plugin.Libs.UILibrary)
local PluginHolder = require(Plugin.Core.Components.PluginHolder)
local GetPluginInfoRequest = require(Plugin.Core.Requests.GetPluginInfoRequest)
local Constants = require(Plugin.Core.Util.Constants)
local Networking = require(Plugin.Libs.Http.Networking)
local LoadingDialog = require(Plugin.Core.Components.LoadingDialog)
local Button = UILibrary.Component.Button
local Localizing = UILibrary.Localizing
local withLocalization = Localizing.withLocalization
local Theme = require(Plugin.Core.Context.Theme)
local withTheme = Theme.withTheme
local UpdateAllPlugins = require(Plugin.Core.Thunks.UpdateAllPlugins)
local RefreshPlugins = require(Plugin.Core.Thunks.RefreshPlugins)
local StudioService = game:GetService("StudioService")

local MainView = Roact.Component:extend("MainView")

function MainView:init(props)
	self.state = {
		updating = false,
	}

	self.network = Networking.new()

	self.anyUpdateNeeded = function()
		if self.props.pluginList then
			for _, data in pairs(self.props.pluginList) do
				if not StudioService:IsPluginUpToDate(data.assetId, data.latestVersion) then
					return true
				end
			end
		end
		return false
	end

	self.refreshPlugins = function()
		local props = self.props
		props.RefreshPlugins(self.network)
	end

	self.updateAllPlugins = function()
		self:setState({
			updating = true,
		})
		local props = self.props
		props.UpdateAllPlugins()
		wait()
		self.refreshPlugins()
		self:setState({
			updating = false,
		})
	end

	StudioService.OnPluginInstalledFromToolbox:connect(self.refreshPlugins)
end

function MainView:didMount()
	self.refreshPlugins()
	self.changed = StudioService:GetPropertyChangedSignal("InstalledPluginData"):Connect(function()
		self.refreshPlugins()
	end)
end

function MainView:willUnmount()
	if self.changed then
		self.changed:Disconnect()
	end
end

local function composedRender(callback)
	return withTheme(function(theme)
		return withLocalization(function(localization)
			return callback(theme, localization)
		end)
	end)
end

function MainView:render()
	return composedRender(function(theme, localization)
		local props = self.props
		local state = self.state

		local plugin = props.plugin
		local pluginList = props.pluginList
		local updating = state.updating

		local anyUpdateNeeded = self.anyUpdateNeeded()

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = theme.BackgroundColor,
		}, {
			PluginLabel = Roact.createElement("TextLabel", {
				Size = UDim2.new(0,Constants.HEADER_TITLE_WIDTH,0,Constants.HEADER_BUTTON_SIZE),
				Position = UDim2.new(0,Constants.HEADER_LEFT_PADDING,0,Constants.HEADER_TOP_PADDING),
				Text = localization:getText("Main", "Title"),
				TextSize = 24,
				TextColor3 = theme.TextColor,
				Font = Enum.Font.SourceSansSemibold,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left.Value,
			}),

			UpdateAllButton = anyUpdateNeeded and not updating and Roact.createElement(Button, {
				Size = UDim2.new(0,Constants.HEADER_UPDATE_WIDTH,0,Constants.HEADER_BUTTON_SIZE),
				Position = UDim2.new(1, Constants.HEADER_RIGHT_PADDING
					- Constants.HEADER_UPDATE_WIDTH,0,Constants.HEADER_TOP_PADDING),
				Style = "Default",
				OnClick = self.updateAllPlugins,

				RenderContents = function()
					return {
						Label = Roact.createElement("TextLabel", {
							Size = UDim2.new(1, 0, 1, 0),
							Text = localization:getText("Main", "UpdateAllButton"),
							TextColor3 = theme.TextColor,
							Font = Enum.Font.SourceSans,
							TextSize = 18,
							BackgroundTransparency = 1,
						})
					}
				end,
			}),

			UpdatingDialog = updating and Roact.createElement(LoadingDialog, {
				plugin = plugin,
			}),

			ScrollablePluginList = Roact.createElement(PluginHolder, {
				--holds a scrollable list of all plugins installed or in the inventory
				--TODO: maybe only hold 30 or so at a time, consider the case
				-- where some crazy person has 900 plugins installed
				position = UDim2.new(0,0,1,0),
				size = UDim2.new(1,0,1,-1*Constants.HEADER_HEIGHT),
				anchorPoint = Vector2.new(0,1),

				plugin = plugin,
				pluginList = pluginList,
				onPluginUninstalled = self.refreshPlugins,
			}),
		})
	end)
end

local function mapStateToProps(state, props)
	return {
		pluginList = state.plugins or {}
	}
end

local function mapDispatchToProps(dispatch)
	return {
		onPluginInfoRequested = function(network, assetIds, plugins)
			dispatch(GetPluginInfoRequest(network, assetIds, plugins))
		end,

		UpdateAllPlugins = function()
			dispatch(UpdateAllPlugins())
		end,

		RefreshPlugins = function(network)
			dispatch(RefreshPlugins(network))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(MainView)