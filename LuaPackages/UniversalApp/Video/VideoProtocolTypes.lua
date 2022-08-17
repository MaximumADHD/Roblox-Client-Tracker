local CorePackages = game:GetService("CorePackages")
local Types = require(CorePackages.UniversalApp.MessageBusTypes)

export type VideoProtocol = {
	GET_RECORDING_DURATION_DESCRIPTOR: Types.FunctionDescriptor,

	getRecordingDuration: (VideoProtocol) -> Types.Table,

	messageBus: Types.MessageBus,
}

return nil
