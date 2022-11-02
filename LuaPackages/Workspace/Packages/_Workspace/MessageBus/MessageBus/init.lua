local MessageBus = require(script.MessageBus)
local Types = require(script.MessageBusTypes)

export type Table = Types.Table
export type Array<T> = Types.Array<T>
export type Promise<T> = Types.Promise<T>
export type MessageDescriptor = Types.MessageDescriptor
export type ProtocolMethodDescriptor = Types.ProtocolMethodDescriptor
export type FunctionDescriptor = Types.FunctionDescriptor
export type MessageBus = Types.MessageBus
export type Subscriber = Types.Subscriber

return {
	MessageBus = MessageBus,
}
