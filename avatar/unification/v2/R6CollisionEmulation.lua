-- R6CollisionEmulation.lua
-- Set R6 adapter parts collision states to match humanoid state.

local R6CollisionEmulator = {}
R6CollisionEmulator.__index = R6CollisionEmulator

-- Constants
local CollisionDefaults = {
	["Left Leg"] = false,
	["Right Leg"] = false,
	["Left Arm"] = false,
	["Right Arm"] = false,
	["Torso"] = true,
	["Head"] = true,
	["HumanoidRootPart"] = false,
}

local ArmsAndLegsCollide = {
	["Left Leg"] = true,
	["Right Leg"] = true,
	["Left Arm"] = true,
	["Right Arm"] = true,
}

local DeadCollision = {
	["Left Leg"] = true,
	["Right Leg"] = true,
	["Left Arm"] = true,
	["Right Arm"] = true,
	["Torso"] = true,
	["Head"] = true,
	["HumanoidRootPart"] = true,
}

local CollisionOverides = {
	[Enum.HumanoidStateType.Dead] = DeadCollision,
	[Enum.HumanoidStateType.FallingDown] = ArmsAndLegsCollide,
	[Enum.HumanoidStateType.Flying] = ArmsAndLegsCollide,
	[Enum.HumanoidStateType.Physics] = ArmsAndLegsCollide,
	[Enum.HumanoidStateType.Ragdoll] = ArmsAndLegsCollide,
	[Enum.HumanoidStateType.Swimming] = ArmsAndLegsCollide,
	[Enum.HumanoidStateType.Jumping] = {
		["Torso"] = false,
	},
}

local JointsToBreak = {
	["Left Shoulder"] = true,
	["Right Shoulder"] = true,
	["Left Hip"] = true,
	["Right Hip"] = true,
	["Neck"] = true,
	["RightGrip"] = true,
}

local LegacyParts = {
	["Left Leg"] = true,
	["Right Leg"] = true,
	["Left Arm"] = true,
	["Right Arm"] = true,
	["Torso"] = true,
	["Head"] = true,
	["HumanoidRootPart"] = true,
}

function R6CollisionEmulator.emulate(character: Model, adapterParts: table)
	local self = setmetatable({}, R6CollisionEmulator)
	self.Character = character
	local humanoid = character:WaitForChild("Humanoid")
	self.Humanoid = humanoid
	self.BreakJointsOnDeath = true
	humanoid.BreakJointsOnDeath = false
	self.Connections = {}
	self.AdapterNameToAdapterPart = adapterParts
	self:SetupHumanoid()
	return self
end

function R6CollisionEmulator:DisableCollision(part1, part2)
	if part1 and part2 then
		local noCollision = Instance.new("NoCollisionConstraint")
		noCollision.Part0 = part1
		noCollision.Part1 = part2
		noCollision.Parent = part1
	end
end

function R6CollisionEmulator:SetupHumanoid()
	local humanoid = self.Humanoid
	for partName, _ in LegacyParts do
		if partName ~= "Torso" then
			self:DisableCollision(self.AdapterNameToAdapterPart[partName], self.AdapterNameToAdapterPart["Torso"]) -- R6 limbs do not collide with self torso, keep this behavior
		end
	end
	table.insert(
		self.Connections,
		humanoid.StateChanged:Connect(function(...)
			self:OnHumanoidStateChanged(...)
		end)
	)
	table.insert(
		self.Connections,
		humanoid.Died:Connect(function()
			self:OnHumanoidDied()
		end)
	)
	self:OnHumanoidStateChanged(humanoid:GetState(), humanoid:GetState())

	table.insert(
		self.Connections,
		humanoid.Died:Connect(function()
			self:OnHumanoidDied()
		end)
	)
end

function R6CollisionEmulator:OnHumanoidStateChanged(_, newState)
	for partName, _ in LegacyParts do
		local part = self.AdapterNameToAdapterPart[partName]
		if not part then
			part = self.Character:FindFirstChild(partName)
			if part then
				self.AdapterNameToAdapterPart[partName] = part
			else
				continue
			end
		end

		local collisions = CollisionOverides[newState] or CollisionDefaults
		local shouldCollide = collisions[partName]
		if shouldCollide == nil then
			shouldCollide = CollisionDefaults[partName]
		end

		part.CanCollide = shouldCollide
	end
end

function R6CollisionEmulator:OnHumanoidDied()
	if self.BreakJointsOnDeath then
		for _, descendant in self.Character:GetDescendants() do
			if descendant:IsA("Motor6D") and JointsToBreak[descendant.Name] then
				descendant.Enabled = false
			end
		end
	end
	self.Humanoid.PlatformStand = true
end

function R6CollisionEmulator:Destroy()
	for _, connection in self.Connections do
		connection:Disconnect()
	end
	table.clear(self.Connections)
end

return R6CollisionEmulator
