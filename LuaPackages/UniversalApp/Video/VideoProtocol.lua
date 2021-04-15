local CorePackages = game:GetService("CorePackages")
local MessageBus = require(CorePackages.UniversalApp.MessageBus)
local t = require(CorePackages.Packages.t)

local NAME = "Video"

local VideoProtocol = {
	GET_RECORDING_DURATION_DESCRIPTOR = {
		fid = MessageBus.getMessageId(NAME, "getRecordingDuration"),
		validateParams = t.table,
	},
}

VideoProtocol.__index = VideoProtocol

function VideoProtocol.new(messageBus): VideoProtocol
	local self = setmetatable({
		messageBus = messageBus or MessageBus
	}, VideoProtocol)
	return self
end

--[[
	Gets the current recording duration of the VideoRecorder

	@return table: Table with key for the recording duration. If the
	protocol was never initialized, this table will be empty (not nil)

	{
		recordingDuration = {{value}}
	}
]]
function VideoProtocol:getRecordingDuration(): table
	return self.messageBus.call(self.GET_RECORDING_DURATION_DESCRIPTOR, {})
end

VideoProtocol.default = VideoProtocol.new()

return VideoProtocol
