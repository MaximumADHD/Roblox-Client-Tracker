local PluginLoader = require(script.Parent.PluginLoader)

export type GetLocalizatedTextFunction = ((any)->(), string, string)->(string)

export type ButtonInfo = {
	getName : GetLocalizatedTextFunction,
	getDescription : GetLocalizatedTextFunction,
	icon : string?,
	text : string?,
	clickableWhenViewportHidden : boolean?,
	enabled : boolean?
}

export type DockWidgetInfo = {
	dockWidgetPluginGuiInfo : DockWidgetPluginGuiInfo,
	getDockTitle : GetLocalizatedTextFunction,
	name : string?,
	zIndexBehavior : Enum.ZIndexBehavior
}

export type Args = {
	plugin : Plugin,
	pluginName : string,
	translationResourceTable : LocalizationTable,
	fallbackResourceTable : LocalizationTable,
	overrideLocaleId : string?,
	localizationNamespace : string?,
	noToolbar : boolean?,
	getToolbarName : GetLocalizatedTextFunction?,
	buttonInfo : ButtonInfo?,
	dockWidgetInfo : DockWidgetInfo?,
	extraTriggers : { [string] : () -> (RBXScriptSignal | { Connect : (any) -> any }) }?,
	shouldImmediatelyOpen : (() -> (boolean))?,
}

export type PluginLoaderContext = {
	pluginLoader : PluginLoader.PluginLoader,
	plugin : Plugin,
	toolbar : PluginToolbar?,
	mainButton : PluginToolbarButton?,
	mainDockWidget : PluginGui?,
	mainButtonClickedSignal : PluginLoader.FlushOnConnectSignal?,
	signals : {
		[string] : PluginLoader.FlushOnConnectSignal
	}
}

local PluginLoaderBuilder = {}

local function createDockWidgetPluginGui(plugin : Plugin, title : string, dockWidgetInfo : DockWidgetInfo) : DockWidgetPluginGui
	local newDockWidget = plugin:CreateDockWidgetPluginGui(title, dockWidgetInfo.dockWidgetPluginGuiInfo)
	newDockWidget.Title = title
	if dockWidgetInfo.name ~= nil then
		newDockWidget.Name = dockWidgetInfo.name
	end
	newDockWidget.ZIndexBehavior = dockWidgetInfo.zIndexBehavior or Enum.ZIndexBehavior.Sibling
	return newDockWidget
end

function PluginLoaderBuilder.build(args : Args)
	local pluginLoaderArgs : PluginLoader.Args = {
		plugin = args.plugin,
		pluginName = args.pluginName,
		translationResourceTable = args.translationResourceTable,
		fallbackResourceTable = args.fallbackResourceTable,
		overrideLocaleId = args.overrideLocaleId,
		localizationNamespace = args.localizationNamespace,
		shouldImmediatelyOpen = args.shouldImmediatelyOpen
	}

	local pluginLoader = PluginLoader.new(pluginLoaderArgs)

	local getLocalizedText = function(...)
		return pluginLoader:getLocalizedText(...)
	end

	local toolbar
	local mainButton
	local mainButtonClickedSignal
	if args.noToolbar ~= true then
		local toolbarString = args.getToolbarName and args.getToolbarName(getLocalizedText, pluginLoader:getKeyNamespace(), pluginLoader:getPluginName())
		toolbar = args.plugin:CreateToolbar(toolbarString)

		local buttonInfo = args.buttonInfo
		mainButton = toolbar:CreateButton(
			buttonInfo.getName(getLocalizedText, pluginLoader:getKeyNamespace(), pluginLoader:getPluginName()),
			buttonInfo.getDescription(getLocalizedText, pluginLoader:getKeyNamespace(), pluginLoader:getPluginName()),
			buttonInfo.icon,
			buttonInfo.text
		)
		if buttonInfo.clickableWhenViewportHidden then
			mainButton.ClickableWhenViewportHidden = buttonInfo.clickableWhenViewportHidden
		end
		if buttonInfo.enabled ~= nil then
			mainButton.Enabled = buttonInfo.enabled
		end
		mainButton:SetActive(false)

		mainButtonClickedSignal = pluginLoader:registerButton(mainButton)
	end

	local mainDockWidget = nil
	if args.dockWidgetInfo then
		local dockTitleString = args.dockWidgetInfo.getDockTitle(getLocalizedText,
			pluginLoader:getKeyNamespace(), pluginLoader:getPluginName())
		mainDockWidget = createDockWidgetPluginGui(args.plugin, dockTitleString, args.dockWidgetInfo)

		pluginLoader:registerWidget(mainDockWidget)
	end

	local signals = {}

	if args.extraTriggers then
		for name, signalGetter in pairs(args.extraTriggers) do
			local signal = signalGetter()
			signals[name] = pluginLoader:registerSignal(signal)
		end
	end

	local pluginLoaderContext : PluginLoaderContext = {
		pluginLoader = pluginLoader,
		plugin = args.plugin,
		toolbar = toolbar,
		mainButton = mainButton,
		mainDockWidget = mainDockWidget,
		mainButtonClickedSignal = mainButtonClickedSignal,
		signals = signals
	}

	args.plugin.Unloading:Connect(function()
		pluginLoader:Destroy()
		pluginLoader = nil
		pluginLoaderContext.pluginLoader = nil
		if pluginLoaderContext.mainButtonClickedSignal then
			pluginLoaderContext.mainButtonClickedSignal:Destroy()
		end
		for _, signal in pairs(pluginLoaderContext.signals) do
			signal:Destroy()
		end
	end)

	return pluginLoaderContext
end

return PluginLoaderBuilder