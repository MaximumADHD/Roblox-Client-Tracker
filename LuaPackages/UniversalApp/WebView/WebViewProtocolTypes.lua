local CorePackages = game:GetService("CorePackages")
local Types = require(CorePackages.Workspace.Packages.MessageBus)

local AppCommonLib = require(CorePackages.Workspace.Packages.AppCommonLib)

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

	request: (Impl, AppCommonLib.AsyncQueueAcquireFnType) -> AppCommonLib.AsyncQueueReleaseFnType,

	isEnabled: () -> boolean,
}

export type WebViewProtocol = WebViewProtocolInterface<WebViewProtocol>

return nil
