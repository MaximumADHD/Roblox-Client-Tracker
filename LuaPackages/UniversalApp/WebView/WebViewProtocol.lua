local CorePackages = game:GetService("CorePackages")
local MessageBus = require(CorePackages.UniversalApp.MessageBus)
local t = require(CorePackages.Packages.t)

local Types = require(script.Parent.WebViewProtocolTypes)

type MessageBus = MessageBus.MessageBus
type Table = MessageBus.Table

export type WebViewProtocol = Types.WebViewProtocol

export type WebViewProtocolModule = WebViewProtocol & {
	new: (messageBus: MessageBus?) -> WebViewProtocol,
	default: WebViewProtocol,
}

game:DefineFastFlag("EnableWebViewProtocolForTestingOnly", false)

local NAME = "WebView"

local WebViewProtocol: WebViewProtocolModule = {
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
			windowType = t.string,
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
} :: WebViewProtocolModule

(WebViewProtocol :: any).__index = WebViewProtocol

function WebViewProtocol.new(_messageBus: MessageBus?): WebViewProtocol
	local messageBus = (_messageBus or MessageBus) :: MessageBus
	local self = {
		messageBus = messageBus,
		subscriber = messageBus.Subscriber.new(),
	}
	setmetatable(self, WebViewProtocol)
	return (self :: any) :: WebViewProtocol
end

function WebViewProtocol:openWindow(params: Table): ()
	assert(self.isEnabled())
	self.messageBus.publish(self.OPEN_WINDOW_DESCRIPTOR, params)
end

function WebViewProtocol:mutateWindow(params: Table): ()
	assert(self.isEnabled())
	self.messageBus.publish(self.MUTATE_WINDOW_DESCRIPTOR, params)
end

function WebViewProtocol:closeWindow(): ()
	assert(self.isEnabled())
	self.messageBus.publish(self.CLOSE_WINDOW_DESCRIPTOR, {} :: Table)
end

function WebViewProtocol:listenForWindowClose(listener: () -> ()): ()
	assert(self.isEnabled())
	self.subscriber:subscribe(self.HANDLE_WINDOW_CLOSE_DESCRIPTOR, function()
		listener()
	end, false)
end

function WebViewProtocol:stopListening(): ()
	assert(self.isEnabled())
	self.subscriber:unsubscribeFromAllMessages()
end

function WebViewProtocol.isEnabled(): boolean
	return game:GetEngineFeature("WebViewProtocol") or game:GetFastFlag("EnableWebViewProtocolForTestingOnly")
end

WebViewProtocol.default = WebViewProtocol.new()

return WebViewProtocol
