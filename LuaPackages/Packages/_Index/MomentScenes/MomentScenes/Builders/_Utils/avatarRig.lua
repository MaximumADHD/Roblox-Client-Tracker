-- Shared avatar model creation, Gear equip, and animation playback for scene
-- builders.
-- Uses Players:CreateHumanoidModelFromDescriptionAsync only — no deprecated
-- synchronous fallback, no test dummy fallback.
--
-- Emote ids are resolved through _Utils/loadAsset, because a catalog emote id
-- is a wrapper around the clip id rather than the clip itself — see
-- emoteAnimationId.

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local loadAssetUtil = require(script.Parent.loadAsset)

local STAGING_NAME = "MomentScenesStaging"
local R15_EQUIPPED_ANIMATION_ID = 507768375
local R6_EQUIPPED_ANIMATION_ID = 182393478
-- Classic rigs use a different tool-weld basis than RightGripAttachment.CFrame.
-- This is the R6 transform used by Avatar Experience's gear preview.
local R6_RIGHT_GRIP_C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-90), 0, 0)

-- AnimationTrack.Length reads 0 until the clip loads, and scene duration and
-- capabilities are derived from it, so settle it here rather than handing back a
-- track that claims zero length forever. Bounded because pose clips legitimately
-- have no length — same spin RCC thumbnail jobs use (AnimationHashEmbeddings).
local LENGTH_TIMEOUT_SECONDS = 2

--[[
	Run `visit` with `model` inside `container`, then put it back where it was.

	Several engine behaviours a recipe depends on only happen for a model that is
	a member of the DataModel, and a recipe builds its scene unparented. The
	pcall is so a throwing visit still leaves nothing behind.
]]
local function staged(model: Model, container: Instance, visit: () -> ())
	local previousParent = model.Parent
	local staging = Instance.new("Folder")
	staging.Name = STAGING_NAME
	staging.Parent = container
	model.Parent = staging
	-- Wrapped so pcall's signature carries a slot for the error to land in.
	local ok, err = pcall(function(): any?
		visit()
		return nil
	end)
	model.Parent = previousParent
	staging:Destroy()
	if not ok then
		error(err)
	end
end

--[[
	Settle the rig's joints so its parts sit where the description says.

	A rig built from a HumanoidDescription keeps bind-pose part CFrames until it
	is inside the DataModel. `Size` and `Humanoid.HipHeight` track the scales
	immediately, but `CFrame` does not: `Head.Position` is identical at
	HeightScale 0.7, 1.0 and 1.3 until this runs, so nothing can measure the
	rig's real shape before it.

	Two things have to happen, and only together. The rig must be a member of the
	DataModel — an unparented container does not count — and something must then
	read a part's transform, because the solve is lazy and parenting alone only
	marks it dirty. A round trip with no read in between leaves bind pose intact.
	Reading the root is not enough either; parts resolve one at a time.

	Once forced, the solved pose survives leaving, and holds through the handoff
	to a host's WorldModel and through a host `PivotTo`. Nothing here yields, so
	no frame is drawn while the rig is in Workspace.

	Workspace specifically, unlike the clip settling in `playEmote`. A container
	that is in the DataModel but never simulated does not solve: staged in
	ReplicatedStorage or Lighting, a HeightScale 0.7 rig reads its bind-pose
	1.5860 studs of Head above HRP, against 1.3448 in Workspace.

	Not covered by tests: lest does not solve joints at all, so a regression here
	is invisible to the suite and only shows up as subtly cropped framing.
]]
local function solveJoints(model: Model)
	staged(model, Workspace, function()
		for _, descendant in model:GetDescendants() do
			if descendant:IsA("BasePart") then
				-- The read is the entire point of this loop. Do not delete it.
				local _ = descendant.CFrame
			end
		end
	end)
end

local function createAvatar(description: HumanoidDescription, rigType: Enum.HumanoidRigType): Model
	local ok, model = pcall(function()
		return Players:CreateHumanoidModelFromDescriptionAsync(description, rigType)
	end)
	if not ok or model == nil then
		error(`avatarRig.createAvatar: CreateHumanoidModelFromDescriptionAsync failed: {model}`)
	end
	local hrp = model:FindFirstChild("HumanoidRootPart")
	if hrp ~= nil and hrp:IsA("BasePart") then
		hrp.Anchored = true
		model.PrimaryPart = hrp
	end
	-- Before the recipe sees it, so framing measures a real rig instead of
	-- guessing at one. Anchored first: the visit is a frame short of any physics
	-- step, but an unanchored rig has no business entering Workspace at all.
	solveJoints(model)
	return model
end

--[[
	Turn an emote asset id into something `Animation.AnimationId` can actually
	play.

	Two different ids arrive looking identical. A **clip** id — a
	KeyframeSequence, like the classic 507770239 wave — is directly playable. A
	**catalog emote** id is a wrapper Model whose child `Animation` holds the
	real clip id, one level in. Assign the wrapper id to `AnimationId` and
	nothing errors: the track loads, reports `Length` 0 forever, the bounded
	spin below burns its whole timeout, and the scene comes out with no clock —
	no scrubber and a `play()` that no-ops. Measured on catalog emote 3576686446
	("Hello"), Length went from 0.000 after 2.01s to 1.767 once resolved.

	One load tells them apart, because only the wrapper contains an `Animation`.
	Direct children only: an animation *pack* nests several clips at depth and
	picking one of those at random is worse than not resolving at all.

	`HumanoidDescription:GetEquippedEmotes` hands back catalog ids, so this is
	the shape real product data has — every emote id currently in this repo is a
	clip id, which is why nothing has hit it yet.

	Falls back to the id as given whenever the load fails or yields no
	`Animation`. That keeps a clip id working with no network, and leaves a
	genuinely bad id to fail honestly as a scene that reports no duration.

	Exported separately from `playEmote` so it can be exercised without loading a
	clip. Resolution is the part with branches; playing is the part that needs
	the network.
]]
local function emoteAnimationId(emoteId: number): string
	local direct = `rbxassetid://{emoteId}`
	local ok, wrapper = pcall(loadAssetUtil.loadAsset, emoteId)
	if not ok or wrapper == nil or typeof(wrapper) ~= "Instance" then
		return direct
	end
	local inner = wrapper:FindFirstChildWhichIsA("Animation")
	local resolved = if inner ~= nil and inner.AnimationId ~= "" then inner.AnimationId else direct
	wrapper:Destroy()
	return resolved
end

local function playAnimation(avatar: Model, name: string, animationId: string): AnimationTrack?
	local humanoid = avatar:FindFirstChildOfClass("Humanoid")
	if humanoid == nil then
		return nil
	end
	local existingAnimator = humanoid:FindFirstChildOfClass("Animator")
	local animator: Animator
	if existingAnimator ~= nil then
		animator = existingAnimator
	else
		animator = Instance.new("Animator")
		animator.Parent = humanoid
	end
	local animation = Instance.new("Animation")
	animation.Name = name
	animation.AnimationId = animationId
	animation.Parent = avatar

	local track: AnimationTrack? = nil
	-- Staged because a clip only resolves for a rig that is in the DataModel.
	-- Unparented, Length reads 0 forever: the spin below burns its whole timeout
	-- and then hands back a track claiming no duration, which downstream is a
	-- scene with no clock — no scrubber, and a play() that no-ops. Staged, the
	-- length is there on the first check and the loop never waits.
	--
	-- ReplicatedStorage rather than Workspace: settling a clip is allowed to
	-- yield, and nothing parked there is ever drawn. Joint solving cannot borrow
	-- this container — see solveJoints.
	staged(avatar, ReplicatedStorage, function()
		local ok, loaded = pcall(function()
			return animator:LoadAnimation(animation)
		end)
		if not ok or loaded == nil then
			return
		end
		loaded.Looped = true
		loaded:Play(0)
		local waitStart = os.clock()
		while loaded.Length == 0 do
			-- task.wait is resumed by the heartbeat, which an RCC script job that never calls
			-- RunService:Run() does not step, so the job would hang here.
			if RunService:IsRunning() then
				task.wait()
			else
				wait(0)
			end
			if os.clock() - waitStart > LENGTH_TIMEOUT_SECONDS then
				break
			end
		end
		loaded:AdjustSpeed(0)
		track = loaded
	end)
	return track
end

local function playEmote(avatar: Model, emoteId: number): AnimationTrack?
	if avatar:FindFirstChildOfClass("Humanoid") == nil then
		return nil
	end
	return playAnimation(avatar, "Live3DEmote", emoteAnimationId(emoteId))
end

local function equippedAnimationId(rigType: Enum.HumanoidRigType): number
	if rigType == Enum.HumanoidRigType.R6 then
		return R6_EQUIPPED_ANIMATION_ID
	end
	return R15_EQUIPPED_ANIMATION_ID
end

local function applyGearGrip(avatar: Model, tool: Tool, handle: BasePart, rigType: Enum.HumanoidRigType)
	local rightLimbName = if rigType == Enum.HumanoidRigType.R6 then "Right Arm" else "RightHand"
	local rightLimb = avatar:FindFirstChild(rightLimbName)
	if rightLimb == nil or not rightLimb:IsA("BasePart") then
		return
	end
	local rightGrip = rightLimb:FindFirstChild("RightGrip")
	if rightGrip == nil then
		local attachment = rightLimb:FindFirstChild("RightGripAttachment")
		if attachment == nil or not attachment:IsA("Attachment") then
			return
		end
		local weld = Instance.new("Weld")
		weld.Name = "RightGrip"
		weld.Part0 = rightLimb
		weld.C0 = if rigType == Enum.HumanoidRigType.R6 then R6_RIGHT_GRIP_C0 else attachment.CFrame
		weld.Parent = rightLimb
		rightGrip = weld
	end
	if rightGrip ~= nil and rightGrip:IsA("JointInstance") then
		if rigType == Enum.HumanoidRigType.R6 then
			rightGrip.C0 = R6_RIGHT_GRIP_C0
		end
		rightGrip.Part1 = handle
		rightGrip.C1 = tool.Grip
	end
end

--[[
	Load the Gear asset, take its first Tool descendant, and parent that Tool to
	the avatar. A Tool without a direct Handle BasePart cannot be equipped, so it
	is discarded rather than leaving loose geometry in the scene.

	Loaded code must not survive long enough to run when the Tool is mounted.
	Every LuaSourceContainer subclass is destroyed while the Tool is still under
	the InsertService wrapper. The Tool is then detached before the wrapper is
	destroyed, which also drops any sibling content outside the target Tool.
]]
local function equipGear(avatar: Model, gearAssetId: number, rigType: Enum.HumanoidRigType): AnimationTrack?
	local ok, loaded = pcall(loadAssetUtil.loadAsset, gearAssetId)
	if not ok then
		warn(`avatarRig.equipGear: Gear {gearAssetId} failed to load ({loaded})`)
		return nil
	end
	if typeof(loaded) ~= "Instance" then
		warn(`avatarRig.equipGear: Gear {gearAssetId} loaded a {typeof(loaded)}, expected an Instance`)
		return nil
	end
	local wrapper = loaded :: Instance
	local tool = wrapper:FindFirstChildWhichIsA("Tool", true)
	if tool == nil then
		wrapper:Destroy()
		return nil
	end
	local handle = tool:FindFirstChild("Handle")
	if handle == nil or not handle:IsA("BasePart") then
		wrapper:Destroy()
		return nil
	end
	for _, descendant in tool:GetDescendants() do
		if descendant:IsA("LuaSourceContainer") then
			descendant:Destroy()
		end
	end
	tool.Parent = avatar
	applyGearGrip(avatar, tool, handle, rigType)
	wrapper:Destroy()

	local animationId = equippedAnimationId(rigType)
	return playAnimation(avatar, "Live3DGearEquipped", `rbxassetid://{animationId}`)
end

return {
	createAvatar = createAvatar,
	solveJoints = solveJoints,
	playEmote = playEmote,
	emoteAnimationId = emoteAnimationId,
	equipGear = equipGear,
	equippedAnimationId = equippedAnimationId,
}
