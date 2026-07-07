--!strict
-- Server CoreScript that disables skinning on character joints when a UGC emote
-- with significant bone translation is playing.
--
-- Gated by DFFlag WeldRigidEnableSkinningProperty (for Weld/RigidConstraint)
-- and DFFlag JointEnableSkinningProperty (for Motor6D/AnimationConstraint/BallSocketConstraint).

local Players = game:GetService("Players")
local InsertService = game:GetService("InsertService")

local TRANSLATION_THRESHOLD = game:DefineFastInt("UGCEmoteSkinningDisableTranslationThresholdMillistuds", 100) * 0.001

local clipMetadataCache: { [string]: { isUGCEmote: boolean, maxTranslation: number } } = {}

local function getClipMetadata(animationId: string): { isUGCEmote: boolean, maxTranslation: number }?
	if clipMetadataCache[animationId] then
		return clipMetadataCache[animationId]
	end

	local numericId = tonumber(animationId:match("%d+"))
	if not numericId then
		return nil
	end

	local success, model = pcall(function()
		return InsertService:LoadAsset(numericId)
	end)

	if not success or not model then
		return nil
	end

	local clip = model:FindFirstChildWhichIsA("AnimationClip", true)
	if not clip then
		model:Destroy()
		return nil
	end

	local isUGCEmote = clip:GetAttribute("isUGCEmote")
	local maxTranslation = clip:GetAttribute("maxPartTranslation")

	model:Destroy()

	local metadata = {
		isUGCEmote = isUGCEmote == true,
		maxTranslation = (typeof(maxTranslation) == "number") and maxTranslation or 0,
	}
	clipMetadataCache[animationId] = metadata
	return metadata
end

local function setAllJointsSkinning(character: Model, enabled: boolean)
	for _, descendant in character:GetDescendants() do
		if descendant:IsA("Motor6D") or descendant:IsA("AnimationConstraint")
			or descendant:IsA("BallSocketConstraint")
			or descendant:IsA("Weld") or descendant:IsA("RigidConstraint") then
			(descendant :: any).EnableSkinning = enabled
		end
	end
end

local activeEmoteConnections: { [Model]: RBXScriptConnection } = {}

local function clearActiveEmoteConnection(character: Model)
	if activeEmoteConnections[character] then
		activeEmoteConnections[character]:Disconnect()
		activeEmoteConnections[character] = nil
	end
end

local function onCharacterRemoving(character: Model)
	clearActiveEmoteConnection(character)
end

local function onAnimationPlayed(character: Model, track: AnimationTrack)
	local animation = track.Animation
	if not animation then
		return
	end

	local animId = animation.AnimationId
	if animId == "" then
		return
	end

	task.spawn(function()
		local metadata = getClipMetadata(animId)
		if not metadata or not metadata.isUGCEmote then
			return
		end
		if metadata.maxTranslation <= TRANSLATION_THRESHOLD then
			return
		end
		if not track.IsPlaying then
			return
		end

		clearActiveEmoteConnection(character)

		setAllJointsSkinning(character, false)

		activeEmoteConnections[character] = track.Stopped:Connect(function()
			setAllJointsSkinning(character, true)
			clearActiveEmoteConnection(character)
		end)
	end)
end

local function onCharacterAdded(character: Model)
	local humanoid = character:WaitForChild("Humanoid")
	local animator = humanoid:WaitForChild("Animator") :: Animator

	animator.AnimationPlayed:Connect(function(track)
		onAnimationPlayed(character, track)
	end)
end

local function onPlayerAdded(player: Player)
	if player.Character then
		onCharacterAdded(player.Character)
	end
	player.CharacterAdded:Connect(onCharacterAdded)
	player.CharacterRemoving:Connect(onCharacterRemoving)
end

for _, player in Players:GetPlayers() do
	task.spawn(onPlayerAdded, player)
end
Players.PlayerAdded:Connect(onPlayerAdded)
