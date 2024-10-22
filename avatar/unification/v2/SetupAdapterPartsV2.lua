-- SetupAdapterParts.lua
-- Setup a newly spawned R15 character to emulate an R6 character
-- The character will have "adapter parts" added to it which old script can operate on
local CollectionService = game:GetService("CollectionService")
local ALWAYS_TRANSPARENT_PART_TAG = "__RBX__LOCKED_TRANSPARENT"

local R15ToR6Weld = {
	["LeftUpperLeg"] = "Left Leg",
	["RightUpperLeg"] = "Right Leg",
	["RightUpperArm"] = "Right Arm",
	["LeftUpperArm"] = "Left Arm",
	["UpperTorso"] = "Torso",
	["VisualHead"] = "Head",
}

local R15ToR6Parts = {
	["LeftUpperLeg"] = "Left Leg",
	["LeftLowerLeg"] = "Left Leg",
	["LeftFoot"] = "Left Leg",
	["RightUpperLeg"] = "Right Leg",
	["RightLowerLeg"] = "Right Leg",
	["RightFoot"] = "Right Leg",
	["UpperTorso"] = "Torso",
	["LowerTorso"] = "Torso",
	["LeftUpperArm"] = "Left Arm",
	["LeftLowerArm"] = "Left Arm",
	["LeftHand"] = "Left Arm",
	["RightUpperArm"] = "Right Arm",
	["RightLowerArm"] = "Right Arm",
	["RightHand"] = "Right Arm",
	["Head"] = "Head",
	["HumanoidRootPart"] = "HumanoidRootPart",
}

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

local SetupAdapterParts = {}
SetupAdapterParts.__index = SetupAdapterParts

function SetupAdapterParts.setupCharacter(character, AdapterReference, CollisionHead)
	local self = {}
	setmetatable(self, SetupAdapterParts)
	self.Character = character
	self.Humanoid = character:WaitForChild("Humanoid")
	self.Connections = {}
	self.PropertyTransferOnly = CollisionHead == nil -- Make the adapters function only as property propagators
	self.AdapterNameToAdapterPart = {}
	if not self.PropertyTransferOnly then
		self:CreateHead(CollisionHead)
	end

	for _, child in AdapterReference:GetChildren() do
		local adapter = self:SetupAdapterPart(child)
		CollectionService:AddTag(adapter, ALWAYS_TRANSPARENT_PART_TAG)
	end

	AdapterReference:Destroy()

	for _, child in character:GetChildren() do
		self:OnChildAdded(child)
	end

	table.insert(
		self.Connections,
		character.ChildAdded:Connect(function(child)
			self:OnChildAdded(child)
		end)
	)

	table.insert(
		self.Connections,
		character.ChildRemoved:Connect(function(child)
			if self.AdapterNameToAdapterPart[child.Name] then
				self.AdapterNameToAdapterPart[child.Name]:Destroy()
				self.AdapterNameToAdapterPart[child.Name] = nil
			end
		end)
	)

	table.insert(
		self.Connections,
		character.AncestryChanged:Connect(function(_, parent)
			if parent == nil then
				self:Destroy()
			end
		end)
	)

	return self
end

function SetupAdapterParts:SetupAdapterPart(adapter)
	local newAdapter = adapter:Clone()
	newAdapter:ClearAllChildren()
	newAdapter.Parent = self.Character
	if self.PropertyTransferOnly then
		self:SetUpAestheticPart(newAdapter)
	end

	self.AdapterNameToAdapterPart[newAdapter.Name] = newAdapter
	return newAdapter
end

function SetupAdapterParts:SetUpAestheticPart(part)
	if part.Name == "Head" then
		if part:IsA("MeshPart") then
			part.Name = "VisualHead" -- R15 Head, rename to VisualHead to make it noopt, because players expect to collide and query w R6 hitbox size
		else
			return
		end
	end
	if R15ToR6Weld[part.Name] then
		local adapter = self.AdapterNameToAdapterPart[R15ToR6Weld[part.Name]]
		if adapter then
			weldParts(adapter, part)
		end
	end
end

function SetupAdapterParts:Destroy()
	for _, connection in self.Connections do
		connection:Disconnect()
	end
	table.clear(self.Connections)
end

function SetupAdapterParts:SetUpPart(part)
	if R15ToR6Parts[part.Name] and not self.PropertyTransferOnly then
		self:SetUpAestheticPart(part)
		local R6Part = self.AdapterNameToAdapterPart[R15ToR6Parts[part.Name]]
		if R6Part then
			R6Part.Transparency = part.Transparency
			R6Part.Color = part.Color
		end
	end
end

function SetupAdapterParts:OnChildAdded(child)
	if child:IsA("BasePart") then
		self:SetUpPart(child)
	end
end

function SetupAdapterParts:CreateHead(CollisionHead)
	local newHead = CollisionHead:Clone()
	newHead:ClearAllChildren()
	newHead.Name = "Head"
	newHead.Parent = self.Character
	self.AdapterNameToAdapterPart["Head"] = newHead
	CollisionHead:Destroy()
	CollectionService:AddTag(newHead, ALWAYS_TRANSPARENT_PART_TAG)
end

return SetupAdapterParts
