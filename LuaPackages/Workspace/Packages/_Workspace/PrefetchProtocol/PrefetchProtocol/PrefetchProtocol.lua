local Root = script.Parent
local Packages = Root.Parent
local MessageBusPackage = require(Packages.MessageBus)
local MessageBus = MessageBusPackage.MessageBus
local t = require(Packages.t)

local Types = require(script.Parent.PrefetchProtocolTypes)

local EnablePrefetchProtocolEngineFeature = game:GetEngineFeature("EnablePrefetchProtocol")

type MessageBus = MessageBusPackage.MessageBus
type FunctionDescriptor = MessageBusPackage.FunctionDescriptor
type Table = MessageBusPackage.Table
type Array<T> = MessageBusPackage.Array<T>
export type PrefetchProtocol = Types.PrefetchProtocol

export type PrefetchProtocolModule = PrefetchProtocol & {
	default: PrefetchProtocol,
	new: (messageBus: MessageBus?) -> PrefetchProtocol,
}

local NAME = "Prefetch"

local PrefetchProtocol: PrefetchProtocolModule = {
	POP_GUID_DESCRIPTOR = {
		fid = MessageBus.getMessageId(NAME, "popPendingPrefetchGuid"),
		validateParams = t.table,
	},
} :: PrefetchProtocolModule;

(PrefetchProtocol :: any).__index = PrefetchProtocol

function PrefetchProtocol.new(messageBus: MessageBus?): PrefetchProtocol
	local self = {
		messageBus = messageBus or MessageBus,
	}
	setmetatable(self, PrefetchProtocol)
	return (self :: any) :: PrefetchProtocol
end

function PrefetchProtocol:popPendingPrefetchGuid(): string?
	return self.messageBus.call(self.POP_GUID_DESCRIPTOR, {})
end

function PrefetchProtocol.isEnabled(): boolean
	return EnablePrefetchProtocolEngineFeature
end

PrefetchProtocol.default = PrefetchProtocol.new()

return PrefetchProtocol
