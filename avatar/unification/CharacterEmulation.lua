-- CharacterEmulation.lua
-- Emulate the behavior of R6 characters in an R15 character with proxy parts

local PhysicsService = game:GetService("PhysicsService")

local AESTHETIC_PARTS = "AESTHETIC_PARTS"

local Character = script.Parent

local ProxyInstance = require(Character:WaitForChild("ProxyInstance"))

local AestheticPartsGroupExists = false
for _, group in PhysicsService:GetCollisionGroups() do
	if group.name == AESTHETIC_PARTS then
		AestheticPartsGroupExists = true
	end
end

local AestheticParts = {
	LeftUpperLeg = true,
	LeftLowerLeg = true,
	LeftFoot = true,

	RightUpperLeg = true,
	RightLowerLeg = true,
	RightFoot = true,

	LowerTorso = true,
	UpperTorso = true,

	LeftUpperArm = true,
	LeftLowerArm = true,
	LeftHand = true,

	RightUpperArm = true,
	RightLowerArm = true,
	RightHand = true,
}

local ProxyMapping = {
	LeftUpperLeg = "Left Leg",
	LeftLowerLeg = "Left Leg",
	LeftFoot = "Left Leg",

	RightUpperLeg = "Right Leg",
	RightLowerLeg = "Right Leg",
	RightFoot = "Right Leg",

	LowerTorso = "Torso",
	UpperTorso = "Torso",

	LeftUpperArm = "Left Arm",
	LeftLowerArm = "Left Arm",
	LeftHand = "Left Arm",

	RightUpperArm = "Right Arm",
	RightLowerArm = "Right Arm",
	RightHand = "Right Arm",
}

local CollisionDefaults = {
	["Left Leg"] = false,
	["Right Leg"] = false,

	["Left Arm"] = false,
	["Right Arm"] = false,

	["Torso"] = true,
	["Head"] = true,
}

local ArmsAndLegsCollide = {
	["Left Leg"] = true,
	["Right Leg"] = true,

	["Left Arm"] = true,
	["Right Arm"] = true,
}

local CollisionOverides = {
	[Enum.HumanoidStateType.Dead] = ArmsAndLegsCollide,
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
	["LeftShoulder"] = true,

	["Right Shoulder"] = true,
	["RightShoulder"] = true,

	["Left Hip"] = true,
	["LeftHip"] = true,

	["Right Hip"] = true,
	["RightHip"] = true,

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
}

local connections = {}

local function maintainPropertyValue(instance, prop, value)
	local function setPropValue()
		if instance[prop] ~= value then
			instance[prop] = value
		end
	end

	table.insert(connections, instance:GetPropertyChangedSignal(prop):Connect(setPropValue))
	setPropValue()
end

local function onHumanoidStateChanged(_, newState)
	for partName, _ in pairs(LegacyParts) do
		local part = Character:FindFirstChild(partName)
		if not part or not part:IsA("BasePart") then
			continue
		end

		local collisions = CollisionOverides[newState] or CollisionDefaults
		local shouldCollide = collisions[partName]
		if shouldCollide == nil then
			shouldCollide = CollisionDefaults[partName]
		end

		part.CanCollide = shouldCollide
	end
end

local function setUpAestheticPart(part)
	maintainPropertyValue(part, "Massless", true)
	maintainPropertyValue(part, "CanCollide", false)
	maintainPropertyValue(part, "CanTouch", false)
	maintainPropertyValue(part, "CanQuery", false)
	if AestheticPartsGroupExists then
		PhysicsService:SetPartCollisionGroup(part, AESTHETIC_PARTS)
	end
end

local function setProxyPart(proxiedPart)
	local proxyName = ProxyMapping[proxiedPart.Name]
	local proxy = Character:WaitForChild(proxyName)
	ProxyInstance(proxiedPart, proxy)
end

local function onHumanoidDied()
	if AestheticPartsGroupExists then
		for _, child in Character:GetChildren() do
			if child:IsA("BasePart") and AestheticParts[child.Name] then
				PhysicsService:SetPartCollisionGroup(child, "Default")
			end
		end
	end

	for _, descendant in ipairs(Character:GetDescendants()) do
		if descendant:IsA("JointInstance") and JointsToBreak[descendant.Name] then
			descendant:Destroy()
		end
	end
end

local function setupHumanoid(humanoid)
	table.insert(connections, humanoid.StateChanged:Connect(onHumanoidStateChanged))
	onHumanoidStateChanged(humanoid:GetState(), humanoid:GetState())

	humanoid.BreakJointsOnDeath = false
	table.insert(connections, humanoid.Died:Connect(onHumanoidDied))
end

local function setUpDescendant(descendant)
	if descendant:IsA("BasePart") and AestheticParts[descendant.Name] then
		setUpAestheticPart(descendant)
	end

	if descendant:IsA("BasePart") and ProxyMapping[descendant.Name] then
		setProxyPart(descendant)
	end

	if descendant:IsA("BasePart") and descendant.Name == "Head" then
		maintainPropertyValue(descendant, "CanCollide", true)
	end

	if descendant:IsA("Humanoid") then
		setupHumanoid(descendant)
	end

	if descendant:IsA("Motor6D") and descendant.Parent.Name == "Head" and descendant.Name == "Neck" then
		local proxy = descendant:Clone()
		proxy.Enabled = false
		proxy.Parent = Character:WaitForChild("Torso")
		ProxyInstance(descendant, proxy)
	end
end

local function onAncestryChanged(_, parent)
	if parent == nil then
		for _, connection in ipairs(connections) do
			connection:Disconnect()
		end
		table.clear(connections)
	end
end

local function setupCharacter()
	table.insert(connections, Character.DescendantAdded:Connect(setUpDescendant))
	table.insert(connections, Character.AncestryChanged:Connect(onAncestryChanged))

	for _, descendant in ipairs(Character:GetDescendants()) do
		setUpDescendant(descendant)
	end
end
setupCharacter()
