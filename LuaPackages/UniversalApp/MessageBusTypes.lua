local CorePackages = game:GetService("CorePackages")
local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)

export type Table = { [string]: any }

export type Array<T> = { T }

export type Promise<T> = LuauPolyfill.Promise<T>

export type MessageDescriptor = {
	mid: string,
	validateParams: (Table) -> (boolean, string?)
}

export type ProtocolMethodDescriptor = {
	protocolName: string,
	methodName: string,
	validateParams: (Table) -> (boolean, string?)
}

export type FunctionDescriptor = {
	fid: string,
	validateParams: (any) -> (boolean, string?)
}

export type MessageBus = {
	publish: (MessageDescriptor, Table) -> (),
	publishProtocolMethodRequest: (MessageDescriptor, Table, Table) -> (),
	publishProtocolMethodResponse: (MessageDescriptor, Table, number, Table) -> (),
	getLast: (MessageDescriptor) -> Table?,
	getMessageId: (string, string) -> string,
	getProtocolMethodRequestMessageId: (string, string) -> string,
	getProtocolMethodResponseMessageId: (string, string) -> string,
	deserializeMessageParams: (string) -> Table,
	serializeMessageParams: (Table) -> string,
	call: (FunctionDescriptor, any) -> any,

	Subscriber: Subscriber,
}

export type Subscriber =  {
	new: () -> Subscriber,
	getSubscriptionCount: (Subscriber) -> number,
	subscribe: (Subscriber, MessageDescriptor, (Table) -> (), boolean?) -> (),
	subscribeProtocolMethodRequest: (Subscriber, ProtocolMethodDescriptor, (Table) -> (), boolean?) -> (),
	subscribeProtocolMethodResponse: (Subscriber, ProtocolMethodDescriptor, (Table) -> (), boolean?) -> (),
	unsubscribe: (Subscriber, MessageDescriptor) -> (),
	unsubscribeToProtocolMethodRequest: (Subscriber, ProtocolMethodDescriptor) -> (),
	unsubscribeToProtocolMethodResponse: (Subscriber, ProtocolMethodDescriptor) -> (),
	unsubscribeFromAllMessages: (Subscriber) -> (),
	unsubscribeWithMsgId: (Subscriber, string) -> (),

	connections: { [string]: any },
}

return nil
