--[[
	This class serves as a compatibility layer for all WebView apis. It
	was designed to solve two problems:

	1. Abstract away platform differences in WebView-related api
	availability (WebViewProtocol vs BrowserService) to ease the
	engineering burden on app engineers using WebViews.

	2. Provide a target interface for the MessageBus/Voltron-based
	WebViewProtocol to incrementally build toward so we can eventually
	deprecate use of BrowserService (and GuiService) for WebViews entirely.
]]
local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")

local DefaultBrowserService = game:GetService("BrowserService")

local MessageBus = require(CorePackages.UniversalApp.MessageBus)
local t = require(CorePackages.Packages.t)

local AppCommonLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local AsyncQueue = AppCommonLib.AsyncQueue

local GetFFlagEnableUnifiedWebViews = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableUnifiedWebViews

local Types = require(script.Parent.WebViewProtocolTypes)

type MessageBus = MessageBus.MessageBus
type Subscriber = MessageBus.Subscriber
type MessageDescriptor = MessageBus.MessageDescriptor
type Table = MessageBus.Table

type WebViewProtocolInterface<Impl> = Types.WebViewProtocolInterface<Impl>

export type WebViewProtocol = Types.WebViewProtocol
export type Params = Types.Params
export type OptionalParams = Types.OptionalParams

type WebViewProtocolImpl = WebViewProtocolInterface<WebViewProtocolImpl> & {
	OPEN_WINDOW_DESCRIPTOR: MessageDescriptor,
	MUTATE_WINDOW_DESCRIPTOR: MessageDescriptor,
	CLOSE_WINDOW_DESCRIPTOR: MessageDescriptor,
	HANDLE_WINDOW_CLOSE_DESCRIPTOR: MessageDescriptor,

	shouldForceVisibleOnOpen: () -> boolean,
	shouldRenameIsVisibleParam: () -> boolean,
	shouldForceBrowserServiceOnMutate: () -> boolean,

	messageBus: MessageBus,
	browserService: BrowserService,

	javaScriptConnection: RBXScriptConnection?,

	subscriber: Subscriber,
	queue: AppCommonLib.AsyncQueueType,

	new: (MessageBus?, BrowserService?) -> WebViewProtocol,
	default: WebViewProtocol,
}

game:DefineFastFlag("EnableWebViewProtocolForTestingOnly", false)

local function createConfigCommand(params: OptionalParams)
	return HttpService:JSONEncode({
		command = "config",
		visible = params.isVisible == true,
	})
end

local NAME = "WebView"

local WebViewProtocol: WebViewProtocolImpl = {
	OPEN_WINDOW_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "openWindow"),
		validateParams = t.strictInterface({
			url = t.string,
			title = t.optional(t.string),
			isVisible = t.optional(t.boolean),
			searchParams = t.optional(t.strictInterface({
				searchType = t.string,
			})),
			transitionAnimation = t.optional(t.string),
			windowType = if GetFFlagEnableUnifiedWebViews()
				then t.optional(t.string)
				else t.string,

			-- TODO: Remove with shouldRenameIsVisibleParam
			visible = if GetFFlagEnableUnifiedWebViews()
				then t.optional(t.boolean)
				else nil,
		}),
	},
	MUTATE_WINDOW_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "mutateWindow"),
		validateParams = t.strictInterface({
			url = t.optional(t.string),
			title = t.optional(t.string),
			isVisible = t.optional(t.boolean),
			searchParams = t.optional(t.strictInterface({
				searchType = t.string,
			})),
			transitionAnimation = t.optional(t.string),
			windowType = t.optional(t.string),
		}),
	},
	CLOSE_WINDOW_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "closeWindow"),
		validateParams = t.table,
	},
	HANDLE_WINDOW_CLOSE_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "handleWindowClose"),
		validateParams = t.table,
	},
} :: WebViewProtocolImpl

(WebViewProtocol :: any).__index = WebViewProtocol

function WebViewProtocol.new(
	maybeMessageBus: MessageBus?,
	maybeBrowserService: BrowserService?
): WebViewProtocol
	local messageBus = maybeMessageBus or MessageBus
	local browserService = maybeBrowserService or DefaultBrowserService

	local self: WebViewProtocolImpl = {
		messageBus = messageBus,
		browserService = if GetFFlagEnableUnifiedWebViews()
			then browserService
			else nil,
		subscriber = messageBus.Subscriber.new(),
		queue = if GetFFlagEnableUnifiedWebViews()
			then AsyncQueue.new()
			else nil,
	} :: WebViewProtocolImpl
	setmetatable(self, WebViewProtocol)
	return self :: WebViewProtocol
end

function WebViewProtocol:openWindow(params: Params): ()
	assert(self.isEnabled())

	if GetFFlagEnableUnifiedWebViews() then
		if self.shouldForceVisibleOnOpen() then
			-- FIXME: NFDN-12543 and NFDN-12605
			params.isVisible = true
		end

		if self.shouldRenameIsVisibleParam() then
			-- FIXME: NFDN-12604
			(params :: any).visible = params.isVisible
		end
	end

	self.messageBus.publish(self.OPEN_WINDOW_DESCRIPTOR, params)
end

function WebViewProtocol:mutateWindow(params: OptionalParams): ()
	assert(self.isEnabled())

	local shouldUseWebViewProtocol = true

	if GetFFlagEnableUnifiedWebViews() then
		-- FIXME: NFDN-12542
		if self.shouldForceBrowserServiceOnMutate() then
			shouldUseWebViewProtocol = false
		end
	end

	if shouldUseWebViewProtocol then
		self.messageBus.publish(self.MUTATE_WINDOW_DESCRIPTOR, params)
	else
		self.browserService:SendCommand(createConfigCommand(params))
	end
end

function WebViewProtocol:closeWindow(): ()
	assert(self.isEnabled())
	self.messageBus.publish(self.CLOSE_WINDOW_DESCRIPTOR, {})
end

function WebViewProtocol:listenForWindowClose(listener: () -> ()): ()
	assert(self.isEnabled())
	self.subscriber:subscribe(self.HANDLE_WINDOW_CLOSE_DESCRIPTOR, function()
		listener()
	end, false)
end

function WebViewProtocol:stopListeningForWindowClose(): ()
	assert(self.isEnabled())
	self.subscriber:unsubscribe(self.HANDLE_WINDOW_CLOSE_DESCRIPTOR)
end

function WebViewProtocol:listenForJavaScript(listener: (string) -> ()): ()
	self.javaScriptConnection = self.browserService.JavaScriptCallback:Connect(listener)
end

function WebViewProtocol:stopListeningForJavaScript(): ()
	if self.javaScriptConnection ~= nil then
		self.javaScriptConnection:Disconnect()
		self.javaScriptConnection = nil
	end
end

function WebViewProtocol:stopListening(): ()
	assert(self.isEnabled())
	self.subscriber:unsubscribeFromAllMessages()
end

function WebViewProtocol:request(acquireFn): () -> ()
	return self.queue:request(acquireFn)
end

function WebViewProtocol.isEnabled(): boolean
	-- TODO: Remove FFlagEnableWebViewProtocolForTestingOnly with FFlagEnableUnifiedWebViews
	return game:GetEngineFeature("WebViewProtocol") or game:GetFastFlag("EnableWebViewProtocolForTestingOnly")
end

function WebViewProtocol.shouldForceVisibleOnOpen(): boolean
	return game:GetEngineFeature("UniversalAppOnWindows") or game:GetEngineFeature("UniversalAppOnMac")
end

function WebViewProtocol.shouldRenameIsVisibleParam(): boolean
	return game:GetEngineFeature("UniversalAppOnUWP")
end

function WebViewProtocol.shouldForceBrowserServiceOnMutate(): boolean
	return game:GetEngineFeature("UniversalAppOnUWP")
end

WebViewProtocol.default = WebViewProtocol.new()

return WebViewProtocol
