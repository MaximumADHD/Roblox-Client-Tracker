--!strict
local CorePackages = game:GetService("CorePackages")
local Types = require(CorePackages.UniversalApp.MessageBusTypes)

export type WebViewProtocol = {
	OPEN_WINDOW_DESCRIPTOR: Types.MessageDescriptor,
	MUTATE_WINDOW_DESCRIPTOR: Types.MessageDescriptor,
	CLOSE_WINDOW_DESCRIPTOR: Types.MessageDescriptor,
	HANDLE_WINDOW_CLOSE_DESCRIPTOR: Types.MessageDescriptor,
	isEnabled: () -> boolean,

	openWindow: (WebViewProtocol, params: Types.Table) -> (),
	mutateWindow: (WebViewProtocol, params: Types.Table) -> (),
	closeWindow: (WebViewProtocol) -> (),
	listenForWindowClose: (WebViewProtocol, listener: () -> ()) -> (),
	stopListening: (WebViewProtocol) -> (),

	messageBus: Types.MessageBus,
	subscriber: Types.Subscriber,
}

return nil
