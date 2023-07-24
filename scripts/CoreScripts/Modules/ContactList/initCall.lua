local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local CallProtocol = require(CorePackages.Workspace.Packages.CallProtocol)

local dependencies = require(script.Parent.dependencies)
local RoduxCall = dependencies.RoduxCall

return function(callProtocol: CallProtocol.CallProtocolModule)
	-- Initialize
	callProtocol:getCallState():andThen(function(params)
		if
			params.status == RoduxCall.Enums.Status.Teleporting.rawValue()
			and Players.LocalPlayer
			and params.callerId == Players.LocalPlayer.UserId
			and params.callId
		then
			if params.instanceId == game.JobId then
				callProtocol:teleportSuccessCall(params.callId)
			else
				-- Caller has joined teleported to another server. End the call.
				callProtocol:finishCall(params.callId)
			end
		elseif
			params.status == RoduxCall.Enums.Status.Accepting.rawValue()
			and Players.LocalPlayer
			and params.calleeId == Players.LocalPlayer.UserId
			and params.callId
		then
			if params.instanceId == game.JobId then
				callProtocol:answerSuccessCall(params.callId)
			else
				-- Callee has joined another server. Reject the call.
				callProtocol:rejectCall(params.callId)
			end
		end
	end)
end
