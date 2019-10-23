local Plugin = script.Parent.Parent
local Roact = require(Plugin.Libs.Roact)
local UILibrary = require(Plugin.Libs.UILibrary)
local MainView = require(Plugin.Core.Components.MainView)
local Constants = require(Plugin.Core.Util.Constants)

local DevelopmentStringsTable = Plugin.Core.Resources.DevelopmentReferenceTable
local TranslationStringsTable = Plugin.Core.Resources.TranslationReferenceTable
local Localization = UILibrary.Studio.Localization

local Theme = require(Plugin.Core.Util.Theme)
local MainProvider = require(Plugin.Core.Context.MainProvider)
local DockWidget = require(Plugin.Core.Components.PluginWidget.DockWidget)

local App = Roact.PureComponent:extend("App")

function App:init(props)
	self.tokens = {}

	self.localization = Localization.new({
		stringResourceTable = DevelopmentStringsTable,
		translationResourceTable = TranslationStringsTable,
		pluginName = "PluginManagement",
	})

	self.plugin = props.plugin
	self.toolbar = self.plugin:CreateToolbar("luaManagePluginsToolbar")
	self.toolboxButton = self.toolbar:CreateButton("luaManagePluginsButton",
		"Manage plugins downloaded from the internet", "rbxasset://textures/StudioToolbox/ToolboxIcon.png")
														--TODO: replace toolbox icon with plugin management icon

	self.toolboxButton.Click:connect(function()
		self.dockWidget.Enabled = not self.dockWidget.Enabled
	end)

	self.onDockWidgetEnabledChanged = function(rbx)
		self.toolboxButton:SetActive(self.dockWidget.Enabled)
	end

	self.onAncestryChanged = function(rbx, child, parent)
		if not parent and self.props.onPluginWillDestroy then
			self.props.onPluginWillDestroy()
		end
	end

	self.dockWidgetRefFunc = function(ref)
		self.dockWidget = ref
	end

	table.insert(self.tokens, self.localization.localeChanged:connect(function(newLocale)
		-- force trigger a re-render of children
		self:setState({
			localization = tostring(newLocale)
		})
	end))
end

function App:willUnmount()
	for _, token in ipairs(self.tokens) do
		token:disconnect()
	end
end

function App:render()
	local props = self.props

	local plugin = props.plugin
	local store = props.store

	return Roact.createElement(DockWidget, {
		plugin = plugin,

		Title = self.localization:getText("Manage", "WindowTitle"),
		Name = "Plugin Management",
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,

		InitialDockState = Enum.InitialDockState.Float,
		InitialEnabled = false,
		InitialEnabledShouldOverrideRestore = true,
		FloatingXSize = 0,
		FloatingYSize = 0,
		MinWidth = Constants.DOCKWIDGET_MIN_WIDTH,
		MinHeight = Constants.DOCKWIDGET_MIN_HEIGHT,

		Enabled = false,

		[Roact.Ref] = self.dockWidgetRefFunc,
		[Roact.Change.Enabled] = self.onDockWidgetEnabledChanged,
		[Roact.Event.AncestryChanged] = self.onAncestryChanged,
	}, {
		Roact.createElement(MainProvider, {
			theme = Theme.new(),
			focusGui = self.dockWidget,
			plugin = plugin,
			store = store,
			localization = self.localization,
		}, {
			Roact.createElement(MainView, {plugin = plugin}),
		})
	})
end

return App