local Main = script.Parent
local PluginLoader = require(Main.PluginLoader)

local FFlagPluginLoaderAddMultipleButtonInfos =
	require(Main.defineLuaFlags).getFFlagPluginLoaderAddMultipleButtonInfos()

local FFlagPluginLoaderRegisterUri = game:DefineFastFlag("PluginLoaderRegisterUri", false)

local FFlagPluginLoaderKeyboardNavigation = game:DefineFastFlag("PluginLoaderKeyboardNavigation", false)
local FFlagPluginLoaderKeyboardNavigationDefault = game:DefineFastFlag("PluginLoaderKeyboardNavigationDefault", false)

export type GetLocalizedTextFunc = ((string, string, string, string) -> string, string, string) -> string

export type ButtonInfo = {
	getName: GetLocalizedTextFunc,
	getDescription: GetLocalizedTextFunc,
	icon: string?,
	text: (string | GetLocalizedTextFunc)?, -- We can instead change this to getText with type GetLocalizedTextFunc, but this requires refactoring other plugins
	clickableWhenViewportHidden: boolean?,
	enabled: boolean?,
}

export type ToggleActionInfo = {
	getText: GetLocalizedTextFunc,
	getTooltip: GetLocalizedTextFunc,
	uri: StudioUri,
	icon: string?,
	enabled: boolean?,
	visible: boolean?,
	shortcuts: boolean?,
	checkable: boolean?,
	checked: boolean?,
	visibleOnRibbon: boolean?,
	-- The following prop designates whether our to-be-registered action already exists, or should be created by PluginLoader
	isPreexistingAction: boolean,
}

export type DockWidgetInfo = {
	dockWidgetPluginGuiInfo: DockWidgetPluginGuiInfo,
	getDockTitle: GetLocalizedTextFunc,
	id: string,
	name: (string | GetLocalizedTextFunc)?,
	zIndexBehavior: Enum.ZIndexBehavior,
	uri: StudioUri?,
	keyboardNavigationEnabled: boolean?,
}

export type Args = {
	plugin: Plugin,
	pluginName: string,
	translationResourceTable: LocalizationTable,
	fallbackResourceTable: LocalizationTable,
	overrideLocaleId: string?,
	localizationNamespace: string?,
	noToolbar: boolean?,
	getToolbarName: GetLocalizedTextFunc?,
	buttonInfo: ButtonInfo?,
	additionalButtonInfos: { ButtonInfo }?,
	actionInfos: { ToggleActionInfo }?,
	dockWidgetInfo: DockWidgetInfo?,
	extraTriggers: { [string]: () -> RBXScriptSignal | { Connect: (any) -> any } }?,
	shouldImmediatelyOpen: (() -> boolean)?,
}

export type PluginLoaderContext = {
	pluginLoader: PluginLoader.PluginLoader,
	plugin: Plugin,
	toolbar: PluginToolbar?,
	mainButton: PluginToolbarButton?,
	mainDockWidget: PluginGui?,
	mainButtonClickedSignal: PluginLoader.FlushOnConnectSignal?,
	additionalButtons: { PluginToolbarButton }?,
	additionalButtonClickedSignals: { PluginLoader.FlushOnConnectSignal }?,
	actionTriggeredSignals: { PluginLoader.FlushOnConnectSignal }?,
	signals: {
		[string]: PluginLoader.FlushOnConnectSignal,
	},
}

local PluginLoaderBuilder = {}

local function createDockWidgetPluginGui(
	plugin: Plugin,
	dockWidgetInfo: DockWidgetInfo,
	title: string,
	name: string?
): DockWidgetPluginGui
	local id = dockWidgetInfo.id
	local newDockWidget = plugin:CreateDockWidgetPluginGui(id, dockWidgetInfo.dockWidgetPluginGuiInfo)
	newDockWidget.Title = title
	if name ~= nil then
		newDockWidget.Name = name
	end
	newDockWidget.ZIndexBehavior = dockWidgetInfo.zIndexBehavior or Enum.ZIndexBehavior.Sibling

	if FFlagPluginLoaderKeyboardNavigation then
		newDockWidget.TabKeyboardNavigation = if dockWidgetInfo.keyboardNavigationEnabled ~= nil
			then dockWidgetInfo.keyboardNavigationEnabled
			else FFlagPluginLoaderKeyboardNavigationDefault
	end

	return newDockWidget
end

function PluginLoaderBuilder.build(args: Args)
	local pluginLoaderArgs: PluginLoader.Args = {
		plugin = args.plugin,
		pluginName = args.pluginName,
		translationResourceTable = args.translationResourceTable,
		fallbackResourceTable = args.fallbackResourceTable,
		overrideLocaleId = args.overrideLocaleId,
		localizationNamespace = args.localizationNamespace,
		shouldImmediatelyOpen = args.shouldImmediatelyOpen,
	}
	local Actions = args.plugin:GetPluginComponent("Actions")

	local pluginLoader = PluginLoader.new(pluginLoaderArgs)

	local getLocalizedText = function(...)
		return pluginLoader:getLocalizedText(...)
	end

	local function createButtonFromInfo(toolbar, info: ButtonInfo): PluginToolbarButton
		local button = toolbar:CreateButton(
			info.getName(getLocalizedText, pluginLoader:getKeyNamespace(), pluginLoader:getPluginName()),
			info.getDescription(getLocalizedText, pluginLoader:getKeyNamespace(), pluginLoader:getPluginName()),
			info.icon,
			if type(info.text) == "function"
				then info.text(getLocalizedText, pluginLoader:getKeyNamespace(), pluginLoader:getPluginName())
				else info.text
		)
		if info.clickableWhenViewportHidden then
			button.ClickableWhenViewportHidden = info.clickableWhenViewportHidden
		end
		if info.enabled ~= nil then
			button.Enabled = info.enabled
		end
		button:SetActive(false)
		return button
	end

	local toolbar
	local mainButton
	local mainButtonClickedSignal
	local actionTriggeredSignals: { PluginLoader.FlushOnConnectSignal } = {}
	local additionalButtons = {}
	local additionalButtonClickedSignals: { PluginLoader.FlushOnConnectSignal } = {}
	if args.noToolbar ~= true then
		local toolbarString = args.getToolbarName
			and args.getToolbarName(getLocalizedText, pluginLoader:getKeyNamespace(), pluginLoader:getPluginName())
		toolbar = args.plugin:CreateToolbar(toolbarString)

		local buttonInfo = args.buttonInfo
		mainButton = createButtonFromInfo(toolbar, buttonInfo)

		mainButtonClickedSignal = pluginLoader:registerButton(mainButton)
		if FFlagPluginLoaderAddMultipleButtonInfos and args.additionalButtonInfos ~= nil then
			for _, currentButtonInfo in args.additionalButtonInfos do
				local additionalButton = createButtonFromInfo(toolbar, currentButtonInfo)
				table.insert(additionalButtons, additionalButton)
				table.insert(additionalButtonClickedSignals, pluginLoader:registerButton(additionalButton))
			end
		end
	end
	if args.actionInfos ~= nil then
		for _, actionInfo in args.actionInfos do
			local actionTriggeredSignal
			if actionInfo.isPreexistingAction then
				-- If action exists already, register existing action signal in PluginLoader
				local ok, result = pcall(function()
					return Actions:BindToActivatedAsync(actionInfo.uri)
				end)
				if not ok then
					error(result)
				end
				actionTriggeredSignal = result
			else
				-- If action does not exist already, create action to register with PluginLoader
				local ok, result = pcall(function()
					return Actions:CreateAsync({
						Uri = actionInfo.uri,
						Enabled = actionInfo.enabled,
						Visible = actionInfo.visible,
						Text = actionInfo.getText(
							getLocalizedText,
							pluginLoader:getKeyNamespace(),
							pluginLoader:getPluginName()
						),
						Tooltip = actionInfo.getTooltip(
							getLocalizedText,
							pluginLoader:getKeyNamespace(),
							pluginLoader:getPluginName()
						),
						Icon = actionInfo.icon,
						Shortcuts = actionInfo.shortcuts,
						Checkable = actionInfo.checkable,
						Checked = actionInfo.checked,
						VisibleOnRibbon = actionInfo.visibleOnRibbon,
					}, true)
				end)
				if not ok then
					error(result)
				end
				actionTriggeredSignal = result[1]
			end
			table.insert(actionTriggeredSignals, pluginLoader:registerSignal(actionTriggeredSignal))
		end
	end

	local mainDockWidget = nil
	local dockWidgetInfo = args.dockWidgetInfo
	if dockWidgetInfo then
		local dockTitleString =
			dockWidgetInfo.getDockTitle(getLocalizedText, pluginLoader:getKeyNamespace(), pluginLoader:getPluginName())

		if dockWidgetInfo.name then
			local dockWidgetName = if type(dockWidgetInfo.name) == "function"
				then dockWidgetInfo.name(getLocalizedText, pluginLoader:getKeyNamespace(), pluginLoader:getPluginName())
				else dockWidgetInfo.name
			mainDockWidget = createDockWidgetPluginGui(args.plugin, dockWidgetInfo, dockTitleString, dockWidgetName)
		else
			mainDockWidget = createDockWidgetPluginGui(args.plugin, dockWidgetInfo, dockTitleString)
		end

		pluginLoader:registerWidget(mainDockWidget)

		if FFlagPluginLoaderRegisterUri then
			if dockWidgetInfo.uri ~= nil then
				task.spawn(function()
					local Widgets = args.plugin:GetPluginComponent("Widgets")
					Widgets:RegisterAsync({
						{
							Uri = dockWidgetInfo.uri,
							Widget = mainDockWidget,
							DEPRECATED_PluginGui = mainDockWidget,
						},
					})
				end)
			end
		end
	end

	local signals = {}

	if args.extraTriggers then
		for name, signalGetter in pairs(args.extraTriggers) do
			local signal = signalGetter()
			signals[name] = pluginLoader:registerSignal(signal)
		end
	end

	local pluginLoaderContext: PluginLoaderContext = {
		pluginLoader = pluginLoader,
		plugin = args.plugin,
		toolbar = toolbar,
		mainButton = mainButton,
		mainDockWidget = mainDockWidget,
		mainButtonClickedSignal = mainButtonClickedSignal,
		additionalButtons = if FFlagPluginLoaderAddMultipleButtonInfos then additionalButtons else nil,
		additionalButtonClickedSignals = if FFlagPluginLoaderAddMultipleButtonInfos
			then additionalButtonClickedSignals
			else nil,
		actionTriggeredSignals = actionTriggeredSignals,
		signals = signals,
	}

	args.plugin.Unloading:Connect(function()
		pluginLoader:Destroy()
		pluginLoader = nil
		pluginLoaderContext.pluginLoader = nil
		if pluginLoaderContext.mainButtonClickedSignal then
			pluginLoaderContext.mainButtonClickedSignal:Destroy()
		end
		if pluginLoaderContext.actionTriggeredSignals then
			for _, signal in pairs(pluginLoaderContext.actionTriggeredSignals) do
				signal:Destroy()
			end
		end
		for _, signal in pairs(pluginLoaderContext.signals) do
			signal:Destroy()
		end
	end)

	return pluginLoaderContext
end

return PluginLoaderBuilder
