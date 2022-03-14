--!strict
local CorePackages = game:GetService("CorePackages")
local MessageBus = require(CorePackages.UniversalApp.MessageBus)
local t = require(CorePackages.Packages.t)

game:DefineFastFlag("EnableWebViewProtocolForTestingOnly", false)

type MessageBus = MessageBus.MessageBus
type Subscriber = MessageBus.Subscriber
type MessageDescriptor = MessageBus.MessageDescriptor
type Table = MessageBus.Table

local NAME = "WebView"

local WebViewProtocol = {}
WebViewProtocol = {
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
}
WebViewProtocol.__index = WebViewProtocol

export type WebViewProtocol = {
	OPEN_WINDOW_DESCRIPTOR: MessageDescriptor,
	MUTATE_WINDOW_DESCRIPTOR: MessageDescriptor,
	CLOSE_WINDOW_DESCRIPTOR: MessageDescriptor,
	HANDLE_WINDOW_CLOSE_DESCRIPTOR: MessageDescriptor,

	new: (MessageBus?) -> WebViewProtocol,
	openWindow: (WebViewProtocol, Table) -> (),
	mutateWindow: (WebViewProtocol, Table) -> (),
	closeWindow: (WebViewProtocol) -> (),
	listenForWindowClose: (WebViewProtocol, () -> ()) -> (),
	stopListening: (WebViewProtocol) -> (),
	isEnabled: () -> boolean,

	messageBus: MessageBus,
	subscriber: Subscriber,
}

function WebViewProtocol.new(messageBus: MessageBus?)
	local messageBus = (messageBus or MessageBus) :: MessageBus
	local self = {
		messageBus = messageBus,
		subscriber = messageBus.Subscriber.new(),
	}
	setmetatable(self, WebViewProtocol)
	return self
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
