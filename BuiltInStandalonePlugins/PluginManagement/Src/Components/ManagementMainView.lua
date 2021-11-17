--[[
	The main view inside the window that appears when you click on Manage Plugins.
]]
local Plugin = script.Parent.Parent.Parent

local FFlagPluginManagementFixLoadingState = game:GetFastFlag("PluginManagementFixLoadingState")

local MemStorageService = game:GetService("MemStorageService")
local StudioService = game:GetService("StudioService")
local MarketplaceService = game:GetService("MarketplaceService")

local PermissionsService = game:GetService("PermissionsService")
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local PluginHolder = require(Plugin.Src.Components.PluginHolder)
local GetAllPluginPermissions = require(Plugin.Src.Thunks.GetAllPluginPermissions)
local Constants = require(Plugin.Src.Util.Constants)
local MovedDialog = require(Plugin.Src.Components.MovedDialog) -- TODO STM-823: Delete
local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext
local UI = require(Plugin.Packages.Framework).UI
local Util = require(Plugin.Packages.Framework).Util
local PluginAPI2 = require(Plugin.Src.ContextServices.PluginAPI2)
local UpdateAllPlugins = require(Plugin.Src.Thunks.UpdateAllPlugins)
local RefreshPlugins = require(Plugin.Src.Thunks.RefreshPlugins)
local FrameworkButton = UI.Button
local StyleModifier = Util.StyleModifier
local LoadingIndicator = UI.LoadingIndicator

local SharedPluginConstants = require(Plugin.SharedPluginConstants)

local ManagementMainView = Roact.Component:extend("ManagementMainView")

function ManagementMainView:init()
	self.tokens = {}
	self.state = {
		updating = false,
		showingMovedDialog = false, -- TODO STM-823: Delete
	}

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
		local apiImpl = self.props.API:get()
		local refreshPluginCallback = self.props.dispatchRefreshPlugins
		refreshPluginCallback(apiImpl)

		self.getAllPluginPermissions()
	end

	self.getAllPluginPermissions = function()
		local apiImpl = self.props.API:get()
		self.props.getAllPluginPermissions(apiImpl)
	end

	self.updateAllPlugins = function()
		self:setState({
			updating = true,
		})
		local props = self.props
		props.Analytics:report("TryUpdateAllPlugins")
		props.UpdateAllPlugins(props.Analytics)
		wait()
		self.refreshPlugins()
		self:setState({
			updating = false,
		})
	end

	self.findPlugins = function()
		if self:isPlaceOpen() then
			MemStorageService:Fire(SharedPluginConstants.SHOW_TOOLBOX_PLUGINS_EVENT)
		else
			warn("findPlugins not supported when no place is open")
		end
	end

	-- TODO STM-823: Delete
	self.onCloseMoveDialog = function()
		self:setState({
			showingMovedDialog = false,
		})
	end

	local toolboxInstallToken = StudioService.OnPluginInstalledFromToolbox:connect(self.refreshPlugins)
	table.insert(self.tokens, toolboxInstallToken)
end

function ManagementMainView:isPlaceOpen()
	return self.props.Plugin:get().MultipleDocumentInterfaceInstance.FocusedDataModelSession
end

function ManagementMainView:didMount()
	self.refreshPlugins()
	if not FFlagPluginManagementFixLoadingState then
		local changedToken = StudioService:GetPropertyChangedSignal("InstalledPluginData"):Connect(self.refreshPlugins)
		table.insert(self.tokens, changedToken)
	end
end

function ManagementMainView:willUnmount()
	for _, token in ipairs(self.tokens) do
		token:Disconnect()
	end
	self.tokens = {}
end

function ManagementMainView:render()
	local props = self.props
	local state = self.state

	local plugin = props.Plugin:get()

	local pluginList = props.pluginList
	local updating = state.updating

	local localization = props.Localization
	local theme = self.props.Stylizer

	local anyUpdateNeeded = self.anyUpdateNeeded()
	local updateDisabled = not anyUpdateNeeded or updating

	local loading = pluginList == nil
	local showList = not loading and next(pluginList) ~= nil
	local showNoPlugins = not showList and not loading

	local findPluginsMessageText
	local showFindPluginsButton = self:isPlaceOpen()
	if showFindPluginsButton then
		findPluginsMessageText = localization:getText("Main", "FindPluginsWithButtonMessage")
	else
		findPluginsMessageText = localization:getText("Main", "FindPluginsMessage")
	end

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

		UpdateAllButton = anyUpdateNeeded and Roact.createElement(FrameworkButton, {
			Size = UDim2.new(0,Constants.HEADER_UPDATE_WIDTH,0,Constants.HEADER_BUTTON_SIZE),
			Position = UDim2.new(1, Constants.HEADER_RIGHT_PADDING * 2
				- Constants.HEADER_UPDATE_WIDTH - Constants.HEADER_BUTTON_SIZE, 0, Constants.HEADER_TOP_PADDING),
			Style = "Round",
			StyleModifier = updateDisabled and StyleModifier.Disabled or nil,
			OnClick = not updateDisabled and self.updateAllPlugins or function() end,
		},{
			Label = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Text = localization:getText("Main", "UpdateAllButton"),
				TextColor3 = updateDisabled and theme.DisabledColor or theme.TextColor,
				Font = Enum.Font.SourceSans,
				TextSize = 18,
				BackgroundTransparency = 1,
			}),
		}),

		FindPluginsButton = showFindPluginsButton and Roact.createElement(FrameworkButton, {
			Size = UDim2.new(0, Constants.HEADER_BUTTON_SIZE, 0, Constants.HEADER_BUTTON_SIZE),
			Position = UDim2.new(1, Constants.HEADER_RIGHT_PADDING, 0, Constants.HEADER_TOP_PADDING),
			AnchorPoint = Vector2.new(1, 0),
			Style = "RoundPrimary",
			BackgroundTransparency = 1,
			OnClick = self.findPlugins,
		}, {
			Dots = Roact.createElement("TextLabel", {
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
				Text = "+",
				TextColor3 = theme.White,
				Font = Enum.Font.SourceSansBold,
				TextSize = 24,
				BackgroundTransparency = 1,
			}),
		}) or nil,

		NoPluginsMessage = showNoPlugins and Roact.createElement("TextLabel", {
			Position = UDim2.new(
				0, Constants.HEADER_LEFT_PADDING,
				0, Constants.HEADER_HEIGHT
			),
			Size = UDim2.new(
				1, -Constants.HEADER_LEFT_PADDING,
				0, Constants.HEADER_MESSAGE_LINE_HEIGHT
			),
			Text = localization:getText("Main", "NoPluginsMessage"),
			TextSize = 17,
			TextColor3 = theme.TextColor,
			Font = Enum.Font.SourceSans,
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Left.Value,
			TextYAlignment = Enum.TextYAlignment.Top.Value,
		}),

		FindPluginsMessage = showNoPlugins and Roact.createElement("TextLabel", {
			Position = UDim2.new(
				0, Constants.HEADER_LEFT_PADDING,
				0, Constants.HEADER_HEIGHT + Constants.HEADER_MESSAGE_LINE_HEIGHT
			),
			Size = UDim2.new(
				1, -Constants.HEADER_LEFT_PADDING,
				0, Constants.HEADER_MESSAGE_LINE_HEIGHT
			),
			Text = findPluginsMessageText,
			TextSize = 17,
			TextColor3 = theme.TextColor,
			Font = Enum.Font.SourceSans,
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Left.Value,
			TextYAlignment = Enum.TextYAlignment.Top.Value,
		}),

		ScrollablePluginList = showList and Roact.createElement(PluginHolder, {
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

		Indicator = loading and Roact.createElement(LoadingIndicator, {
			AnchorPoint = FFlagPluginManagementFixLoadingState and Vector2.new(0.5, 0.5) or Vector2.new(0.5, 0),
			Position = FFlagPluginManagementFixLoadingState and UDim2.fromScale(0.5, 0.5) or UDim2.new(0.5, 0, 0, Constants.HEADER_HEIGHT + Constants.HEADER_MESSAGE_LINE_HEIGHT),
			Size = UDim2.new(0, 92, 0, 24),
		}),
	})
end


ManagementMainView = withContext({
	Plugin = ContextServices.Plugin,
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
	API = PluginAPI2,
	Analytics = ContextServices.Analytics,
})(ManagementMainView)


local function mapStateToProps(state, _)
	return {
		pluginList = state.Management.plugins,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		UpdateAllPlugins = function(analytics)
			dispatch(UpdateAllPlugins(analytics))
		end,

		dispatchRefreshPlugins = function(apiImpl)
			dispatch(RefreshPlugins(apiImpl, MarketplaceService))
		end,

		getAllPluginPermissions = function(apiImpl)
			dispatch(GetAllPluginPermissions(PermissionsService, apiImpl))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ManagementMainView)
