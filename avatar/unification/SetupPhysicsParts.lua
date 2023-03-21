-- SetupPhysicsParts.lua
-- Setup Physics Parts on R6 Characters
-- The character will have
local SetupPhysicsParts = {}

local CollectionService = game:GetService("CollectionService")

-- ProxyReference.rbxm is set up as { ProxyReference {Left Arm {...}, Right Arm {...},...}, CollisionHead {...} }
-- i.e. CollisionHead and ProxyReference are at then same level
local PhysicsReference = script:WaitForChild("PhysicsReference")
PhysicsReference.Parent = nil

local Character = script.Parent

local AestheticParts = {
	"LeftUpperLeg",
	"LeftLowerLeg",
	"LeftFoot",

	"RightUpperLeg",
	"RightLowerLeg",
	"RightFoot",

	"LowerTorso",
	"UpperTorso",

	"LeftUpperArm",
	"LeftLowerArm",
	"LeftHand",

	"RightUpperArm",
	"RightLowerArm",
	"RightHand",
}

local PhysicsParts: { [string]: string } = {
	"Physics Right Leg",
	"Physics Left Leg",
	"Physics Left Arm",
	"Physics Right Arm",
	"CollisionHead",
}

local function setUpAestheticPart(part)
	part["Massless"] = true
	part["CanCollide"] = false
	part["CanTouch"] = false
	part["CanQuery"] = false
end

local function moveHitboxes(character: Model)
	local torso = character["Physics Torso"]
	local torsoWeld = torso:FindFirstChildWhichIsA("Weld")

	if torsoWeld then
		torsoWeld.C0 = CFrame.new()
		torsoWeld.C1 = CFrame.new()
	end

	local torsoOffset = torso.Position - character.HumanoidRootPart.Position
	torsoWeld.C0 = CFrame.new(torsoOffset)

	for _, partName in PhysicsParts do
		local part = character:FindFirstChild(partName)
		if not part then
			continue
		end

		local weld = part:FindFirstChildWhichIsA("Weld")
		if not weld then
			continue
		end

		weld.C0 = CFrame.new()
		weld.C1 = CFrame.new()

		local partProxyPosDiff = part.Position - torso.Position
		local partProxySizeDiff = Vector3.new()

		if partName == "CollisionHead" then
			partProxySizeDiff = Vector3.new(0, -(torso.Size.Y / 2 + part.Size.Y / 2), 0)
		end

		if partName == "Physics Left Arm" then
			partProxySizeDiff = Vector3.new(torso.Size.X / 2 + part.Size.X / 2, 0, 0)
		elseif partName == "Physics Right Arm" then
			partProxySizeDiff = Vector3.new(-torso.Size.X / 2 - part.Size.X / 2, 0, 0)
		end

		if partName == "Physics Left Leg" then
			partProxySizeDiff = Vector3.new(part.Size.X / 2, torso.Size.Y / 2 + part.Size.Y / 2, 0)
		elseif partName == "Physics Right Leg" then
			partProxySizeDiff = Vector3.new(-part.Size.X / 2, torso.Size.Y / 2 + part.Size.Y / 2, 0)
		end

		weld.C0 = CFrame.new(partProxyPosDiff + partProxySizeDiff)
	end
end

local function weldParts(weldPart, weldTo)
	if not weldPart or not weldTo then
		return
	end

	local weldName = weldPart.Name .. weldTo.Name
	local weld = weldPart:FindFirstChild(weldName)
	if not weld then
		weld = Instance.new("Weld")
	end

	weld.Name = weldName
	weld.Part0 = weldPart
	weld.Part1 = weldTo
	weld.C0 = CFrame.new(0, weldPart.Size.Y / 2, 0)
	weld.C1 = CFrame.new(0, weldTo.Size.Y / 2, 0)
	weld.Parent = weldPart
	return weld
end

local function setUpProxyPart(proxy)
	local newProxy = proxy:Clone()
	newProxy:ClearAllChildren ()
	newProxy.Parent = Character
    newProxy.Transparency = 1

	local proxyChildren = proxy:GetChildren()
	for _, child in proxyChildren do
		if child:FindFirstChildWhichIsA("Weld") then
			local weldTo = Character:FindFirstChild(child.Name)
			weldParts(newProxy, weldTo)
		end
	end
	return newProxy
end

function SetupPhysicsParts.setupCharacter(character: Model)
	for _, child in PhysicsReference:GetChildren() do
		local proxy = setUpProxyPart(child)
	end
	
	for _, part in AestheticParts do
		setUpAestheticPart(Character[part])
	end
	PhysicsReference:Destroy()
	
	task.wait() 
	
	moveHitboxes(character)
end

return SetupPhysicsParts
