local CorePackages = game:GetService("CorePackages")
local MessageBus = require(CorePackages.UniversalApp.MessageBus)
local t = require(CorePackages.Packages.t)
local ExternalContentSharingProtocolTypes = require(script.Parent.ExternalContentSharingProtocolTypes)
local MessageBusTypes = require(CorePackages.UniversalApp.MessageBusTypes)

type MessageBus = MessageBusTypes.MessageBus
type ExternalContentSharingProtocol = ExternalContentSharingProtocolTypes.ExternalContentSharingProtocol
type ExternalContentSharingProtocolShareTextData =
	ExternalContentSharingProtocolTypes.ExternalContentSharingProtocolShareTextData
type ExternalContentSharingProtocolShareUrlData =
	ExternalContentSharingProtocolTypes.ExternalContentSharingProtocolShareUrlData
type ExternalContentSharingProtocolModule = ExternalContentSharingProtocol & {
	new: (messageBus: MessageBus?) -> ExternalContentSharingProtocol | nil,
	default: ExternalContentSharingProtocol | nil,
}

local NAME = "ExternalContentSharing"

local getFFlagEnableExternalContentSharingProtocolLua =
	require(script.Parent.Flags.getFFlagEnableExternalContentSharingProtocolLua)

local shareTextParamsValidator = t.strictInterface({
	text = t.string,
	context = t.optional(t.string),
})

local shareUrlParamsValidator = t.strictInterface({
	url = t.string,
	context = t.optional(t.string),
})

local ExternalContentSharingProtocol: ExternalContentSharingProtocolModule = {
	-- Descriptor should include mid(message id) and validateParams
	EXTERNAL_CONTENT_SHARING_SHARE_TEXT_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "shareText"),
		validateParams = shareTextParamsValidator,
	},
	EXTERNAL_CONTENT_SHARING_SHARE_URL_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "shareUrl"),
		validateParams = shareUrlParamsValidator,
	},
} :: ExternalContentSharingProtocolModule;
(ExternalContentSharingProtocol :: any).__index = ExternalContentSharingProtocol

function ExternalContentSharingProtocol.new(_messageBus: MessageBus?): ExternalContentSharingProtocol | nil
	if ExternalContentSharingProtocol.isEnabled() then
		local messageBus = (_messageBus or MessageBus) :: MessageBus
		local self = setmetatable({
			messageBus = messageBus,
		}, ExternalContentSharingProtocol)
		return (self :: any) :: ExternalContentSharingProtocol
	end
	return nil
end

function ExternalContentSharingProtocol:shareText(params: ExternalContentSharingProtocolShareTextData): ()
	if self.isEnabled() then
		self.messageBus.publish(self.EXTERNAL_CONTENT_SHARING_SHARE_TEXT_DESCRIPTOR, params)
	end
end

function ExternalContentSharingProtocol:shareUrl(params: ExternalContentSharingProtocolShareUrlData): ()
	if self.isEnabled() then
		self.messageBus.publish(self.EXTERNAL_CONTENT_SHARING_SHARE_URL_DESCRIPTOR, params)
	end
end

function ExternalContentSharingProtocol.isEnabled(): boolean
	return getFFlagEnableExternalContentSharingProtocolLua()
end

ExternalContentSharingProtocol.default = ExternalContentSharingProtocol.new()

return ExternalContentSharingProtocol
