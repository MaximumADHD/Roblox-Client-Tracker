--[[
	Utility used by the AvatarViewport that holds and manages updates to the character models.
	To prevent "pop in" when applying layered clothing, we need to have two R15 models, one being updated in the background
	and one being actually shown. This CharacterModelPool is based on the CharacterModelPool for the CharacterManager in
	AvatarExperience
]]
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local CorePackages = game:GetService("CorePackages")
local Promise = require(CorePackages.Promise)

local OFFSCREEN_CHARACTER_CFRAME = CFrame.new(Vector3.new(0, 150, 0))

local CLUSTER_COMPOSITION_TIMEOUT_MS = game:DefineFastInt("InspectAndBuyClusterCompositionTimeoutMs", 3000)

local CharacterModelPool = {}
CharacterModelPool.__index = CharacterModelPool

--[[
	Setup r15 and r6 player models and a specific default cframePosition.
	Store these models in RobloxReplicatedStorage until it is decided that one is needed by calling maybeUpdateCharacter
]]
local function setupCharacterModels(cframePos)
	local r6 = Players:CreateHumanoidModelFromDescription(Instance.new("HumanoidDescription"), Enum.HumanoidRigType.R6)
	local r15 = Players:CreateHumanoidModelFromDescription(Instance.new("HumanoidDescription"), Enum.HumanoidRigType.R15)

	r6.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	r15.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	r6.HumanoidRootPart.Anchored = true
	r15.HumanoidRootPart.Anchored = true
	r6.Parent = RobloxReplicatedStorage
	r15.Parent = RobloxReplicatedStorage

	-- Default Avatar position in the workspace.
	r6.HumanoidRootPart.CFrame = CFrame.new(cframePos)

	r15:SetPrimaryPartCFrame(r6.HumanoidRootPart.CFrame)

	return  r6, r15
end

--[[
	Create a new CharacterModelPool
	@param worldModelRef The reference to the WorldModel that the player models will be parented to
	@param cframePos The Vector3 CFrame Position of where the default model position should be
	@param rigType the Enum.HumanoidRigType value for the model
]]
function CharacterModelPool.new(worldModelRef, cframePos, rigType)
	local self = {}
	setmetatable(self, CharacterModelPool)

	local r6, r15 = setupCharacterModels(cframePos)

	-- set r6 and r15 on self.
	-- That way, we only setupCharacterModels once and can access the stored character models elsewhere
	self.r6 = r6
	self.r15current = r15
	self.r15offScreen = r15:Clone()
	self.r15offScreen.Parent = RobloxReplicatedStorage

	self.avatarType = rigType

	self.updateInProgress = false
	self.mostRecentWaitingUpdate = nil
	self.worldModelRef = worldModelRef

	return self
end

local function hasLayeredAccessoryUpdates(oldDescription, newDescription)
	local oldLCAccessories = oldDescription:GetAccessories(--[[includeRigidAccessories = ]] false)
	local newLCAccessories = newDescription:GetAccessories(--[[includeRigidAccessories = ]] false)

	if #newLCAccessories == 0 then
		return false
	end

	if #oldLCAccessories ~= #newLCAccessories then
		return true
	end

	local oldLCSet = {}
	for _, lcMetaData in ipairs(oldLCAccessories) do
		oldLCSet[lcMetaData.AssetId] = true
	end

	for _, lcMetaData in ipairs(newLCAccessories) do
		if not oldLCSet[lcMetaData.AssetId] then
			return true
		end
	end

	return false
end

-- Do a layered clothing update to the offscreen character and then swap it with the on screen character.
function CharacterModelPool:_doUpdateCharacter(newHumanoidDescription)
	-- Model needs to be in workspace rather than RobloxReplicatedStorage for ClusterComposition
	self.r15offScreen.HumanoidRootPart.CFrame = OFFSCREEN_CHARACTER_CFRAME
	self.r15offScreen.Parent = self.worldModelRef:getValue()

	self.r15offScreen.Humanoid:ApplyDescription(newHumanoidDescription)
	self.r15offScreen.Parent = self.worldModelRef:getValue()

	-- If ClusterCompositionFinished is taking too long to fire or has failed to fire for some reason,
	-- we want to just timeout and display the avatar before it has finished compositing.
	Promise.race({
		Promise.fromEvent(self.r15offScreen.Humanoid.ClusterCompositionFinished),
		Promise.delay(CLUSTER_COMPOSITION_TIMEOUT_MS * 0.001)
	}):await()

	local currentCFrame = self.r15current.HumanoidRootPart.CFrame
	self.r15offScreen.HumanoidRootPart.CFrame = currentCFrame

	self.r15current.HumanoidRootPart.CFrame = OFFSCREEN_CHARACTER_CFRAME

	self.r15offScreen, self.r15current = self.r15current, self.r15offScreen
end

function CharacterModelPool:_finishUpdate()
	self.updateInProgress = false
	if self.mostRecentWaitingUpdate ~= nil then
		local waitingUpdate = self.mostRecentWaitingUpdate
		self.mostRecentWaitingUpdate = nil
		coroutine.resume(waitingUpdate)
	end
end

function CharacterModelPool:maybeUpdateCharacter(newHumanoidDescription)
	if self.avatarType == Enum.HumanoidRigType.R6 then
		self.r6.Parent = self.worldModelRef:getValue()
		self.r6.Humanoid:ApplyDescription(newHumanoidDescription)
		return true
	end

	-- An update is already in progress, need to wait until it is completed before we can update.
	if self.updateInProgress then
		if self.mostRecentWaitingUpdate ~= nil then
			-- The last self.mostRecentWaitingUpdate is no longer necessary and can be superceded by the current update
			coroutine.resume(self.mostRecentWaitingUpdate)
		end

		self.mostRecentWaitingUpdate = coroutine.running()
		coroutine.yield()

		if self.updateInProgress then
			-- This update was superceded
			return false
		end
	end

	self.updateInProgress = true

	local currentHumanoidDescription = self.r15current.Humanoid:GetAppliedDescription()
	if not hasLayeredAccessoryUpdates(currentHumanoidDescription, newHumanoidDescription) then
		self.r15current.Parent = self.worldModelRef:getValue()
		self.r15current.Humanoid:ApplyDescription(newHumanoidDescription)

		self:_finishUpdate()
		return true
	end

	self:_doUpdateCharacter(newHumanoidDescription)

	self:_finishUpdate()

	return true
end

return CharacterModelPool