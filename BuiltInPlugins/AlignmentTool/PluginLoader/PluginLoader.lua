export type Args = {
	pluginName : string,
	translationResourceTable : LocalizationTable,
	fallbackResourceTable : LocalizationTable,
	overrideLocaleId : string?,
	localizationNamespace : string?,
	shouldImmediatelyOpen : (() -> (boolean))?,
}

local StudioService = game:GetService("StudioService")

-- Implementation could look like
-- This wraps a preexisting Signal.lua
-- If you call `:Fire()` before anything's connected, we'll store the args you passed
-- So that upon first connection, we'll flush them out
-- Otherwise works like a normal signal
local FlushOnConnectSignal = {}
FlushOnConnectSignal.__index = FlushOnConnectSignal
function FlushOnConnectSignal.new()
	local self = {
		_signal = Instance.new("BindableEvent"),
		_handlers = {},
		_eventsToFlush = {},
		_connections = {}
	}
	setmetatable(self, FlushOnConnectSignal)
	return self
end

function FlushOnConnectSignal:Fire(...)
	if #self._handlers > 0 then
	-- Our internal signal has connections, so just treat it like normal
		self._signal:Fire(...)
	else
		-- No connections yet, so save for later
		table.insert(self._eventsToFlush, {...})
	end
end

function FlushOnConnectSignal:Connect(callback)
	if #self._handlers == 0 then
		-- This is the first connection
		for _, args in ipairs(self._eventsToFlush) do
			task.spawn(function()
				-- Warning: This has no checking for if the listener is disconnected whilst resuming
				callback(unpack(args))
			end)
		end
		self._eventsToFlush = {}
	end
	local conn = self._signal.Event:Connect(callback)
	table.insert(self._handlers, callback)
	table.insert(self._connections, conn)
	return conn
end

function FlushOnConnectSignal:Destroy()
	self._handlers = {}
	self._eventsToFlush = {}
	for _, conn in ipairs(self._connections) do
		conn:Disconnect()
	end
	self._signal:Destroy()
end

export type FlushOnConnectSignal = typeof(FlushOnConnectSignal.new())

local PluginLoader = {}

PluginLoader.__index = PluginLoader
local FALLBACK_LOCALE = "en-us"

local function getLocale(overrideLocaleId : string?) : string
	if overrideLocaleId ~= nil then
		return overrideLocaleId
	else
		return StudioService["StudioLocaleId"]
	end
end

function PluginLoader.new(args : Args)
	local self = {
		_connectedSignals = {},
		_buttonConnections = {},
		_widgetConnections = {},
		_userHasInteracted = false,
		_destroyed = false,
		_userInteractionSignal = Instance.new("BindableEvent"),
		_locale = nil,
		_mainTranslator = nil,
		_fallbackTranslator = nil,

		_initArgs = args
	}

	setmetatable(self, PluginLoader)

	if self._initArgs.localizationNamespace == nil then
		self._initArgs.localizationNamespace = "Studio"
	end

	self._locale = getLocale(args.overrideLocaleId)
	self._mainTranslator = args.translationResourceTable:GetTranslator(self._locale)
	self._fallbackTranslator = args.fallbackResourceTable:GetTranslator(FALLBACK_LOCALE)

	if args.shouldImmediatelyOpen and args.shouldImmediatelyOpen() then
		self:_onUserInteracted()
	end
	return self
end

function PluginLoader:Destroy()
	for _, value in pairs(self._connectedSignals) do
		value[1]:Disconnect()
	end
	for _, value in pairs(self._buttonConnections) do
		value[1]:Disconnect()
	end
	for _, value in pairs(self._widgetConnections) do
		value[1]:Disconnect()
	end

	self._destroyed = true
	-- If we're currently waiting for interaction, resume that thread but with the `_destroyed = true`
	self:_onUserInteracted()
	self._userInteractionSignal:Destroy()
	self._userInteractionSignal = nil
end

function PluginLoader:getKeyNamespace() : string
	return self._initArgs.localizationNamespace
end

function PluginLoader:getPluginName() : string
	return self._initArgs.pluginName
end

function PluginLoader:getLocalizedText(keyNamespace : string, pluginName : string, scope : string, key : string) : string
	local stringKey = string.format("%s.%s.%s.%s", keyNamespace, pluginName, scope, key)

	local function getTranslation(translator)
		if not translator then
			return false, nil
		end

		local success, result =
			pcall(
				function()
				return translator:FormatByKey(stringKey)
			end
			)
		return success, result
	end

	local success
	local translated
	if self.locale == FALLBACK_LOCALE then
		-- English strings are only written into the development string table,
		-- so don't bother looking up the key in the localization table.
		success, translated = getTranslation(self._fallbackTranslator)
		if success then
			return translated
		end
	else
		-- try to find a translation in our translation file
		success, translated = getTranslation(self._mainTranslator)
		if success then
			return translated
		end

		-- If no translation exists for this locale id, fall back to default (English)
		success, translated = getTranslation(self._fallbackTranslator)
		if success then
			return translated
		end
	end

	if success and not string.find(translated, "LocalizationTable or parent tables do not contain a translation") then
		warn(translated, debug.traceback())
	end

	return stringKey
end

function PluginLoader:_onUserInteracted()
	self._userHasInteracted = true
	self._userInteractionSignal:Fire()
end

function PluginLoader:registerButton(button : PluginToolbarButton) : FlushOnConnectSignal
	local signal = FlushOnConnectSignal.new()
	local con = button.Click:Connect(function()
		self:_onUserInteracted()
		signal:Fire()
	end)
	self._buttonConnections[button] = {con, signal}
	return signal
end

function PluginLoader:registerWidget(widget : PluginGui) : FlushOnConnectSignal
	local signal = FlushOnConnectSignal.new()
	local con = widget:GetPropertyChangedSignal("Enabled"):Connect(function()
		if widget.Enabled then
			self:_onUserInteracted()
		end
		signal:Fire()
	end)
	self._widgetConnections[widget] = {con, signal}
	if widget.Enabled then
		-- If widget is already visible, then we need to show something in it
		-- So treat this as a user interaction
		self:_onUserInteracted()
	end
	return signal
end

function PluginLoader:registerSignal(signal : RBXScriptSignal) : FlushOnConnectSignal
	local retSignal = FlushOnConnectSignal.new()
	local con = signal:Connect(function(...)
		self:_onUserInteracted()
		retSignal:Fire(...)
	end)
	self._connectedSignals[signal] = {con, retSignal}
	return retSignal
end

function PluginLoader:waitForUserInteraction()
	if not self._userHasInteracted then
		self._userInteractionConnection = self._userInteractionSignal.Event:Wait()
	end
	return not self._destroyed
end

export type PluginLoader = typeof(PluginLoader.new({}::Args))

return PluginLoader
