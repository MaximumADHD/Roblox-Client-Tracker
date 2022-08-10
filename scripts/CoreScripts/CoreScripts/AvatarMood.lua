--[[
	// Filename: AvatarMood.lua
	// Version 0.1
	// Written by: jcampos and jlem
	// Description: Avatar's mood controller.
]]--
local moodAnimationsEnabled = game:GetEngineFeature("NewMoodAnimationTypeApiEnabled")
local userPlayEmoteByIdAnimTrackReturn = game:GetEngineFeature("PlayEmoteAndGetAnimTrackByIdApiEnabled")
game:DefineFastFlag("EmoteTriggeredSignalEnabledLua", false)

local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local log = require(RobloxGui.Modules.Logger):new(script.Name)

local playerAddedConnection = nil
local playerRemovingConnection = nil

local defaultMoodId = "rbxassetid://7715106138"
local defaultMoodAnimation = Instance.new("Animation")
defaultMoodAnimation.AnimationId = defaultMoodId

local currentMoodAnimationInstance = nil
local currentMoodTrack = nil
local localEmoteConnection = nil
local currentEmoteTrack = nil
local moodCoreScriptEnabled = true

local animateScriptMoodAddedConnection = nil
local animateScriptMoodRemovedConnection = nil
local animationInstanceChangedConnection = nil
local currentEmoteTrackStoppedConnection = nil

local emoteChattedConnection = nil

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

local function onEmoteTriggered(emoteSuccess, emoteTrack, humanoid)
	if not moodCoreScriptEnabled then 
		return
	end

	if emoteSuccess and humanoid and emoteTrack then	
		currentMoodTrack:Stop()
		currentEmoteTrack = emoteTrack
		currentEmoteTrackStoppedConnection = currentEmoteTrack.Stopped:Connect(function()
			currentEmoteTrack = nil
			currentMoodTrack:Play()
			currentEmoteTrackStoppedConnection:disconnect()
			currentEmoteTrackStoppedConnection = nil
		end)
	end
end

local function checkEmotePlaying(humanoid)
	local AnimationTracks = humanoid:GetPlayingAnimationTracks()
	local emoteIsPlaying = false

	-- Check all animation tracks to see if one of them is a default chat emote
	for i, track in pairs (AnimationTracks) do
		if track.Animation.Parent then
			local emoteName = track.Animation.Parent.Name
			if LegacyDefaultEmotes[emoteName] then
				if currentEmoteTrackStoppedConnection then
					currentEmoteTrackStoppedConnection:disconnect()
					currentEmoteTrackStoppedConnection = nil
				end
				currentEmoteTrack = track
				currentMoodTrack:Stop()

				currentEmoteTrackStoppedConnection = currentEmoteTrack.Stopped:Connect(function()
					--Add a delay to account for fade time of animations
					wait(EMOTE_LOOP_TRANSITION_TIME)
					if not checkEmotePlaying(humanoid) then
						currentEmoteTrackStoppedConnection:disconnect()
						currentEmoteTrackStoppedConnection = nil
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
	if not moodAnimationsEnabled or not moodCoreScriptEnabled then 
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

	if animationInstanceChangedConnection then
		animationInstanceChangedConnection:disconnect()
		animationInstanceChangedConnection = nil
	end
	
	local humanoid = character:WaitForChild("Humanoid")
	local animator = humanoid:WaitForChild("Animator")
	stopAndDestroyCurrentMoodTrack()
	
	currentMoodAnimationInstance = moodAnimation
	animationInstanceChangedConnection = currentMoodAnimationInstance.Changed:connect(function(property) 
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
		if localEmoteConnection then
			localEmoteConnection:disconnect()
			localEmoteConnection = nil
		end
		
		if game:GetFastFlag("EmoteTriggeredSignalEnabledLua") then
			localEmoteConnection = humanoid.EmoteTriggered:Connect(onEmoteTriggered)
		end
	end
end

function InitAvatarMood()
	-- wait for character to be ready
	local animateScript = LocalPlayer.Character:WaitForChild("Animate")
	local animateScriptHasMoods = animateScript:FindFirstChild("MoodsEnabled")

	if animateScriptMoodAddedConnection then
		animateScriptMoodAddedConnection:disconnect()
		animateScriptMoodAddedConnection = nil
	end

	if animateScriptMoodRemovedConnection then
		animateScriptMoodRemovedConnection:disconnect()
		animateScriptMoodRemovedConnection = nil
	end

	animateScript.ChildAdded:Connect(function(child)
		if child.Name == "MoodsEnabled" then
			moodCoreScriptEnabled = false
		end
	end)

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

		-- need to use ChildAdded to get moodAnimation as descendants may not have replicated yet
		moodChild.ChildAdded:Connect(function(moodAnimation)
			updateCharacterMood(LocalPlayer.Character, moodAnimation)
		end)
	else
		updateCharacterMood(LocalPlayer.Character, defaultMoodAnimation)
	end

	animateScriptMoodAddedConnection = animateScript.ChildAdded:Connect(function(child)
		if child.Name == "mood" then
			if #child:GetChildren() > 0 then
				local moodAnimation = child:GetChildren()[1]
				updateCharacterMood(LocalPlayer.Character, moodAnimation)
			end

			-- need to use ChildAdded to get moodAnimation as descendants may not have replicated yet
			child.ChildAdded:Connect(function(moodAnimation)
				updateCharacterMood(LocalPlayer.Character, moodAnimation)
			end)
		end
	end)

	animateScriptMoodRemovedConnection = animateScript.ChildRemoved:Connect(function(child)
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

-- Only play moods if character has a dynamic head
local function onHeadAdded(head)
	if head:FindFirstChildWhichIsA("FaceControls") then
		InitAvatarMood()
	end

	head.ChildAdded:Connect(function(child)
		if child:IsA("FaceControls") then
			InitAvatarMood()
		end
	end)
end

-- Update mood whenever character head is changed
local function onCharacterAdded(character)
    local head = character:FindFirstChild("Head")
	if head then
		onHeadAdded(head)
	end

	character.ChildAdded:Connect(function(child)
		if child.Name == "Head" then
			onHeadAdded(child)
		end
	end)

	character.ChildRemoved:Connect(function(child)
		if child.Name == "Head" then
			stopAndDestroyCurrentMoodTrack()
		end
	end)
end

local function onCharacterRemoving(character)
	stopAndDestroyCurrentMoodTrack()
end

if moodAnimationsEnabled then
	if LocalPlayer.Character then
		onCharacterAdded(LocalPlayer.Character)
	end

	LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
	LocalPlayer.CharacterRemoving:Connect(onCharacterRemoving)
end