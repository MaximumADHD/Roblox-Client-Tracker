local CorePackages = game:GetService("CorePackages")
local Types = require(CorePackages.Workspace.Packages.MessageBus)

export type VideoProtocol = {
	GET_RECORDING_DURATION_DESCRIPTOR: Types.FunctionDescriptor,

	getRecordingDuration: (VideoProtocol) -> Types.Table,

	messageBus: Types.MessageBus,
}

return nil
