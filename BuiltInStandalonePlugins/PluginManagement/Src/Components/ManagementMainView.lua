--[[
	The main view inside the window that appears when you click on Manage Plugins.
]]

local StudioService = game:GetService("StudioService")
local GuiService = game:GetService("GuiService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)
local PluginHolder = require(Plugin.Src.Components.PluginHolder)
local GetPluginInfoRequest = require(Plugin.Src.Thunks.GetPluginInfoRequest)
local Constants = require(Plugin.Src.Util.Constants)
local MovedDialog = require(Plugin.Src.Components.MovedDialog)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local PluginAPI2 = require(Plugin.Src.ContextServices.PluginAPI2)
local UpdateAllPlugins = require(Plugin.Src.Thunks.UpdateAllPlugins)
local RefreshPlugins = require(Plugin.Src.Thunks.RefreshPlugins)
local Button = UILibrary.Component.Button
local LoadingIndicator = UILibrary.Component.LoadingIndicator

local FFlagEnablePurchasePluginFromLua2 = game:GetFastFlag("EnablePurchasePluginFromLua2")
local FFlagEnableStudioServiceOpenBrowser = game:GetFastFlag("EnableStudioServiceOpenBrowser")
local FFlagFixFindPluginsMessage = game:DefineFastFlag("FixFindPluginsMessage", false)

local ManagementMainView = Roact.Component:extend("ManagementMainView")

function ManagementMainView:init()
	self.tokens = {}
	self.state = {
		updating = false,
		showingMovedDialog = false,
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
		if not FFlagEnablePurchasePluginFromLua2 then
			-- Open a browser window to the Library tab of the Create page
			local api = self.props.API:get()
			local catalogContext = 2
			local sortType = 0
			local sortAggregation = 3
			local sortCurrency = 0
			local category = 7
			local libraryUrl = api.WWW.Develop.Library(catalogContext, sortType, sortAggregation, sortCurrency, category)
			if FFlagEnableStudioServiceOpenBrowser then
				StudioService:OpenInBrowser_DONOTUSE(libraryUrl)
			else
				GuiService:OpenBrowserWindow(libraryUrl)
			end
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

	local toolboxInstallToken = StudioService.OnPluginInstalledFromToolbox:connect(self.refreshPlugins)
	table.insert(self.tokens, toolboxInstallToken)
end

function ManagementMainView:didMount()
	self.refreshPlugins()
	local changedToken = StudioService:GetPropertyChangedSignal("InstalledPluginData"):Connect(self.refreshPlugins)
	table.insert(self.tokens, changedToken)
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

	local plugin = props.plugin
	local pluginList = props.pluginList
	local updating = state.updating
	local showingMovedDialog = state.showingMovedDialog

	local localization = props.Localization
	local theme = props.Theme:get("Plugin")

	local anyUpdateNeeded = self.anyUpdateNeeded()
	local updateDisabled = not anyUpdateNeeded or updating

	local loading = pluginList == nil
	local showList = not loading and next(pluginList) ~= nil
	local showNoPlugins = not showList and not loading

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
				0, Constants.HEADER_BUTTON_SIZE,
				0, Constants.HEADER_BUTTON_SIZE),
			Position = UDim2.new(
				1, Constants.HEADER_RIGHT_PADDING,
				0, Constants.HEADER_TOP_PADDING),
			AnchorPoint = Vector2.new(1, 0),
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

		-- Remove when removing FFlagFixFindPluginsMessage
		FindPluginsMessage_Old = showNoPlugins and not FFlagFixFindPluginsMessage and Roact.createElement("TextButton", {
			Position = UDim2.new(
				0, Constants.HEADER_LEFT_PADDING,
				0, Constants.HEADER_HEIGHT + Constants.HEADER_MESSAGE_LINE_HEIGHT
			),
			Size = UDim2.new(
				1, -Constants.HEADER_LEFT_PADDING,
				0, Constants.HEADER_MESSAGE_LINE_HEIGHT
			),
			Text = localization:getText("Main", "FindPluginsMessage_Old"),
			TextSize = 17,
			TextColor3 = theme.LinkColor,
			Font = Enum.Font.SourceSans,
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Left.Value,
			TextYAlignment = Enum.TextYAlignment.Top.Value,
			[Roact.Event.Activated] = self.findPlugins,
		}),

		FindPluginsMessage = showNoPlugins and FFlagFixFindPluginsMessage and Roact.createElement("TextLabel", {
			Position = UDim2.new(
				0, Constants.HEADER_LEFT_PADDING,
				0, Constants.HEADER_HEIGHT + Constants.HEADER_MESSAGE_LINE_HEIGHT
			),
			Size = UDim2.new(
				1, -Constants.HEADER_LEFT_PADDING,
				0, Constants.HEADER_MESSAGE_LINE_HEIGHT
			),
			Text = localization:getText("Main", "FindPluginsMessage"),
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
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, Constants.HEADER_HEIGHT + Constants.HEADER_MESSAGE_LINE_HEIGHT),
		}),
	})
end

ContextServices.mapToProps(ManagementMainView, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
	API = PluginAPI2,
})

local function mapStateToProps(state, _)
	return {
		pluginList = state.Management.plugins,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		onPluginInfoRequested = function(apiImpl, assetIds, plugins)
			dispatch(GetPluginInfoRequest(apiImpl, assetIds, plugins))
		end,

		UpdateAllPlugins = function()
			dispatch(UpdateAllPlugins())
		end,

		dispatchRefreshPlugins = function(apiImpl)
			dispatch(RefreshPlugins(apiImpl))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ManagementMainView)