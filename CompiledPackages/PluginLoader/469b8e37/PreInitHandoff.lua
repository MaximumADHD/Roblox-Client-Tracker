--[[
	The pre-init side of the PluginLoader handoff: what a standalone pre-init passes to
	plugin:FinishFullLoading, which PluginLoaderBuilder reads back via GetPreinitPayload and adopts.

	This module requires nothing, and must stay that way as it is intended to be required by pre-init scripts.
	To require this in a preinit script, add it to the default.rbxp under mappedStandaloneDependencies, which
	creates it as a lone ModuleScript beside the pre-init script.
]]

local ENGINE_FEATURE_PREINIT_HANDOFF = "StudioPreinitPayloadHandoff"

-- arbitrary marker key to mark the handoff table to protect against mistakingly passing an unsupported table
local MARKER = "__pluginLoaderHandoff__"

export type OpenReason =
	{
		type: "click" | "restore" | "none",
	}
	| {
		type: "action",
		-- PreInitHandoff.actionKey(uri) of the action that fired. Deliberately not an index: the preinit and
		-- the plugin both derive this from the uri, so neither has to know the order the other built its
		-- actions in -- and getting an order wrong would replay a DIFFERENT action's handler.
		actionKey: string,
	}
	| {
		-- One of additionalButtons was clicked. Separate from "click" so the main button's reason, which
		-- nearly every plugin takes, stays a bare type with nothing to get wrong.
		type: "additionalClick",
		-- Index into the additionalButtons handed off, which the adopt path matches against
		-- additionalButtonInfos. Keeping those two in the same order is the caller's responsibility.
		buttonIndex: number,
	}
	| {
		-- Loaded for a caller-supplied reason that is NOT the user opening the plugin. You are responsible to
		-- handle any custom logic needed in the adopt path.
		type: "wake",
		wakeName: string, -- use to distinguish if your plugin has multiple custom wake signals.
	}

export type Handoff = {
	__pluginLoaderHandoff__: true,
	openReason: OpenReason,
	toolbar: PluginToolbar?,
	mainButton: PluginToolbarButton?,
	additionalButtons: { PluginToolbarButton }?,
	mainDockWidget: PluginGui?,
	-- Raw signals (e.g. Actions:CreateAsync(...)[1]); PluginLoaderBuilder wraps them in FlushOnConnectSignal.
	-- Keyed by actionKey(uri) rather than ordered: PluginLoaderBuilder orders them by the plugin's actionInfos
	-- when it builds the context, so the preinit never has to match that order.
	actionTriggeredSignals: { [string]: RBXScriptSignal }?,
	-- escape hatch for plugin-specific data the standard fields don't cover
	extra: { [string]: any }?,
}

export type PayloadFields = {
	openReason: OpenReason,
	toolbar: PluginToolbar?,
	mainButton: PluginToolbarButton?,
	additionalButtons: { PluginToolbarButton }?,
	mainDockWidget: PluginGui?,
	actionTriggeredSignals: { [string]: RBXScriptSignal }?,
	extra: { [string]: any }?,
}

export type DeferArgs = {
	plugin: Plugin,
	toolbar: PluginToolbar?,
	mainButton: PluginToolbarButton?,
	additionalButtons: { PluginToolbarButton }?,
	mainDockWidget: PluginGui?,
	-- Ribbon actions the preinit bound or created, keyed by actionKey(uri). Each is subscribed as an opening
	-- trigger, and the one that fires is named in the handoff so the adopt path can replay it -- the same
	-- deal the toolbar button gets. A plugin with actionInfos MUST hand these off: on the adopt path
	-- PluginLoaderBuilder does not create actions itself, so anything missing here is simply absent.
	actionTriggeredSignals: { [string]: RBXScriptSignal }?,
	extra: { [string]: any }?,
	-- Called once during setup with a `wake` function, so a plugin can finish loading for triggers of its own
	-- beyond the button, widget and actions.
	subscribeExtraWakes: ((wake: (wakeName: string) -> ()) -> ())?,
}

local PreInitHandoff = {}

function PreInitHandoff.isSupported(): boolean
	return game:GetEngineFeature(ENGINE_FEATURE_PREINIT_HANDOFF)
end

function PreInitHandoff.isHandoff(payload: any): boolean
	return type(payload) == "table" and payload[MARKER] == true
end

--[[
	Stable identity for a ribbon action, derived from its uri.

	Both sides of the handoff call this: the preinit to key the signals it hands off, PluginLoaderBuilder to
	match them against the plugin's actionInfos. That keeps the two from having to agree on an ordering, which
	is a contract neither can check and whose failure mode is firing the wrong action's handler.

	Every StudioUri field is optional, so all five go into the key -- two actions differing only by PluginType
	must not collide.
]]
function PreInitHandoff.actionKey(uri: StudioUri): string
	return table.concat({
		uri.PluginType or "",
		uri.DataModel or "",
		uri.PluginId or "",
		uri.Category or "",
		uri.ItemId or "",
	}, "/")
end

-- The one place the payload's field names are written on the producer side.
function PreInitHandoff.createPayload(fields: PayloadFields): Handoff
	return {
		__pluginLoaderHandoff__ = true,
		openReason = fields.openReason,
		toolbar = fields.toolbar,
		mainButton = fields.mainButton,
		additionalButtons = fields.additionalButtons,
		mainDockWidget = fields.mainDockWidget,
		actionTriggeredSignals = fields.actionTriggeredSignals,
		extra = fields.extra,
	}
end

--[[
	Holds the plugin deferred until the user opens it, then finishes loading with a handoff payload.

	Returns true if loading was deferred, false if it gave up and finished immediately -- in which case the
	caller has nothing left to do.
]]
function PreInitHandoff.deferUntilOpened(args: DeferArgs): boolean
	local plugin = args.plugin
	local mainButton = args.mainButton
	local mainDockWidget = args.mainDockWidget
	local actionTriggeredSignals = args.actionTriggeredSignals

	local additionalButtons = args.additionalButtons
	local hasAction = false
	if actionTriggeredSignals then
		for _ in actionTriggeredSignals do
			hasAction = true
			break
		end
	end
	local hasAdditionalButton = additionalButtons ~= nil and #additionalButtons > 0

	if
		not mainButton
		and not mainDockWidget
		and not args.subscribeExtraWakes
		and not hasAction
		and not hasAdditionalButton
	then
		-- Nothing to subscribe to, so deferring would strand the plugin for the session with no way to wake it.
		warn(
			"PluginLoader: deferUntilOpened was given no button, widget, action or extra wake, so there is "
				.. "nothing that could ever load the plugin. Loading it now. Do not use PreInitHandoff if the "
				.. "plugin has no opening trigger to defer on."
		)
		plugin:FinishFullLoading()
		return false
	end

	local finished = false
	local function finishOnce(openReason: OpenReason)
		if finished then
			return
		end
		finished = true
		plugin:FinishFullLoading(PreInitHandoff.createPayload({
			openReason = openReason,
			toolbar = args.toolbar,
			mainButton = mainButton,
			additionalButtons = additionalButtons,
			mainDockWidget = mainDockWidget,
			actionTriggeredSignals = actionTriggeredSignals,
			extra = args.extra,
		}))
	end

	-- Subscribe BEFORE checking current state so a racing trigger during setup is not lost.
	--
	-- Guarded, even though none of these are expected to fail, because the cost of an unexpected throw is
	-- not a visible error: the pre-init is an ordinary plugin script, and if it throws before calling
	-- FinishFullLoading then nothing ever calls it. There is no watchdog and no create-path fallback in the
	-- engine, so the plugin is simply absent until Studio restarts. The error is reported below rather than
	-- swallowed, so a subscription that really is broken still has to be fixed.
	local subscribed, subscribeError = pcall(function()
		if mainButton then
			mainButton.Click:Connect(function()
				finishOnce({ type = "click" })
			end)
		end
		if mainDockWidget then
			mainDockWidget:GetPropertyChangedSignal("Enabled"):Connect(function()
				if mainDockWidget.Enabled then
					finishOnce({ type = "restore" })
				end
			end)
		end
		if additionalButtons then
			for index, button in additionalButtons do
				button.Click:Connect(function()
					finishOnce({ type = "additionalClick", buttonIndex = index })
				end)
			end
		end
		if actionTriggeredSignals then
			for actionKey, signal in actionTriggeredSignals do
				signal:Connect(function()
					finishOnce({ type = "action", actionKey = actionKey })
				end)
			end
		end
		if args.subscribeExtraWakes then
			args.subscribeExtraWakes(function(wakeName: string)
				finishOnce({ type = "wake", wakeName = wakeName })
			end)
		end
	end)

	if not subscribed then
		-- Finish WITH the payload: the create path would call CreateDockWidgetPluginGui with the id the
		-- preinit already used, and the engine throws on a duplicate PluginGui id. "none" means loaded with
		-- a handoff but no opening trigger to replay.
		warn(
			`PluginLoader: a preinit wake subscription failed, so the plugin is being loaded immediately `
				.. `instead of deferred. This is a bug worth fixing -- lazy loading is lost for the session: `
				.. `{subscribeError}`
		)
		finishOnce({ type = "none" })
		return false
	end

	if mainDockWidget and mainDockWidget.Enabled then
		finishOnce({ type = "restore" })
	end

	return true
end

return PreInitHandoff
