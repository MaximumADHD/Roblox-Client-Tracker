--!nonstrict
--[[
	Utility used by the AvatarViewport that holds and manages updates to the character models.
	To prevent "pop in" when applying layered clothing, we need to have two R15 models, one being updated in the background
	and one being actually shown. This CharacterModelPool is based on the CharacterModelPool for the CharacterManager in
	AvatarExperience
]]
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local CorePackages = game:GetService("CorePackages")

local Promise = require(CorePackages.Packages.Promise)

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
function CharacterModelPool.new(worldModelRef, cframePos, rigType, mockApplyDescription)
	local self = {}
	setmetatable(self, CharacterModelPool)

	-- Should only be used by the unit tests!
	self.mockApplyDescription = mockApplyDescription

	local r6, r15 = setupCharacterModels(cframePos)

	-- Only need one r6 model since we don't need one offscreen and one onscreen.
	-- r6 models cannot equip LC, so the purpose for switching the models out for
	-- deformation does not exist.
	self.r6 = r6
	self.r15current = r15
	self.r15offScreen = r15:Clone()
	self.r15offScreen.Parent = RobloxReplicatedStorage

	self.avatarType = rigType
	self.worldModelRef = worldModelRef

	-- The promise for whether or not we are currently updating either the on screen or offscreen R15 avatar
	self.inProgressPromise = nil
	-- The promise waiting to update the R15 avatar
	self.waitingPromise = nil
	-- The promise currently updating the R6 avatar
	self.r6Promise = nil

	self.destroyed = false

	return self
end

function CharacterModelPool:setupAnimations(r6Animations, r15Animations)
	r6Animations.Parent = self.r6
	r15Animations.Parent = self.r15current
	r15Animations.Archivable = true
	local animationsClone = r15Animations:Clone()
	animationsClone.Parent = self.r15offScreen
	animationsClone.Archivable = false
	r15Animations.Archivable = false
end

function CharacterModelPool:getCurrentCharacter()
	if self.avatarType == Enum.HumanoidRigType.R15 then
		return self.r15current
	else
		return self.r6
	end
end

function CharacterModelPool:isR15()
	return self.avatarType == Enum.HumanoidRigType.R15
end

function CharacterModelPool:syncRotation(oldCharacter, currentCharacter)
	-- New model needs to have the same rotation as the old model.
	local _, _, _, R00, R01, R02, R10, R11, R12, R20, R21, R22 = oldCharacter.HumanoidRootPart.CFrame:components()
	local currentCFrameP = currentCharacter.HumanoidRootPart.CFrame.p
	currentCharacter.HumanoidRootPart.CFrame = CFrame.new(currentCFrameP.X, currentCFrameP.Y, currentCFrameP.Z,
		R00, R01, R02, R10, R11, R12, R20, R21, R22)
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

local function hasWrapLayer(model)
	return model:FindFirstChildWhichIsA("WrapLayer", --[[recursive = ]] true) ~= nil
end

function CharacterModelPool:_doUpdateR6(newHumanoidDescription)
	return Promise.new(function(resolve, reject)
		self.r6.Parent = self.worldModelRef:getValue()
		if self.mockApplyDescription then
			self.mockApplyDescription(self.r6, newHumanoidDescription)
		else
			self.r6.Humanoid:ApplyDescription(newHumanoidDescription)
		end
		-- Don't return self.r6 directly in case the avatar type has changed while applying this
		resolve(self:getCurrentCharacter())
	end)
end

function CharacterModelPool:_doSimpleUpdateR15(newHumanoidDescription)
	return Promise.new(function(resolve, reject)
		self.r15current.Parent = self.worldModelRef:getValue()
		if self.mockApplyDescription then
			self.mockApplyDescription(self.r15current, newHumanoidDescription)
		else
			self.r15current.Humanoid:ApplyDescription(newHumanoidDescription)
		end

		resolve(self.r15current)
	end)
end

function CharacterModelPool:_updateOffscreenR15(newHumanoidDescription)
	return Promise.new(function(resolve, reject)
		-- Model needs to be in workspace for ClusterComposition
		self.r15offScreen.HumanoidRootPart.CFrame = OFFSCREEN_CHARACTER_CFRAME
		self.r15offScreen.Parent = self.worldModelRef:getValue()

		if self.mockApplyDescription then
			self.mockApplyDescription(self.r15offScreen, newHumanoidDescription)
		else
			self.r15offScreen.Humanoid:ApplyDescription(newHumanoidDescription)
		end

		resolve(self.r15offScreen)
	end)
end

-- Resolves with a promise for if the character was layered or not
local function waitForClusterCompositionFinished(r15offScreen)
	if hasWrapLayer(r15offScreen) then
		-- If ClusterCompositionFinished is taking too long to fire or has failed to fire for some reason,
		-- we want to just timeout and display the avatar before it has finished compositing.
		return Promise.race({
			Promise.fromEvent(r15offScreen.Humanoid.ClusterCompositionFinished),
			Promise.delay(CLUSTER_COMPOSITION_TIMEOUT_MS * 0.001)
		}):andThen(function()
			return true
		end)
	end

	return Promise.resolve(false)
end

function CharacterModelPool:_completeUpdate()
	local currentCFrame = self.r15current.HumanoidRootPart.CFrame
	self.r15offScreen.HumanoidRootPart.CFrame = currentCFrame

	self.r15current.HumanoidRootPart.CFrame = OFFSCREEN_CHARACTER_CFRAME
	self.r15current.Parent = RobloxReplicatedStorage

	self.r15offScreen, self.r15current = self.r15current, self.r15offScreen

	return self.r15current
end

function CharacterModelPool:_doUpdateR15(newHumanoidDescription)
	local currentHumanoidDescription = self.r15current.Humanoid:GetAppliedDescription()
	if not hasLayeredAccessoryUpdates(currentHumanoidDescription, newHumanoidDescription) then
		return self:_doSimpleUpdateR15(newHumanoidDescription)
	end

	self.inProgressPromise = self:_updateOffscreenR15(newHumanoidDescription)
		:andThen(waitForClusterCompositionFinished)
		:andThen(function()
			return self:_completeUpdate()
		end)
	return self.inProgressPromise
end

--[[
	A function that returns a promise of updating a character model based on
	a given newHumanoidDescription. The use of promises here allows for easy handling
	of cases where no update is necessary after the call to the function. These cases include
	another call to the function superceding the earlier one, calling stop on the pool, and calling
	onDestroy on the pool.
]]
function CharacterModelPool:maybeUpdateCharacter(newHumanoidDescription)
	if self.avatarType == Enum.HumanoidRigType.R6 then
		-- R6 uses a different promise since we don't have to worry about different character models
		self.r6Promise = self:_doUpdateR6(newHumanoidDescription)
		return self.r6Promise
	end

	-- An update is already in progress, need to wait until it is completed before we can update.
	if self.inProgressPromise and self.inProgressPromise:getStatus() == Promise.Status.Started then
		local oldWaitingPromise = self.waitingPromise

		self.waitingPromise = self.inProgressPromise:andThen(function()
			return self:_doUpdateR15(newHumanoidDescription)
		end)

		if oldWaitingPromise then
			-- Cancel old waiting promise because it has been superceded
			oldWaitingPromise:cancel()
		end

		return self.waitingPromise
	end

	return self:_doUpdateR15(newHumanoidDescription)
end

function CharacterModelPool:switchAvatarType(newType)
	if newType == self.avatarType then
		return self:getCurrentCharacter()
	end

	self:_cancelPromises()

	self.avatarType = newType

	local currentCharacter, oldCharacter
	if newType == Enum.HumanoidRigType.R6 then
		currentCharacter = self.r6
		oldCharacter = self.r15current
	else
		currentCharacter = self.r15current
		oldCharacter = self.r6
	end

	oldCharacter.Parent = RobloxReplicatedStorage
	oldCharacter.Humanoid:UnequipTools()

	self:syncRotation(oldCharacter, currentCharacter)

	return currentCharacter
end

function CharacterModelPool:start()

end

local function cancelPromise(promise)
	if promise then
		promise:cancel()
	end
end

function CharacterModelPool:_cancelPromises()
	cancelPromise(self.inProgressPromise)
	cancelPromise(self.waitingPromise)
	cancelPromise(self.r6Promise)
	self.inProgressPromise = nil
	self.waitingPromise = nil
	self.r6Promise = nil
end

function CharacterModelPool:stop()
	self.r6.Parent = RobloxReplicatedStorage
	self.r15current.Parent = RobloxReplicatedStorage
	self.r15offScreen.Parent = RobloxReplicatedStorage

	self:_cancelPromises()
end

function CharacterModelPool:onDestroy()
	self:_cancelPromises()

	self.r6:Destroy()
	self.r15current:Destroy()
	self.r15offScreen:Destroy()
end

return CharacterModelPool
