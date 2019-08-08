local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local Images = require(Plugin.Core.Util.Images)

local ExternalServicesWrapper = require(Plugin.Core.Components.ExternalServicesWrapper)
local DockWidget = require(Plugin.Core.Components.PluginWidget.DockWidget)
local Toolbox = require(Plugin.Core.Components.Toolbox)

local ToolboxPlugin = Roact.PureComponent:extend("ToolboxPlugin")

game:DefineFastFlag("ToolboxButtonEnabledWhenScriptOpen", false)

function ToolboxPlugin:init(props)
	self.localization = props.localization

	self.plugin = props.plugin
	if not self.plugin then
		error("ToolboxPlugin component requires plugin to be passed as prop")
	end

	self.state = {
		enabled = true,

		-- Put the plugin gui in the state so that once its loaded, we
		-- trigger a rerender
		pluginGui = nil,

		toolboxTitle = self.localization and self.localization:getLocalizedContent().ToolboxToolbarName
			or "Toolbox",
	}

	self.toolbar = self.plugin:CreateToolbar("luaToolboxToolbar")
	self.toolboxButton = self.toolbar:CreateButton("luaToolboxButton",
		"Insert items from the toolbox", Images.TOOLBOX_ICON)

	if game:GetFastFlag("ToolboxButtonEnabledWhenScriptOpen") then
		self.toolboxButton.ClickableWhenViewportHidden = true
	end
	self.toolboxButton:SetActive(self.state.enabled)

	self.toolboxButton.Click:connect(function()
		self:setState(function(state)
			return {
				enabled = not state.enabled,
			}
		end)
	end)

	self.onDockWidgetEnabledChanged = function(rbx)
		if self.state.enabled == rbx.Enabled then
			return
		end

		self:setState({
			enabled = rbx.Enabled,
		})
	end

	self.onAncestryChanged = function(rbx, child, parent)
		if not parent and self.props.onPluginWillDestroy then
			self.props.onPluginWillDestroy()
		end
	end

	self.dockWidgetRefFunc = function(ref)
		self.dockWidget = ref
	end
end

function ToolboxPlugin:didMount()
	self.onDockWidgetEnabledChanged(self.dockWidget)

	if self.localization then
		self.disconnectLocalizationListener = self.localization:subscribe(function(localizedContent)
			self:setState({
				toolboxTitle = localizedContent.ToolboxToolbarName
			})
		end)
	end

	-- Now we have the dock widget, trigger a rerender
	self:setState({
		pluginGui = self.dockWidget,
	})
end

function ToolboxPlugin:willUnmount()
	if self.disconnectLocalizationListener then
		self.disconnectLocalizationListener()
	end
end

function ToolboxPlugin:didUpdate()
	self.toolboxButton:SetActive(self.state.enabled)
end

function ToolboxPlugin:render()
	local props = self.props
	local state = self.state

	local store = props.store
	local plugin = props.plugin
	local theme = props.theme
	local networkInterface = props.networkInterface
	local localization = props.localization
	local backgrounds = props.backgrounds
	local suggestions = props.suggestions
	local settings = props.settings

	local tryOpenAssetConfig = props.tryOpenAssetConfig

	local enabled = state.enabled
	local pluginGui = state.pluginGui
	local initialWidth = pluginGui and pluginGui.AbsoluteSize.x or Constants.TOOLBOX_MIN_WIDTH
	local toolboxTitle = state.toolboxTitle

	local pluginGuiLoaded = pluginGui ~= nil

	return Roact.createElement(DockWidget, {
		plugin = plugin,

		Title = toolboxTitle,
		Name = "Toolbox",
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,

		InitialDockState = Enum.InitialDockState.Left,
		InitialEnabled = true,
		InitialEnabledShouldOverrideRestore = false,
		FloatingXSize = 0,
		FloatingYSize = 0,
		MinWidth = Constants.TOOLBOX_MIN_WIDTH,
		MinHeight = Constants.TOOLBOX_MIN_HEIGHT,

		Enabled = enabled,

		[Roact.Ref] = self.dockWidgetRefFunc,
		[Roact.Change.Enabled] = self.onDockWidgetEnabledChanged,
		[Roact.Event.AncestryChanged] = self.onAncestryChanged,
	}, {
		Toolbox = pluginGuiLoaded and Roact.createElement(ExternalServicesWrapper, {
			store = store,
			plugin = plugin,
			pluginGui = pluginGui,
			settings = settings,
			theme = theme,
			networkInterface = networkInterface,
			localization = localization,
		}, {
			Roact.createElement(Toolbox, {
				initialWidth = initialWidth,
				backgrounds = backgrounds,
				suggestions = suggestions,
				tryOpenAssetConfig = tryOpenAssetConfig,
				pluginGui = pluginGui,
			})
		})
	})
end

return ToolboxPlugin
