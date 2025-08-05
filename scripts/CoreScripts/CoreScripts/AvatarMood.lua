--!nonstrict
--[[
	// Filename: AvatarMood.lua
	// Version 0.1
	// Written by: jcampos and jlem
	// Description: Avatar's mood controller.
]]--
game:DefineFastFlag("AvatarMoodSearchForReplacementWhenRemovingAnimator", false)
game:DefineFastFlag("AvatarMoodValidateMoodAnimation", false)
game:DefineFastFlag("AvatarMoodWaitForAnimateInitDone", false)
game:DefineFastFlag("AvatarMoodMakeSureMoodTrackAvailable", false)

local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local LocalPlayer = Players.LocalPlayer
local RobloxGui = CoreGui.RobloxGui

local log = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)

local playerAddedConnection = nil
local playerRemovingConnection = nil
local emoteChattedConnection = nil

local currentMoodAnimationInstance = nil
local currentMoodTrack = nil
local currentMoodTrackPriority = Enum.AnimationPriority.Core
local currentEmoteTrack = nil
local moodCoreScriptEnabled = true
local wheelEmotePlaying = false

type connectionMap = {[string]: RBXScriptConnection}
local connections : connectionMap = {}

local Connection = {
	EmoteStopped = "currentEmoteTrackStopped",
	EmoteKeyframeReached = "emoteKeyframeReached",
	AnimationInstanceChanged = "animationInstanceChanged",
	EmoteTriggered = "localEmote",
	AnimateScriptAdded = "animateScriptAdded",
	AnimateScriptMoodAdded = "animateScriptMoodAdded",
	AnimateScriptMoodRemoved = "animateScriptMoodRemoved",
	MoodChildAdded = "moodChildAdded",
	HeadChildAdded = "headChildAdded",
	CharacterHumanoidAdded = "characterHumanoidAdded",
	HumanoidAnimatorAdded = "humanoidAnimatorAdded",
	CharacterChildAdded = "characterChildAdded",
	CharacterChildRemoved = "characterChildRemoved",
	DescendantAdded = "DescendantAdded",
	DescendantRemoving = "DescendantRemoving",
	AnimationStreamTrackPlayed = "AnimationStreamTrackPlayed",
	StreamTrackStopped = "StreamTrackStopped"
}

local EMOTE_LOOP_TRANSITION_TIME = 0.3

local LegacyDefaultEmotes = {
	wave = true,
	point = true,
	dance = true,
	dance2 = true,
	dance3 = true,
	laugh = true,
	cheer = true,
}

local function getPlayerHumanoid(player)
	if player.Character then
		return player.Character:FindFirstChildOfClass("Humanoid")
	end

	return nil
end

local function getPlayerAnimator(player)
	local humanoid = getPlayerHumanoid(player)
	if humanoid then
		return humanoid:FindFirstChildOfClass("Animator")
	end

	return nil
end

local function switchPriority(priority)
	currentMoodTrackPriority = priority
	if currentMoodTrack then
		currentMoodTrack.Priority = currentMoodTrackPriority
	end
end

local function disconnectAndRemoveConnection(key)
	if connections[key] ~= nil then
		connections[key]:Disconnect()
		connections[key] = nil
	end
end

local function resumeMoodAfterEmote()
	currentEmoteTrack = nil
	if currentMoodTrack ~= nil then
		currentMoodTrack:Play()
	end

	disconnectAndRemoveConnection(Connection.EmoteStopped)
	disconnectAndRemoveConnection(Connection.EmoteKeyframeReached)
end

local function onEmoteTriggered(emoteSuccess, emoteTrack)
	if not moodCoreScriptEnabled or currentMoodTrack == nil then
		return
	end

	if emoteSuccess and emoteTrack then
		currentMoodTrack:Stop()
		currentEmoteTrack = emoteTrack
		wheelEmotePlaying = true
		disconnectAndRemoveConnection(Connection.EmoteStopped)
		disconnectAndRemoveConnection(Connection.EmoteKeyframeReached)

		connections[Connection.EmoteStopped] = currentEmoteTrack.Stopped:Connect(function()
			resumeMoodAfterEmote()
			wheelEmotePlaying = false
		end)

		-- Use KeyframeReached as a backup since Stopped() fires inconsistently for non-looping animations
		connections[Connection.EmoteKeyframeReached] = currentEmoteTrack.KeyframeReached:Connect(function(frameName)
			if frameName == "End" and not currentEmoteTrack.Looped then
				resumeMoodAfterEmote()
				wheelEmotePlaying = false
			end
		end)
	end
end

local function checkEmotePlaying(humanoid)
	local AnimationTracks = humanoid:GetPlayingAnimationTracks()
	local emoteIsPlaying = false

	-- check all animation tracks to see if one of them is a default chat emote
	for i, track in pairs (AnimationTracks) do
		if not track.IsPlaying then
			continue
		end
		if track.Animation.Parent then
			local emoteName = track.Animation.Parent.Name
			if LegacyDefaultEmotes[emoteName] then
				disconnectAndRemoveConnection(Connection.EmoteStopped)
				disconnectAndRemoveConnection(Connection.EmoteKeyframeReached)

				currentEmoteTrack = track
				wheelEmotePlaying = false
				currentMoodTrack:Stop()

				connections[Connection.EmoteStopped] = currentEmoteTrack.Stopped:Connect(function()
					--Add a delay to account for fade time of animations
					wait(EMOTE_LOOP_TRANSITION_TIME)
					if not checkEmotePlaying(humanoid) and not wheelEmotePlaying then
						resumeMoodAfterEmote()
					end
				end)

				-- Use KeyframeReached as a backup since Stopped() fires inconsistently for non-looping animations
				connections[Connection.EmoteKeyframeReached] = currentEmoteTrack.KeyframeReached:Connect(function(frameName)
					if frameName == "End" then
						--Add a delay to account for fade time of animations
						wait(EMOTE_LOOP_TRANSITION_TIME)
						if not checkEmotePlaying(humanoid) and not wheelEmotePlaying then
							resumeMoodAfterEmote()
						end
					end
				end)
				emoteIsPlaying = true
			end
		end
	end
	return emoteIsPlaying
end

emoteChattedConnection = LocalPlayer.Chatted:Connect(function(msg)
	if not moodCoreScriptEnabled or currentMoodTrack == nil then
		return
	end

	if LocalPlayer.Character then
		local humanoid = LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
		if humanoid then
			local emote = ""
			if (string.sub(msg, 1, 3) == "/e ") then
				emote = string.sub(msg, 4)
			elseif (string.sub(msg, 1, 7) == "/emote ") then
				emote = string.sub(msg, 8)
			end

			if LegacyDefaultEmotes[emote] then
				wait(EMOTE_LOOP_TRANSITION_TIME)
				checkEmotePlaying(humanoid)
			end
		end
	end
end)

local function stopAndDestroyCurrentMoodTrack()
	if currentMoodTrack ~= nil then
		currentMoodTrack:Stop()
		currentMoodTrack:Destroy()
		currentMoodTrack = nil
	end
end

local function stopAndDestroyCurrentMoodTrackConnections()
	stopAndDestroyCurrentMoodTrack()
	disconnectAndRemoveConnection(Connection.EmoteStopped)
	disconnectAndRemoveConnection(Connection.EmoteKeyframeReached)
	disconnectAndRemoveConnection(Connection.AnimationInstanceChanged)
	disconnectAndRemoveConnection(Connection.EmoteTriggered)
	currentMoodAnimationInstance = nil
end

local function updateCharacterMoodOnAnimatorAdded(character, moodAnimation, humanoid, animator)
	-- play mood animation
	currentMoodTrack = animator:LoadAnimation(currentMoodAnimationInstance)
	currentMoodTrack.Priority = currentMoodTrackPriority

	if game:GetFastFlag("AvatarMoodWaitForAnimateInitDone") then
		--note: this wait is needed because Animate script has code in it to stop all animation tracks in it initially
		--and we don't want the mood track to get stopped right on/before even playing
		task.delay(0.1, function()
			if currentEmoteTrack == nil then
				if game:GetFastFlag("AvatarMoodMakeSureMoodTrackAvailable") then
					if currentMoodAnimationInstance then
						if not currentMoodTrack then
							currentMoodTrack = animator:LoadAnimation(currentMoodAnimationInstance)
						end
						if currentMoodTrack then
							currentMoodTrack.Priority = currentMoodTrackPriority
							currentMoodTrack:Play()
						end
					end
				else
					currentMoodTrack:Play()
				end
			end

			-- listen for emotes
			disconnectAndRemoveConnection(Connection.EmoteTriggered)

			connections[Connection.EmoteTriggered] = humanoid.EmoteTriggered:Connect(onEmoteTriggered)
		end)		
	else
		if currentEmoteTrack == nil then
			currentMoodTrack:Play()
		end

		-- listen for emotes
		disconnectAndRemoveConnection(Connection.EmoteTriggered)

		connections[Connection.EmoteTriggered] = humanoid.EmoteTriggered:Connect(onEmoteTriggered)
	end
end

local function updateCharacterMoodOnHumanoidAdded(character, moodAnimation, humanoid)
	local animator = humanoid:FindFirstChild("Animator")
	if animator then
		updateCharacterMoodOnAnimatorAdded(character, moodAnimation, humanoid, animator)
	end

	if connections[Connection.HumanoidAnimatorAdded] then
		disconnectAndRemoveConnection(Connection.HumanoidAnimatorAdded)
	end

	connections[Connection.HumanoidAnimatorAdded] = humanoid.ChildAdded:Connect(function(child)
		if child.Name == "Animator" then
			updateCharacterMoodOnAnimatorAdded(character, moodAnimation, humanoid, child)
		end
	end)
end

local function updateCharacterMood(character, moodAnimation)
	if character == nil or moodAnimation == nil or not moodCoreScriptEnabled then
		return
	end

	if connections[Connection.AnimationInstanceChanged] then
		disconnectAndRemoveConnection(Connection.AnimationInstanceChanged)
	end

	if connections[Connection.CharacterHumanoidAdded] then
		disconnectAndRemoveConnection(Connection.CharacterHumanoidAdded)
	end

	stopAndDestroyCurrentMoodTrack()

	currentMoodAnimationInstance = moodAnimation
	connections[Connection.AnimationInstanceChanged] = currentMoodAnimationInstance.Changed:Connect(function(property)
		updateCharacterMood(character, moodAnimation)
	end)

	local humanoid = character:FindFirstChildWhichIsA("Humanoid")
	if humanoid then
		updateCharacterMoodOnHumanoidAdded(character, moodAnimation, humanoid)
	end

	connections[Connection.CharacterHumanoidAdded] = character.ChildAdded:Connect(function(child)
		if child:IsA("Humanoid") then
			updateCharacterMoodOnHumanoidAdded(character, moodAnimation, humanoid)
		end
	end)
end

function initAvatarMood(animateScript)
	-- wait for character to be ready
	local animateScriptHasMoods = animateScript:FindFirstChild("MoodsEnabled")

	disconnectAndRemoveConnection(Connection.AnimateScriptMoodAdded)
	disconnectAndRemoveConnection(Connection.AnimateScriptMoodRemoved)

	if animateScriptHasMoods then
		moodCoreScriptEnabled = false
		return
	end

	local moodChild = animateScript:FindFirstChild("mood")

	if moodChild then
		if #moodChild:GetChildren() > 0 then
			if game:GetFastFlag("AvatarMoodValidateMoodAnimation") then
				updateCharacterMood(LocalPlayer.Character, moodChild:FindFirstChildWhichIsA("Animation"))
			else
				local moodAnimation = moodChild:GetChildren()[1]
				updateCharacterMood(LocalPlayer.Character, moodAnimation)
			end
		end

		disconnectAndRemoveConnection(Connection.MoodChildAdded)

		-- need to use ChildAdded to get moodAnimation as descendants may not have replicated yet
		connections[Connection.MoodChildAdded] = moodChild.ChildAdded:Connect(function(moodAnimation)
			if game:GetFastFlag("AvatarMoodValidateMoodAnimation") then
				if moodAnimation:IsA("Animation") then
					updateCharacterMood(LocalPlayer.Character, moodAnimation)
				end
			else
				updateCharacterMood(LocalPlayer.Character, moodAnimation)
			end
		end)
	else
		stopAndDestroyCurrentMoodTrackConnections()
	end

	connections[Connection.AnimateScriptMoodAdded] = animateScript.ChildAdded:Connect(function(child)
		if child.Name == "mood" then
			if #child:GetChildren() > 0 then
				local moodAnimation = child:GetChildren()[1]
				updateCharacterMood(LocalPlayer.Character, moodAnimation)
			end

			disconnectAndRemoveConnection(Connection.MoodChildAdded)

			-- need to use ChildAdded to get moodAnimation as descendants may not have replicated yet
			connections[Connection.MoodChildAdded] = child.ChildAdded:Connect(function(moodAnimation)
				updateCharacterMood(LocalPlayer.Character, moodAnimation)
			end)
		elseif child.Name == "MoodsEnabled" then
			moodCoreScriptEnabled = false
		end
	end)

	connections[Connection.AnimateScriptMoodRemoved] = animateScript.ChildRemoved:Connect(function(child)
		if child.Name == "mood" then
			local otherMood = animateScript:FindFirstChild("mood")
			if otherMood then
				updateCharacterMood(LocalPlayer.Character, otherMood:FindFirstChildWhichIsA("Animation"))
			else
				stopAndDestroyCurrentMoodTrackConnections()
			end
		end
	end)
end

local function waitForAnimateScript()
	local animScript = LocalPlayer.Character:FindFirstChild("Animate")
	if animScript then
		initAvatarMood(animScript)
	end

	disconnectAndRemoveConnection(Connection.AnimateScriptAdded)
	connections[Connection.AnimateScriptAdded] = LocalPlayer.Character.ChildAdded:Connect(function(child)
		if child.Name == "Animate" then
			initAvatarMood(child)
		end
	end)
end

-- Only play moods if character has a dynamic head.
local function onHeadAdded(head)
	if head:FindFirstChildWhichIsA("FaceControls") then
		waitForAnimateScript()
	end

	disconnectAndRemoveConnection(Connection.HeadChildAdded)

	connections[Connection.HeadChildAdded] = head.ChildAdded:Connect(function(child)
		if child:IsA("FaceControls") then
			waitForAnimateScript()
		end
	end)
end

local function syncWithStreamTrack(streamTrack)
	-- disconnect any previous stream track listener
	disconnectAndRemoveConnection(Connection.StreamTrackStopped)

	-- move Mood to blend with Streaming animation
	switchPriority(Enum.AnimationPriority.Idle)

	-- listen for when the track stops
	connections[Connection.StreamTrackStopped] = streamTrack.Stopped:Connect(function()
		-- disconnect the track listener
		disconnectAndRemoveConnection(Connection.StreamTrackStopped)
		-- move Mood to blend with Locomotion
		switchPriority(Enum.AnimationPriority.Core)
	end)
end

local function onAnimatorAdded(animator)
	-- disconnect any previous animator listener
	disconnectAndRemoveConnection(Connection.AnimationStreamTrackPlayed)
	-- listen for animations played on this animator

	connections[Connection.AnimationStreamTrackPlayed] = animator.AnimationStreamTrackPlayed:Connect(function(track)
		syncWithStreamTrack(track)
	end)

	-- check if streaming animation is already playing
	local coreTracks = animator:GetPlayingAnimationTracksCoreScript()
	local streamTrack = nil
	for _, t in coreTracks do
		if t:IsA("AnimationStreamTrack") then
			streamTrack = t
			break
		end
	end

	if streamTrack then
		syncWithStreamTrack(streamTrack)
	else
		-- move Mood to blend with Locomotion
		switchPriority(Enum.AnimationPriority.Core)
	end
end

local function onAnimatorRemoving_Deprecated(animator)
	assert(not game:GetFastFlag("AvatarMoodSearchForReplacementWhenRemovingAnimator"))

	-- clear connections
	disconnectAndRemoveConnection(Connection.AnimationStreamTrackPlayed)
	disconnectAndRemoveConnection(Connection.StreamTrackStopped)
	-- move Mood to blend with Locomotion
	switchPriority(Enum.AnimationPriority.Core)
end

local function onAnimatorRemoving(player, animator)
	assert(game:GetFastFlag("AvatarMoodSearchForReplacementWhenRemovingAnimator"))

	-- clear connections
	disconnectAndRemoveConnection(Connection.AnimationStreamTrackPlayed)
	disconnectAndRemoveConnection(Connection.StreamTrackStopped)
	-- move Mood to blend with Locomotion
	switchPriority(Enum.AnimationPriority.Core)

	-- search for any remainig Animator in the hierarchy
	local animator = getPlayerAnimator(player)
	if animator then
		onAnimatorAdded(animator)
	end
end

-- Update mood whenever character head is changed
local function onCharacterAdded(player, character)
	local head = character:FindFirstChild("Head")
	if head then
		onHeadAdded(head)
	end

	connections[Connection.CharacterChildAdded] = character.ChildAdded:Connect(function(child)
		if child.Name == "Head" then
			onHeadAdded(child)
		end
	end)

	connections[Connection.CharacterChildRemoved] = character.ChildRemoved:Connect(function(child)
		if child.Name == "Head" then
			stopAndDestroyCurrentMoodTrack()
			local otherHead = character:FindFirstChild("Head")
			if otherHead then
				onHeadAdded(otherHead)
			end
		end
	end)

	connections[Connection.DescendantAdded] = character.DescendantAdded:Connect(function(descendant)
		if descendant:IsA("Animator") then
			onAnimatorAdded(descendant)
		end
	end)
	local animator = character:FindFirstChildWhichIsA("Animator", true)
	if animator then
		onAnimatorAdded(animator)
	end

	connections[Connection.DescendantRemoving] = character.DescendantRemoving:Connect(function(descendant)
		if descendant:IsA("Animator") then
			if game:GetFastFlag("AvatarMoodSearchForReplacementWhenRemovingAnimator") then
				onAnimatorRemoving(player, descendant)
			else
				onAnimatorRemoving_Deprecated(descendant)
			end
		end
	end)
end

local function onCharacterRemoving(character)
	stopAndDestroyCurrentMoodTrack()
	for _, connection in pairs(connections) do
		if connection then
			connection:Disconnect()
		end
	end
	table.clear(connections)
end

if LocalPlayer.Character then
	onCharacterAdded(LocalPlayer, LocalPlayer.Character)
end

LocalPlayer.CharacterAdded:Connect(function(character)
	onCharacterAdded(LocalPlayer, character)
end)
LocalPlayer.CharacterRemoving:Connect(onCharacterRemoving)
