local CorePackages = game:GetService("CorePackages")
local MessageBus = require(CorePackages.UniversalApp.MessageBus)
local t = require(CorePackages.Packages.t)

local Types = require(script.Parent.VideoProtocolTypes)

type MessageBus = MessageBus.MessageBus

export type VideoProtocol = Types.VideoProtocol

export type VideoProtocolModule = VideoProtocol & {
	new: (MessageBus?) -> VideoProtocol,
	default: VideoProtocol,
}

local NAME = "Video"

local VideoProtocol: VideoProtocolModule = {
	GET_RECORDING_DURATION_DESCRIPTOR = {
		fid = MessageBus.getMessageId(NAME, "getRecordingDuration"),
		validateParams = t.table,
	},
} :: VideoProtocolModule

(VideoProtocol :: any).__index = VideoProtocol

function VideoProtocol.new(messageBus): VideoProtocol
	local self = setmetatable({
		messageBus = messageBus or MessageBus
	}, VideoProtocol)
	return (self :: any) :: VideoProtocol
end

--[[
	Gets the current recording duration of the VideoRecorder

	@return table: Table with key for the recording duration. If the
	protocol was never initialized, this table will be empty (not nil)

	{
		recordingDuration = {{value}}
	}
]]
function VideoProtocol:getRecordingDuration(): MessageBus.Table
	return self.messageBus.call(self.GET_RECORDING_DURATION_DESCRIPTOR, {})
end

VideoProtocol.default = VideoProtocol.new()

return VideoProtocol
