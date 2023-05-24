local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Packages = RoduxCall.Parent

local ExperienceDetailModel = require(script.Parent.ExperienceDetailModel)
local ParticipantModel = require(script.Parent.ParticipantModel)

local Status = require(RoduxCall.Enums).Status :: any

local t = require(Packages.t) :: any

local CallModel = {}

function CallModel.new(call)
	assert(CallModel.isValid(call))

	CallModel.__index = CallModel

	local self = call

	setmetatable(self, CallModel)

	return self
end

function CallModel.mock(mergeTable: any)
	mergeTable = mergeTable or {}

	local participants = {}
	local count = 0
	if mergeTable.participants ~= nil then
		for userId, participant in pairs(mergeTable.participants) do
			participants[userId] = ParticipantModel.mock(participant)
			count += 1
		end
	end

	if count == 0 then
		local participant = ParticipantModel.mock()
		participants[tostring(participant.userId)] = participant
	end

	local self = CallModel.new({
		status = mergeTable.status or Status.Active.rawValue(),
		callId = mergeTable.callId or "12345",
		participants = participants,
		experienceDetail = ExperienceDetailModel.mock(mergeTable.experieneDetail),
	})

	return self
end

function CallModel.format(callData)
	local self = CallModel.new({
		status = callData.status,
		callId = callData.callId,
		participants = callData.participants,
		experienceDetail = callData.experienceDetail,
	})

	return self
end

CallModel.isValid = t.strictInterface({
	status = t.string,
	callId = t.string,
	participants = t.map(t.string, ParticipantModel.isValid),
	experienceDetail = ExperienceDetailModel.isValid,
})

return CallModel
