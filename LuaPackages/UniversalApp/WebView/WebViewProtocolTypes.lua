local CorePackages = game:GetService("CorePackages")
local Types = require(CorePackages.UniversalApp.MessageBusTypes)

local AsyncQueueTypes = require(CorePackages.AppTempCommon.Common.AsyncQueue.AsyncQueueTypes)

export type OptionalParams = {
	url: string?,
	title: string?,
	isVisible: boolean?,
	windowType: string?,
	transitionAnimation: string?,
	searchParams: {
		searchType: string
	}?,
}

export type Params = OptionalParams & {
	url: string,
}

export type WebViewProtocolInterface<Impl> = {
	openWindow: (Impl, params: Params) -> (),
	mutateWindow: (Impl, params: OptionalParams) -> (),
	closeWindow: (Impl) -> (),

	listenForWindowClose: (Impl, listener: () -> ()) -> (),
	stopListeningForWindowClose: (Impl) -> (),

	listenForJavaScript: (Impl, listener: (string) -> ()) -> (),
	stopListeningForJavaScript: (Impl) -> (),

	stopListening: (Impl) -> (),

	request: (Impl, AsyncQueueTypes.AcquireFn) -> AsyncQueueTypes.ReleaseFn,

	isEnabled: () -> boolean,
}

export type WebViewProtocol = WebViewProtocolInterface<WebViewProtocol>

return nil
