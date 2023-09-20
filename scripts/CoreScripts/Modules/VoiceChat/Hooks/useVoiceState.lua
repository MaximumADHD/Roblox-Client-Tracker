--[[
	A React hook for monitoring the voice state of a local or peer player.

	This hook does not use Redux and connects directly to the VoiceChatServiceManager.

	The hook will only trigger a re-render if the voice state of the player changes.

	API:
		useVoiceState(userId, paused) : VoiceState

		userId can be provided as number or string
		paused boolean disconnects all event bindings and defaults state to hidden,
	           useful for UI that isn't currently on screen

	Usage:

		local VOICE_STATE = require(CorePackages.AppTempCommon.VoiceChat.Constants).VOICE_STATE

		function Widget(props)
			local voiceState = useVoiceState(props.userId)
			if voiceState == VOICE_STATE.HIDDEN then
				return React.createElement(InactiveIcon)
			else
				return React.createElement(ActiveIcon)
			end
		end
--]]

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)
local BlockedStatusChanged = BlockingUtility:GetBlockedStatusChangedEvent()
local VoiceChatServiceManager = require(script.Parent.Parent.VoiceChatServiceManager).default
local VoiceStateContext = require(RobloxGui.Modules.VoiceChat.VoiceStateContext)
local VoiceConstants = require(CorePackages.AppTempCommon.VoiceChat.Constants)
local VOICE_STATE = VoiceConstants.VOICE_STATE

local localPlayer = Players.LocalPlayer
while not localPlayer do
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	localPlayer = Players.LocalPlayer
end
local localUserId: number = localPlayer and localPlayer.UserId or 0

local VoiceChatState
if game:GetEngineFeature("VoiceChatSupported") then
	VoiceChatState = (Enum :: any).VoiceChatState
else
	-- Mock VoiceChatState
	VoiceChatState = {
		Idle = 1,
		Joining = 2,
		JoiningRetry = 3,
		Joined = 4,
		Leaving = 5,
		Ended = 6,
		Failed = 7,
	}
end

local LOCAL_STATE_MAP = {
	[VoiceChatState.Idle] = VOICE_STATE.HIDDEN,
	[VoiceChatState.Joining] = VOICE_STATE.CONNECTING,
	[VoiceChatState.JoiningRetry] = VOICE_STATE.CONNECTING,
	[VoiceChatState.Joined] = VOICE_STATE.MUTED,
	[VoiceChatState.Leaving] = VOICE_STATE.MUTED,
	[VoiceChatState.Ended] = VOICE_STATE.HIDDEN,
	[VoiceChatState.Failed] = VOICE_STATE.ERROR,
}

local function mapVoiceChatStateToVoiceState(voiceChatState)
	if not LOCAL_STATE_MAP[voiceChatState] then
		return VOICE_STATE.MUTED
	else
		return LOCAL_STATE_MAP[voiceChatState]
	end
end

local function mapParticipantStateToVoiceState(participantState)
	local newVoiceState = VOICE_STATE.INACTIVE
	if participantState.subscriptionFailed then
		newVoiceState = VOICE_STATE.ERROR
	elseif not participantState.subscriptionCompleted then
		newVoiceState = VOICE_STATE.CONNECTING
	elseif participantState.isMutedLocally then
		newVoiceState = VOICE_STATE.LOCAL_MUTED
	elseif participantState.isMuted then
		newVoiceState = VOICE_STATE.MUTED
	elseif participantState.isSignalActive then
		newVoiceState = VOICE_STATE.TALKING
	end
	return newVoiceState
end

local function useVoiceState(userId: string | number, paused: boolean?, options: any?)
	local manager = options and options.voiceChatServiceManager or VoiceChatServiceManager
	local voiceContext = React.useContext(VoiceStateContext.Context)
	local voiceState, setVoiceState = React.useState(VOICE_STATE.HIDDEN)

	React.useEffect(function()
		if not voiceContext.voiceEnabled or not userId or paused then
			setVoiceState(VOICE_STATE.HIDDEN)
			return function() end
		end

		local userIdInt = tonumber(userId)
		local userIdStr = tostring(userId)

		local isLocalPlayer = localUserId == userIdInt
		local blocked: boolean? = nil
		local conns = {}
		local destroyed = false

		local function updateVoiceState(newVoiceState)
			if not destroyed then
				setVoiceState(newVoiceState)
			end
		end

		local function setVoiceEnabled(voiceServiceState)
			local newVoiceState = voiceState

			if isLocalPlayer then
				newVoiceState = mapVoiceChatStateToVoiceState(voiceServiceState)
			else
				local participant = manager.participants[userIdStr]
				if participant and not blocked then
					newVoiceState = mapParticipantStateToVoiceState(participant)
				end
			end

			if voiceServiceState == VoiceChatState.Failed then
				if not isLocalPlayer then
					newVoiceState = VOICE_STATE.HIDDEN
				end
			elseif voiceServiceState == VoiceChatState.Joined and not manager.localMuted then
				if isLocalPlayer then
					if manager.isTalking then
						newVoiceState = VOICE_STATE.TALKING
					elseif manager.localMuted then
						newVoiceState = VOICE_STATE.MUTED
					else
						newVoiceState = VOICE_STATE.INACTIVE
					end
				end
			end

			updateVoiceState(newVoiceState)
		end

		setVoiceEnabled(voiceContext.voiceState)

		-- small optimization to defer event binding
		delay(0, function()
			if destroyed then
				return
			end
			setVoiceEnabled(voiceContext.voiceState)

			if isLocalPlayer then
				-- Local player events

				table.insert(
					conns,
					manager.talkingChanged.Event:Connect(function(isTalking)
						updateVoiceState(if isTalking then VOICE_STATE.TALKING else VOICE_STATE.INACTIVE)
					end)
				)

				table.insert(
					conns,
					manager.muteChanged.Event:Connect(function(muted)
						updateVoiceState(if muted then VOICE_STATE.MUTED else VOICE_STATE.INACTIVE)
					end)
				)
			else
				-- Peer player events
				table.insert(
					conns,
					manager.participantsUpdate.Event:Connect(function(participants)
						local participant = participants[userIdStr] -- this participants table uses [tostring(userId)]
						if participant and not blocked then
							updateVoiceState(mapParticipantStateToVoiceState(participant))
						else
							updateVoiceState(VOICE_STATE.HIDDEN)
						end
					end)
				)

				table.insert(
					conns,
					manager.participantLeft.Event:Connect(function(participants, leftUserId)
						if leftUserId == userIdInt then
							updateVoiceState(VOICE_STATE.HIDDEN)
						end
					end)
				)

				table.insert(
					conns,
					manager.participantJoined.Event:Connect(function(participants, joinedUserId)
						if joinedUserId == userIdInt then
							updateVoiceState(VOICE_STATE.HIDDEN)
						end
					end)
				)

				-- Note that we don't need to block anyone already blocked, as VCS doesn't establish
				-- connections between blocked users
				table.insert(
					conns,
					BlockedStatusChanged:Connect(function(playerUserId, isBlocked)
						if userIdInt == playerUserId then
							if isBlocked then
								blocked = true
								updateVoiceState(VOICE_STATE.HIDDEN)
							else
								blocked = nil
								local participant = manager.participants[userIdStr]
								if participant then
									updateVoiceState(mapParticipantStateToVoiceState(participant))
								else
									updateVoiceState(VOICE_STATE.HIDDEN)
								end
							end
						end
					end)
				)
			end
		end)

		return function()
			destroyed = true
			-- small optimization to defer event unbinding
			delay(0, function()
				for _, conn in conns do
					conn:disconnect()
				end
			end)
		end
	end, { userId, voiceContext.voiceState, (paused == true) } :: { any })
	-- FIXME Luau: remove the {any} cast from the mixed type array  ^

	return voiceState
end

return useVoiceState
