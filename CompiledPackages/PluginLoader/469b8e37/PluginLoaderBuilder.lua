local Main = script.Parent
local PluginLoader = require(Main.PluginLoader)

local defineLuaFlags = require(Main.defineLuaFlags)
local PreInitHandoff = require(Main.PreInitHandoff)
local FFlagPluginLoaderAddMultipleButtonInfos = defineLuaFlags.getFFlagPluginLoaderAddMultipleButtonInfos()

local FFlagPluginLoaderRegisterUri = game:DefineFastFlag("PluginLoaderRegisterUri", false)

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
	-- True only when the instances came from a pre-init handoff.
	adoptedFromPreinit: boolean?,
	-- Why the pre-init finished loading, when it did. nil on the create path, where nothing was deferred and
	-- so there is no reason to report.
	--
	-- A plugin needs this because the deferred copy can be woken for something its own datamodel cannot
	-- observe. ControlsEmulator is the case in point: the asset pre-init wakes it when Play starts while an
	-- Android TV device is emulated, because only an asset datamodel can see the emulated device. Reading the
	-- device from the standalone side after waking does not reliably reproduce that, so the plugin has to
	-- branch on `openReason.wakeName` rather than re-derive the condition.
	openReason: PreInitHandoff.OpenReason?,
}

export type PreinitHandoff = PreInitHandoff.Handoff

local PluginLoaderBuilder = {}

local function readPreinitHandoff(plugin: Plugin): PreinitHandoff?
	if not PreInitHandoff.isSupported() then
		return nil
	end

	-- Falling back to the create path is always valid; a throw here would break startup for every plugin.
	local ok, payload = pcall(function()
		return plugin:GetPreinitPayload()
	end)
	if not ok then
		warn(`PluginLoader: could not read the preinit payload, loading normally instead: {payload}`)
		return nil
	end

	if PreInitHandoff.isHandoff(payload) then
		return payload
	end
	return nil
end

-- The adopt path takes its instances from the preinit, so the Args that describe how to CREATE them have
-- nowhere to be applied. Warn rather than silently ignoring them: a plugin that adds a preinit without
-- moving these across would otherwise lose ribbon actions or a URI-registered widget with no clue why.
local function warnAboutUnsupportedArgs(args: Args, handoff: PreinitHandoff)
	if args.actionInfos ~= nil and #args.actionInfos > 0 and handoff.actionTriggeredSignals == nil then
		warn(
			`PluginLoader: {args.pluginName} passed actionInfos but its preinit handed off no `
				.. `actionTriggeredSignals, so those actions were never created. Create them in the preinit and `
				.. `pass them through the handoff.`
		)
	end
	if args.dockWidgetInfo ~= nil and args.dockWidgetInfo.uri ~= nil and FFlagPluginLoaderRegisterUri then
		warn(
			`PluginLoader: {args.pluginName} has a dockWidgetInfo.uri, which the preinit adopt path does not `
				.. `register with the Widgets component.`
		)
	end
	if FFlagPluginLoaderAddMultipleButtonInfos and args.additionalButtonInfos ~= nil then
		local handedOff = if handoff.additionalButtons then #handoff.additionalButtons else 0
		if #args.additionalButtonInfos > handedOff then
			warn(
				`PluginLoader: {args.pluginName} declares {#args.additionalButtonInfos} additionalButtonInfos `
					.. `but its preinit handed off {handedOff} additional buttons.`
			)
		end
	end
end

local function makePluginLoaderArgs(args: Args): PluginLoader.Args
	return {
		plugin = args.plugin,
		pluginName = args.pluginName,
		translationResourceTable = args.translationResourceTable,
		fallbackResourceTable = args.fallbackResourceTable,
		overrideLocaleId = args.overrideLocaleId,
		localizationNamespace = args.localizationNamespace,
		shouldImmediatelyOpen = args.shouldImmediatelyOpen,
	}
end

-- `adopted` keeps the additional-button cleanup below off the create path, which has never done it.
local function connectUnloadCleanup(plugin: Plugin, pluginLoaderContext: PluginLoaderContext, adopted: boolean)
	plugin.Unloading:Connect(function()
		pluginLoaderContext.pluginLoader:Destroy()
		pluginLoaderContext.pluginLoader = nil :: any
		if pluginLoaderContext.mainButtonClickedSignal then
			pluginLoaderContext.mainButtonClickedSignal:Destroy()
		end
		-- Adopt path only. The create path leaks these today, which is worth fixing -- but not here, where it
		-- would be a behaviour change for every plugin with the preinit feature off.
		if
			adopted
			and FFlagPluginLoaderAddMultipleButtonInfos
			and pluginLoaderContext.additionalButtonClickedSignals
		then
			for _, signal in pairs(pluginLoaderContext.additionalButtonClickedSignals) do
				signal:Destroy()
			end
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
end

-- Shared by both paths so they cannot disagree. The preinit cannot set this: it comes from Args.
local function resolveTabKeyboardNavigation(dockWidgetInfo: DockWidgetInfo): boolean
	if dockWidgetInfo.keyboardNavigationEnabled ~= nil then
		return dockWidgetInfo.keyboardNavigationEnabled
	end
	return FFlagPluginLoaderKeyboardNavigationDefault
end

local function adoptFromHandoff(args: Args, handoff: PreinitHandoff): PluginLoaderContext
	local pluginLoader = PluginLoader.new(makePluginLoaderArgs(args))

	warnAboutUnsupportedArgs(args, handoff)

	local mainButtonClickedSignal
	if handoff.mainButton then
		mainButtonClickedSignal = pluginLoader:registerButton(handoff.mainButton)
	end

	local additionalButtonClickedSignals: { PluginLoader.FlushOnConnectSignal } = {}
	if handoff.additionalButtons then
		for _, button in handoff.additionalButtons do
			table.insert(additionalButtonClickedSignals, pluginLoader:registerButton(button))
		end
	end

	-- Ordered by actionInfos so consumers index context.actionTriggeredSignals exactly as they do on the
	-- create path, while the handoff itself stays keyed -- the preinit builds its actions in whatever order
	-- it likes. Keyed lookup is also what the "action" replay below needs.
	local actionTriggeredSignals: { PluginLoader.FlushOnConnectSignal } = {}
	local actionSignalsByKey: { [string]: PluginLoader.FlushOnConnectSignal } = {}
	if handoff.actionTriggeredSignals then
		if args.actionInfos then
			for _, actionInfo in args.actionInfos do
				local actionKey = PreInitHandoff.actionKey(actionInfo.uri)
				local handedOff = handoff.actionTriggeredSignals[actionKey]
				if handedOff then
					local signal = pluginLoader:registerSignal(handedOff)
					table.insert(actionTriggeredSignals, signal)
					actionSignalsByKey[actionKey] = signal
				else
					warn(
						`PluginLoader: {args.pluginName} declares an action its preinit did not hand off `
							.. `({actionKey}), so that action does not work. Bind or create it in the preinit and `
							.. `pass it in actionTriggeredSignals.`
					)
				end
			end
		else
			warn(
				`PluginLoader: {args.pluginName}'s preinit handed off action signals but the plugin declares no `
					.. `actionInfos, so there is nothing to match them against and they were dropped.`
			)
		end
	end

	if handoff.mainDockWidget then
		-- The preinit does not set this one -- see resolveTabKeyboardNavigation. Without it an adopted widget
		-- keeps the engine default of false and silently loses tab navigation relative to the create path the
		-- moment FFlagPluginLoaderKeyboardNavigationDefault is enabled.
		if args.dockWidgetInfo then
			handoff.mainDockWidget.TabKeyboardNavigation = resolveTabKeyboardNavigation(args.dockWidgetInfo)
		end
		pluginLoader:registerWidget(handoff.mainDockWidget)
	end

	-- the preinit finish-loading trigger is precisely a user interaction.
	pluginLoader:markUserInteracted()

	-- Replay the opening trigger. The plugin hasn't connected yet, so FlushOnConnectSignal buffers it.
	local openReason = handoff.openReason
	if openReason.type == "click" and mainButtonClickedSignal then
		mainButtonClickedSignal:Fire()
	elseif openReason.type == "additionalClick" then
		local signal = additionalButtonClickedSignals[openReason.buttonIndex]
		if signal then
			signal:Fire()
		end
	elseif openReason.type == "action" then
		local signal = actionSignalsByKey[openReason.actionKey]
		if signal then
			signal:Fire()
		end
	end

	-- Register extraTriggers exactly as the create path does, so consumers find them on the context. They no
	-- longer gate loading (we are loading), but a plugin that reads context.signals must not get an empty
	-- table just because it was adopted.
	local signals = {}
	if args.extraTriggers then
		for name, signalGetter in pairs(args.extraTriggers) do
			signals[name] = pluginLoader:registerSignal(signalGetter())
		end
	end

	local pluginLoaderContext: PluginLoaderContext = {
		pluginLoader = pluginLoader,
		plugin = args.plugin,
		toolbar = handoff.toolbar,
		mainButton = handoff.mainButton,
		mainDockWidget = handoff.mainDockWidget,
		mainButtonClickedSignal = mainButtonClickedSignal,
		additionalButtons = if FFlagPluginLoaderAddMultipleButtonInfos then handoff.additionalButtons else nil,
		additionalButtonClickedSignals = if FFlagPluginLoaderAddMultipleButtonInfos
			then additionalButtonClickedSignals
			else nil,
		actionTriggeredSignals = actionTriggeredSignals,
		signals = signals,
		adoptedFromPreinit = true,
		openReason = openReason,
	}

	connectUnloadCleanup(args.plugin, pluginLoaderContext, true)

	return pluginLoaderContext
end

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

	newDockWidget.TabKeyboardNavigation = resolveTabKeyboardNavigation(dockWidgetInfo)

	return newDockWidget
end

function PluginLoaderBuilder.build(args: Args)
	-- if a standalone preinit deferred loading, adopt what it created instead of creating our own
	local handoff = readPreinitHandoff(args.plugin)
	if handoff then
		return adoptFromHandoff(args, handoff)
	end

	local Actions = args.plugin:GetPluginComponent("Actions")

	local pluginLoader = PluginLoader.new(makePluginLoaderArgs(args))

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

	connectUnloadCleanup(args.plugin, pluginLoaderContext, false)

	return pluginLoaderContext
end

return PluginLoaderBuilder
