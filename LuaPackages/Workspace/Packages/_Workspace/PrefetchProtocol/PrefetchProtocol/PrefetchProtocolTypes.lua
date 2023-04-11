local Root = script.Parent
local Packages = Root.Parent
local Types = require(Packages.MessageBus)

export type PrefetchProtocol = {
	POP_GUID_DESCRIPTOR: Types.FunctionDescriptor,

	popPendingPrefetchGuid: (PrefetchProtocol) -> string?,
	isEnabled: () -> boolean,

	-- Private
	subscriber: Types.Subscriber,
	messageBus: Types.MessageBus,
}

return nil
