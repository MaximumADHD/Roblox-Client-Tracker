--[[
	// Filename: AvatarMood.lua
	// Version 0.1
	// Written by: jcampos and jlem
	// Description: Avatar's mood controller.
]]--
local userPlayEmoteByIdAnimTrackReturn = game:GetEngineFeature("PlayEmoteAndGetAnimTrackByIdApiEnabled")
game:DefineFastFlag("EmoteTriggeredSignalEnabledLua2", false)

local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local log = require(RobloxGui.Modules.Logger):new(script.Name)

local playerAddedConnection = nil
local playerRemovingConnection = nil
local emoteChattedConnection = nil

local defaultMoodId = "rbxassetid://7715106138"
local defaultMoodAnimation = Instance.new("Animation")
defaultMoodAnimation.AnimationId = defaultMoodId

local currentMoodAnimationInstance = nil
local currentMoodTrack = nil
local currentEmoteTrack = nil
local moodCoreScriptEnabled = true

type connectionMap = {[string]: RBXScriptConnection}
local connections : connectionMap = {}

local Connection = {
	EmoteStopped = "currentEmoteTrackStopped",
	AnimationInstanceChanged = "animationInstanceChanged",
	EmoteTriggered = "localEmote",
	AnimateScriptAdded = "animateScriptAdded",
	AnimateScriptMoodAdded = "animateScriptMoodAdded",
	AnimateScriptMoodRemoved = "animateScriptMoodRemoved",
	MoodChildAdded = "moodChildAdded",
	HeadChildAdded = "headChildAdded",
	CharacterChildAdded = "characterChildAdded",
	CharacterChildRemoved = "characterChildRemoved",
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

local function disconnectAndRemoveConnection(key)
	if connections[key] ~= nil then
		connections[key]:Disconnect()
		connections[key] = nil
	end
end

local function onEmoteTriggered(emoteSuccess, emoteTrack)
	if not moodCoreScriptEnabled or currentMoodTrack == nil then 
		return
	end

	if emoteSuccess and emoteTrack then	
		currentMoodTrack:Stop()
		currentEmoteTrack = emoteTrack
		connections[Connection.EmoteStopped] = currentEmoteTrack.Stopped:Connect(function()
			currentEmoteTrack = nil
			currentMoodTrack:Play()
			disconnectAndRemoveConnection(Connection.EmoteStopped)
		end)
	end
end

local function checkEmotePlaying(humanoid)
	local AnimationTracks = humanoid:GetPlayingAnimationTracks()
	local emoteIsPlaying = false

	-- check all animation tracks to see if one of them is a default chat emote
	for i, track in pairs (AnimationTracks) do
		if track.Animation.Parent then
			local emoteName = track.Animation.Parent.Name
			if LegacyDefaultEmotes[emoteName] then
				if connections[Connection.EmoteStopped] then
					disconnectAndRemoveConnection(Connection.EmoteStopped)
				end
				currentEmoteTrack = track
				currentMoodTrack:Stop()

				connections[Connection.EmoteStopped] = currentEmoteTrack.Stopped:Connect(function()
					--Add a delay to account for fade time of animations
					wait(EMOTE_LOOP_TRANSITION_TIME)
					if not checkEmotePlaying(humanoid) then
						disconnectAndRemoveConnection(Connection.EmoteStopped)
						currentEmoteTrack = nil
						currentMoodTrack:Play()
					end
				end)
				emoteIsPlaying = true
			end
		end
	end
	return emoteIsPlaying
end

emoteChattedConnection = LocalPlayer.Chatted:connect(function(msg)
	if not moodCoreScriptEnabled or currentMoodTrack == nil then 
		return
	end

	if LocalPlayer.Character then
		local humanoid = LocalPlayer.Character:FindFirstChild("Humanoid")
		if humanoid then
			local emote = ""
			if (string.sub(msg, 1, 3) == "/e ") then
				emote = string.sub(msg, 4)
			elseif (string.sub(msg, 1, 7) == "/emote ") then
				emote = string.sub(msg, 8)
			end
		
			if LegacyDefaultEmotes[emote] then
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

local function updateCharacterMood(character, moodAnimation)
	if character == nil or moodAnimation == nil or not moodCoreScriptEnabled then
		return
	end

	if connections[Connection.AnimationInstanceChanged] then
		disconnectAndRemoveConnection(Connection.AnimationInstanceChanged)
	end
	
	local humanoid = character:WaitForChild("Humanoid")
	local animator = humanoid:WaitForChild("Animator")
	stopAndDestroyCurrentMoodTrack()
	
	currentMoodAnimationInstance = moodAnimation
	connections[Connection.AnimationInstanceChanged] = currentMoodAnimationInstance.Changed:connect(function(property) 
		updateCharacterMood(character, moodAnimation) 
	end)

	-- play mood animation
	currentMoodTrack = animator:LoadAnimation(currentMoodAnimationInstance)
	currentMoodTrack.Priority = Enum.AnimationPriority.Core

	if currentEmoteTrack == nil then
		currentMoodTrack:Play()
	end

	if userPlayEmoteByIdAnimTrackReturn then
		-- listen for emotes
		disconnectAndRemoveConnection(Connection.EmoteTriggered)
		
		if game:GetFastFlag("EmoteTriggeredSignalEnabledLua2") then
			connections[Connection.EmoteTriggered] = humanoid.EmoteTriggered:Connect(onEmoteTriggered)
		end
	end
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
			local moodAnimation = moodChild:GetChildren()[1]
			updateCharacterMood(LocalPlayer.Character, moodAnimation)
		end

		disconnectAndRemoveConnection(Connection.MoodChildAdded)

		-- need to use ChildAdded to get moodAnimation as descendants may not have replicated yet
		connections[Connection.MoodChildAdded] = moodChild.ChildAdded:Connect(function(moodAnimation)
			updateCharacterMood(LocalPlayer.Character, moodAnimation)
		end)
	else
		updateCharacterMood(LocalPlayer.Character, defaultMoodAnimation)
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
				updateCharacterMood(LocalPlayer.Character, defaultMoodAnimation)
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

-- Update mood whenever character head is changed
local function onCharacterAdded(character)
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
	onCharacterAdded(LocalPlayer.Character)
end

LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
LocalPlayer.CharacterRemoving:Connect(onCharacterRemoving)