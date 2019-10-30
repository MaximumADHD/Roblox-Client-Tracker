local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Libs.Roact)
local RoactRodux = require(Plugin.Libs.RoactRodux)
local UILibrary = require(Plugin.Libs.UILibrary)
local PluginHolder = require(Plugin.Core.Components.PluginHolder)
local GetPluginInfoRequest = require(Plugin.Core.Requests.GetPluginInfoRequest)
local Constants = require(Plugin.Core.Util.Constants)
local Urls = require(Plugin.Core.Util.Urls)
local Networking = require(Plugin.Libs.Http.Networking)
local LoadingDialog = require(Plugin.Core.Components.LoadingDialog)
local MovedDialog = require(Plugin.Core.Components.MovedDialog)
local Button = UILibrary.Component.Button

local ContextServices = require(Plugin.Libs.Framework.ContextServices)

local UpdateAllPlugins = require(Plugin.Core.Thunks.UpdateAllPlugins)
local RefreshPlugins = require(Plugin.Core.Thunks.RefreshPlugins)
local StudioService = game:GetService("StudioService")
local GuiService = game:GetService("GuiService")

local FFlagPluginAccessAndInstallationInStudio = game:GetFastFlag("PluginAccessAndInstallationInStudio")

local MainView = Roact.Component:extend("MainView")

function MainView:init(props)
	self.state = {
		updating = false,
		showingMovedDialog = false,
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

	self.findPlugins = function()
		if not FFlagPluginAccessAndInstallationInStudio then
			GuiService:OpenBrowserWindow(Urls.constructFindPluginLibraryUrl())
			return
		end

		-- Show this has moved to toolbox dialog
		self:setState({
			showingMovedDialog = true,
		})
	end

	self.onCloseMoveDialog = function()
		self:setState({
			showingMovedDialog = false,
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

function MainView:render()
	local props = self.props
	local state = self.state

	local plugin = props.plugin
	local pluginList = props.pluginList
	local updating = state.updating
	local showingMovedDialog = state.showingMovedDialog

	local localization = props.Localization
	local theme = props.Theme:get("Plugin")

	local anyUpdateNeeded = self.anyUpdateNeeded()
	local updateDisabled = not anyUpdateNeeded or updating

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

		UpdateAllButton = anyUpdateNeeded and Roact.createElement(Button, {
			Size = UDim2.new(0,Constants.HEADER_UPDATE_WIDTH,0,Constants.HEADER_BUTTON_SIZE),
			Position = UDim2.new(1, Constants.HEADER_RIGHT_PADDING * 2
				- Constants.HEADER_UPDATE_WIDTH - Constants.HEADER_BUTTON_SIZE,0,Constants.HEADER_TOP_PADDING),
			Style = updateDisabled and "Disabled" or "Default",
			OnClick = not updateDisabled and self.updateAllPlugins or nil,
			RenderContents = function()
				return {
					Label = Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 1, 0),
						Text = localization:getText("Main", "UpdateAllButton"),
						TextColor3 = updateDisabled and theme.DisabledColor or theme.TextColor,
						Font = Enum.Font.SourceSans,
						TextSize = 18,
						BackgroundTransparency = 1,
					})
				}
			end,
		}),

		FindPluginsButton = Roact.createElement(Button, {
			Size = UDim2.new(
				0, Constants.FIND_PLUGINS_BUTTON_SIZE,
				0, Constants.FIND_PLUGINS_BUTTON_SIZE),
			Position = UDim2.new(
				1, Constants.HEADER_RIGHT_PADDING - Constants.FIND_PLUGINS_BUTTON_SIZE,
				0, Constants.HEADER_TOP_PADDING),
			Style = "Primary",
			BackgroundTransparency = 1,
			OnClick = self.findPlugins,

			RenderContents = function()
				return {
					Dots = Roact.createElement("TextLabel", {
						Position = UDim2.new(0, 0, 0, 0),
						Size = UDim2.new(1, 0, 1, 0),

						Text = "+",
						TextColor3 = theme.White,
						Font = Enum.Font.SourceSansBold,
						TextSize = 24,
						BackgroundTransparency = 1,
					})
				}
			end,
		}),

		MovedToToolboxDialog = showingMovedDialog and Roact.createElement(MovedDialog, {
			OnClose = self.onCloseMoveDialog
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
end

ContextServices.mapToProps(MainView, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})

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