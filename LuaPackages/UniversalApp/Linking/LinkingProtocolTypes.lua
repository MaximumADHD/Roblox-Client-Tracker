local CorePackages = game:GetService("CorePackages")
local Types = require(CorePackages.UniversalApp.MessageBusTypes)

export type LinkingProtocol = {
	REGISTER_URL_DESCRIPTOR: Types.MessageDescriptor,
	DETECT_URL_DESCRIPTOR: Types.MessageDescriptor,
	HANDLE_LUA_URL_DESCRIPTOR: Types.MessageDescriptor,
	OPEN_URL_REQUEST_DESCRIPTOR: Types.MessageDescriptor,
	OPEN_URL_RESPONSE_DESCRIPTOR: Types.MessageDescriptor,
	IS_URL_REGISTERED_REQUEST_DESCRIPTOR: Types.MessageDescriptor,
	IS_URL_REGISTERED_RESPONSE_DESCRIPTOR: Types.MessageDescriptor,

	registerURL: (LinkingProtocol, url: string) -> (),
	detectURL: (LinkingProtocol, url: string) -> (),
	getLastLuaURL: (LinkingProtocol, url: string) -> string?,
	listenForLuaURLs: (LinkingProtocol, listener: (string) -> (), sticky: boolean?) -> (),
	stopListeningForLuaURLs: (LinkingProtocol) -> (),
	openURL: (LinkingProtocol, url: string) -> Types.Promise<boolean>,
	isURLRegistered: (LinkingProtocol, url: string) -> Types.Promise<boolean>,

	subscriber: Types.Subscriber,
	isListeningForURLs: boolean,
}

return nil
