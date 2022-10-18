local CorePackages = game:GetService("CorePackages")
local MessageBusTypes = require(CorePackages.UniversalApp.MessageBusTypes)

type MessageBus = MessageBusTypes.MessageBus
type MessageDescriptor = MessageBusTypes.MessageDescriptor

export type ExternalContentSharingProtocolShareTextData = {
	text: string,
	context: string?,
}

export type ExternalContentSharingProtocolShareUrlData = {
	url: string,
	context: string?,
}

export type ExternalContentSharingProtocol = {
	EXTERNAL_CONTENT_SHARING_SHARE_TEXT_DESCRIPTOR: MessageDescriptor,

	EXTERNAL_CONTENT_SHARING_SHARE_URL_DESCRIPTOR: MessageDescriptor,

	messageBus: MessageBus,

	isEnabled: () -> boolean,

	shareText: (ExternalContentSharingProtocol, param: ExternalContentSharingProtocolShareTextData) -> (),

	shareUrl: (ExternalContentSharingProtocol, param: ExternalContentSharingProtocolShareUrlData) -> (),
}

return nil
