local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local Modules = CoreGui.RobloxGui.Modules
local VoiceChatServiceManager = require(Modules.VoiceChat.VoiceChatServiceManager).default
local CallProtocol = require(CorePackages.Workspace.Packages.CallProtocol)

local dependencies = require(script.Parent.dependencies)
local RoduxCall = dependencies.RoduxCall
local CallAction = RoduxCall.Enums.CallAction
local teleportToRootPlace = dependencies.teleportToRootPlace

local EngineFeatureEnableIrisRerouteToRCC = game:GetEngineFeature("EnableIrisRerouteToRCC")

local _handleCamAndMicChangedFromCallConn
local _handleTeleportingCallConn
local _handleTransferCallTeleportJoinConn
local _handleTransferCallTeleportLeaveConn
local _handleInitCallConn
local _handleActiveCallConn
local _handleEndCallConn

return function(callProtocol: CallProtocol.CallProtocolModule)
	local updateCurrentCall = function(currentCall)
		coroutine.wrap(function()
			-- Called to update the call info associated with the RCC server.
			-- Used on RCC to enforce call privacy and ending the call in case
			-- of a crash.
			local updateCurrentCallUserRemoteEvent =
				RobloxReplicatedStorage:WaitForChild("UpdateCurrentCall", math.huge) :: RemoteEvent
			updateCurrentCallUserRemoteEvent:FireServer(currentCall)
		end)()
	end

	-- At the very beginning in experience, try to update the calling state
	-- machine to the right state
	callProtocol:getCallState():andThen(function(params)
		if
			params.status == RoduxCall.Enums.Status.Teleporting
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
			params.status == RoduxCall.Enums.Status.Accepting
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

	-- Listen to the cam enabled property changed event
	FaceAnimatorService:GetPropertyChangedSignal("VideoAnimationEnabled"):Connect(function()
		callProtocol:updateMicAndCamState(nil, FaceAnimatorService.VideoAnimationEnabled)
	end)

	-- Listen to the mute changed event
	VoiceChatServiceManager.muteChanged.Event:Connect(function(muted)
		-- Don't communicate the muted state when voice chat is trying to end
		local voiceService = VoiceChatServiceManager:getService()
		if
			voiceService
			and voiceService.VoiceChatState ~= (Enum :: any).VoiceChatState.Leaving
			and voiceService.VoiceChatState ~= (Enum :: any).VoiceChatState.Ended
		then
			callProtocol:updateMicAndCamState(muted, nil)
		end
	end)

	-- Listen to the mic and cam changed event from the calling state machine
	_handleCamAndMicChangedFromCallConn = callProtocol:listenToHandleMicAndCamChanged(function(params)
		-- Only toggle mic if voice chat is connected
		local voiceService = VoiceChatServiceManager:getService()
		if
			voiceService
			and voiceService.VoiceChatState == (Enum :: any).VoiceChatState.Joined
			and VoiceChatServiceManager.localMuted ~= nil
			and params.muted ~= nil
			and params.muted ~= VoiceChatServiceManager.localMuted
		then
			VoiceChatServiceManager:ToggleMic("CallAPI")
		end

		-- Only toggle cam if face animation is started
		if
			FaceAnimatorService:IsStarted()
			and FaceAnimatorService.VideoAnimationEnabled ~= params.camEnabled
			and params.camEnabled ~= nil
		then
			FaceAnimatorService.VideoAnimationEnabled = params.camEnabled
		end
	end)

	-- Listen to whether the caller should be teleported because the callee has accepted.
	_handleTeleportingCallConn = callProtocol:listenToHandleTeleportingCall(function(params)
		if
			params.status == RoduxCall.Enums.Status.Teleporting
			and Players.LocalPlayer
			and params.callId
			and params.callerId == Players.LocalPlayer.UserId
		then
			coroutine.wrap(function()
				if params.instanceId == game.JobId then
					-- In the correct server, consider the teleport a
					-- "success" to make call active.
					callProtocol:teleportSuccessCall(params.callId)
				else
					-- Not the current server. Teleport to the correct one.
					local irisInviteTeleportRemoteEvent =
						RobloxReplicatedStorage:WaitForChild("ContactListIrisInviteTeleport", math.huge) :: RemoteEvent
					irisInviteTeleportRemoteEvent:FireServer(
						params.placeId,
						params.instanceId,
						params.reservedServerAccessCode,
						params.callId
					)
				end
			end)()
		end
	end)

	_handleTransferCallTeleportJoinConn = callProtocol:listenToHandleTransferCallTeleportJoin(function(params)
		updateCurrentCall({
			callId = params.callId,
			participants = { tostring(params.callerId), tostring(params.calleeId) },
		})
	end)

	_handleTransferCallTeleportLeaveConn = callProtocol:listenToHandleTransferCallTeleportLeave(function(params)
		-- User is leaving this server and transfering the call to another
		-- server. This server is no longer associated with the call.
		updateCurrentCall(nil)
	end)

	if EngineFeatureEnableIrisRerouteToRCC then
		_handleInitCallConn = callProtocol:listenToHandleInitCall(function(params)
			coroutine.wrap(function()
				local contactListInvokeIrisInviteRemoteEvent =
					RobloxReplicatedStorage:WaitForChild("ContactListInvokeIrisInvite", math.huge) :: RemoteEvent
				contactListInvokeIrisInviteRemoteEvent:FireServer(
					params.tag,
					params.calleeId,
					params.calleeCombinedName,
					params.muted,
					params.camEnabled,
					HttpService:GetUserAgent(),
					2
				)
			end)()
		end)
	end

	_handleActiveCallConn = callProtocol:listenToHandleActiveCall(function(params)
		updateCurrentCall({
			callId = params.callId,
			participants = { tostring(params.callerId), tostring(params.calleeId) },
		})
	end)

	_handleEndCallConn = callProtocol:listenToHandleEndCall(function(params)
		updateCurrentCall(nil)

		-- We ended a call that was in this server, teleport them back to the root.
		if params.callAction == CallAction.Finish and game.JobId == params.instanceId then
			teleportToRootPlace()
		end
	end)
end
