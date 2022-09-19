--!strict
local EmoteHelper = {}

local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local log = require(RobloxGui.Modules.Logger):new(script.Name)

EmoteHelper.EMOTE_LOOP_TRANSITION_WAIT_TIME = 0.3 -- in seconds
EmoteHelper.EMOTE_LOOP_WAIT_TIMEOUT = 5 -- in seconds

EmoteHelper.LegacyDefaultEmotes = {
	wave = true,
	point = true,
	dance = true,
	dance2 = true,
	dance3 = true,
	laugh = true,
	cheer = true,
}

local function clearConnection(connection)
	if connection then
		connection:Disconnect()
	end
end

-- Gets any track that correspond to a valid Emote available for Chat.
-- Note: Not all Emotes are available for Chat, but only a small group.
-- This method searches only for Emotes in that small group.
function EmoteHelper.getAnyActiveDefaultChatTriggeredEmoteTrack(player) : AnimationTrack?
	if not player.Character then
		return nil
	end

	-- get and validate Humanoid
	local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return nil
	end

	-- get and validate Animator
	local animator = humanoid:FindFirstChildOfClass("Animator")
	if not animator then
		return nil
	end

	-- get all playing animations
	local animationTracks = animator:GetPlayingAnimationTracks() :: {AnimationTrack | AnimationStreamTrack}

	-- Check all animation tracks to see if one of them is a default chat emote
	for i, track in pairs(animationTracks) do
		if track.Animation and track.Animation.Parent and track:IsA("AnimationTrack") then
			local emoteName = track.Animation.Parent.Name
			if EmoteHelper.LegacyDefaultEmotes[emoteName] and track.IsPlaying then
				return track
			end
		end
	end

	return nil
end

local function waitForEmoteEventInternal(player, emoteTrack : AnimationTrack, isChatTriggered, onDone)
	-- event that will notify the Emote finished
	local loopFinishedEvent = Instance.new("BindableEvent")

	-- prepare properties
	local emoteLoopStartedTime = os.clock()
	local waitingForEmote = true

	-- util callback to stop search
	local stopSearch = function()
		if waitingForEmote and loopFinishedEvent then
			waitingForEmote = false
			loopFinishedEvent:Fire()
		end
	end

	-- listen for when the Emote track stops normally
	local playerEmoteWaitConnection = emoteTrack.Stopped:Connect(function()
		log:trace("EmoteHelper.waitForEmoteEventInternal: Stopped")
		stopSearch()
	end)

	-- Note
	-- the Stopped event is not reliable. Sometimes the Stopped event never gets called,
	-- even though the track is not playing. So we have to use other events as well...

	-- listen for when the Emote track reaches the last Keyframe
	local playerEmoteEndKeyframeConnection = emoteTrack.KeyframeReached:Connect(function(frameName)
		if frameName == "End" and (not emoteTrack.Looped or isChatTriggered) then
			log:trace("EmoteHelper.waitForEmoteEventInternal: KeyframeReached")
			stopSearch()
		else
			-- update the `emoteLoopStartedTime` for the new loop (so the timeout delays)
			emoteLoopStartedTime = os.clock()
		end
	end)

	-- add a timeout just in case
	task.spawn(function()
		local elapsedTimeWaitingForEmoteLoop = os.clock() - emoteLoopStartedTime
		while waitingForEmote and elapsedTimeWaitingForEmoteLoop < EmoteHelper.EMOTE_LOOP_WAIT_TIMEOUT do
			-- wait for the remaining time
			wait(EmoteHelper.EMOTE_LOOP_WAIT_TIMEOUT - elapsedTimeWaitingForEmoteLoop)
			-- update elapsed time
			elapsedTimeWaitingForEmoteLoop = os.clock() - emoteLoopStartedTime
		end
		if waitingForEmote then
			log:trace("EmoteHelper.waitForEmoteEventInternal: Timeout!")
			stopSearch()
		end
	end)

	-- wait for first event to happen
	loopFinishedEvent.Event:Wait()
	loopFinishedEvent:Destroy()

	-- clear connections
	clearConnection(playerEmoteWaitConnection)
	clearConnection(playerEmoteEndKeyframeConnection)

	if isChatTriggered then
		-- Add a delay to account for fade time of animations (in case of loop)
		wait(EmoteHelper.EMOTE_LOOP_TRANSITION_WAIT_TIME)
		local newEmoteTrack = EmoteHelper.getAnyActiveDefaultChatTriggeredEmoteTrack(player)
		if newEmoteTrack then
			waitForEmoteEventInternal(player, newEmoteTrack, isChatTriggered, onDone)
		elseif onDone then
			-- notify finished
			onDone()
		end
	elseif onDone then
		-- notify finished
		onDone()
	end
end

function EmoteHelper.createEmoteFinishEvent(player, emoteTrack, isChatTriggered)
	-- create a notifier for when the emote track stops
	local emoteFinishedEvent = Instance.new("BindableEvent")

	-- callback to execute at the end
	local onDone = function()
		emoteFinishedEvent:Fire()
		emoteFinishedEvent:Destroy()
	end

	-- coroutine to wait for emote
	task.spawn(waitForEmoteEventInternal, player, emoteTrack, isChatTriggered, onDone)

	-- return the waiting event
	return emoteFinishedEvent.Event
end

return EmoteHelper
