-- AdaptCharacterPropertiesAndPhysics.lua
-- Module script implementing the functionality of setting up the adapter to proxy
-- properties from one instance to another, as well as adapting all physics constraints

local RunService = game:GetService("RunService")

local BlackListProperties = {
	BasePart = {
		CanCollide = true,
		CanQuery = true,
		CanTouch = true,
		CFrame = true,
		LocalTransparencyModifier = true,
		Massless = true,
		Orientation = true,
		Position = true,
		Rotation = true,
		Shape = true,
		Size = true,
		Name = true,
	},
}

local JointRemappings = {
	RightShoulder = "Right Shoulder",
	LeftShoulder = "Left Shoulder",
	RightHip = "Right Hip",
	LeftHip = "Left Hip",
	Neck = "Neck",
	Root = "RootJoint",
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
	["VisualHead"] = "Head",
}

local R6ToR15 = {
	["Left Leg"] = "LeftUpperLeg",
	["Right Leg"] = "RightUpperLeg",
	["Torso"] = "UpperTorso",
	["Left Arm"] = "LeftUpperArm",
	["Right Arm"] = "RightUpperArm",
	["Head"] = "VisualHead",
}

local R6AttachmentsToParent = {
	["LeftShoulderAttachment"] = "Left Arm",
	["LeftGripAttachment"] = "Left Arm",

	["RightGripAttachment"] = "Right Arm",
	["RightShoulderAttachment"] = "Right Arm",

	["LeftFootAttachment"] = "Left Leg",

	["RightFootAttachment"] = "Right Leg",

	["RightCollarAttachment"] = "Torso",
	["LeftCollarAttachment"] = "Torso",
	["NeckAttachment"] = "Torso",
	["BodyFrontAttachment"] = "Torso",
	["BodyBackAttachment"] = "Torso",
	["WaistCenterAttachment"] = "Torso",
	["WaistFrontAttachment"] = "Torso",
	["WaistBackAttachment"] = "Torso",

	["HatAttachment"] = "Head",
	["HairAttachment"] = "Head",
	["FaceFrontAttachment"] = "Head",
	["FaceCenterAttachment"] = "Head",
}

local function isPropertyBlacklisted(toBeAdaptedInstance, propName)
	for class, props in BlackListProperties do
		if toBeAdaptedInstance:IsA(class) then
			if props[propName] then
				return true
			end
		end
	end

	return false
end

local AdaptCharacterPropertiesAndPhysics = {}
AdaptCharacterPropertiesAndPhysics.__index = AdaptCharacterPropertiesAndPhysics
local ADAPTER_MODES = {
	PropertiesOnly = "PropertiesOnly",
	ConstraintsOnly = "ConstraintsOnly",
	PropertiesAndConstraints = "PropertiesAndConstraints",
}
AdaptCharacterPropertiesAndPhysics.ADAPTER_MODES = ADAPTER_MODES

function AdaptCharacterPropertiesAndPhysics.adapt(character: Model, adapterMode: string)
	local self = setmetatable({}, AdaptCharacterPropertiesAndPhysics)

	self.AdapterMode = adapterMode or AdaptCharacterPropertiesAndPhysics.ADAPTER_MODES.ALL
	self.ShouldAdaptProperties = self.AdapterMode == ADAPTER_MODES.PROPERTIES_ONLY
		or self.AdapterMode == ADAPTER_MODES.ALL
	self.ShouldAdaptConstraints = self.AdapterMode == ADAPTER_MODES.CONSTRAINTS_ONLY
		or self.AdapterMode == ADAPTER_MODES.ALL

	self.Character = character
	self.Connections = {}
	self.Adapters = {}
	self.AdaptersToAdaptedParts = {}
	self.AdaptedAttachments = {}
	self.Humanoid = character:WaitForChild("Humanoid")
	self.Humanoid.RequiresNeck = false -- Disables require neck while the neck joint is being moved
	for _, descendant in character:GetDescendants() do
		self:ProcessDescendant(descendant)
	end
	character.DescendantAdded:Connect(function(descendant)
		self:ProcessDescendant(descendant)
	end)

	return self
end

function AdaptCharacterPropertiesAndPhysics:GetAdapterByName(adapterName)
	local adapter = self.Adapters[adapterName]
	if not adapter then
		adapter = self.Character:WaitForChild(adapterName)
		self.Adapters[adapterName] = adapter
	end
	return adapter
end

function AdaptCharacterPropertiesAndPhysics:ProcessDescendant(descendant)
	if descendant:IsA("BasePart") then
		if R6ToR15[descendant.Name] then
			self.Adapters[descendant.Name] = descendant
			if self.ShouldAdaptProperties then
				self:AdaptProperties(descendant)
			end
		elseif R15ToR6Parts[descendant.Name] then
			local adapterName = R15ToR6Parts[descendant.Name]
			self.AdaptersToAdaptedParts[adapterName] = self.AdaptersToAdaptedParts[adapterName] or {}
			self.AdaptersToAdaptedParts[adapterName][descendant] = true
			self:MaintainPropertyValue(descendant, "Massless", true)
			self:MaintainPropertyValue(descendant, "CanCollide", false)
			self:MaintainPropertyValue(descendant, "CanTouch", false)
			self:MaintainPropertyValue(descendant, "CanQuery", false)
		end
	elseif descendant:IsA("Motor6D") and JointRemappings[descendant.Name] and RunService:IsServer() then --Move joints on the server and just let client replicate
		local parent
		if descendant.Name == "Root" then
			parent = self:GetAdapterByName("HumanoidRootPart")
		else
			parent = self:GetAdapterByName("Torso")
		end
		descendant.Name = JointRemappings[descendant.Name]
		descendant.Parent = parent
	elseif descendant:IsA("Attachment") and RunService:IsServer() then
		local currentParent = descendant.Parent.Name
		if R6AttachmentsToParent[descendant.Name] and currentParent ~= R6AttachmentsToParent[descendant.Name] then
			local newParent = self:GetAdapterByName(R6AttachmentsToParent[descendant.Name])
			local clone = Instance.new("Attachment")
			clone.Name = descendant.Name
			clone.Parent = newParent
			clone.WorldCFrame = descendant.WorldCFrame
		end
	elseif descendant:IsA("Constraint") then
		if self.ShouldAdaptProperties then
			self:AdaptConstraints(descendant)
		end
	end
end

function AdaptCharacterPropertiesAndPhysics:MaintainPropertyValue(instance, prop, value)
	local function setPropValue()
		if instance[prop] ~= value then
			instance[prop] = value
		end
	end
	if R15ToR6Parts[instance.Name] and prop == "CanCollide" then
		local humanoid = instance.Parent:FindFirstChild("Humanoid") -- Humanoid state changes set CanCollide without firing the property changed event, temp workaround after talking to physics team
		if humanoid then
			table.insert(
				self.Connections,
				humanoid.StateChanged:Connect(function(_, newState)
					setPropValue()
				end)
			)
		end
	end
	setPropValue()
	table.insert(self.Connections, instance:GetPropertyChangedSignal(prop):Connect(setPropValue))
end

function AdaptCharacterPropertiesAndPhysics:AdaptProperties(adapter)
	table.insert(
		self.Connections,
		adapter.Changed:Connect(function(propName)
			if isPropertyBlacklisted(adapter, propName) then
				return
			end
			local propertyInAdapter, value = pcall(function()
				return adapter[propName]
			end)
			if propertyInAdapter then
				if self.AdaptersToAdaptedParts[adapter.Name] then
					for adaptedPart, _ in self.AdaptersToAdaptedParts[adapter.Name] do
						if adaptedPart.Parent == nil then -- if the adapted part is removed, remove it from the table
							self.AdaptersToAdaptedParts[adapter.Name][adaptedPart] = nil
						else
							pcall(function()
								adaptedPart[propName] = value
							end)
						end
					end
				end
			end
		end)
	)
end

function AdaptCharacterPropertiesAndPhysics:AdaptConstraints(constraint)
	if RunService:IsClient() then
		task.wait() -- Wait to see if the constraint exists on the server. If so, the attribute will replicate to the client and we won't adapt
	end
	if constraint:GetAttribute("Adapted") then
		return
	end
	constraint:SetAttribute("Adapted", true)
	local attachment0 = constraint.Attachment0
	local attachment1 = constraint.Attachment1

	local adaptAttachment = function(attachment) -- If a physical constraint is attached to an R6 part, it needs to be moved to the actual visual R15 part
		if self.AdaptedAttachments[attachment] then
			return self.AdaptedAttachments[attachment]
		end
		local oldParent = attachment.Parent
		if not oldParent then
			return attachment
		end
		if R6ToR15[oldParent.Name] then
			local newParent = self.Character:FindFirstChild(R6ToR15[oldParent.Name])
			if newParent then
				local newAttachment = Instance.new("Attachment")
				newAttachment.Name = attachment.Name
				newAttachment.WorldCFrame = attachment.WorldCFrame
				newAttachment.Parent = newParent
				table.insert(
					self.Connections,
					attachment.AncestryChanged:Connect(function(_, parent)
						if parent == nil then
							newAttachment:Destroy()
						end
					end)
				)
				self.AdaptedAttachments[attachment] = newAttachment
				return newAttachment
			else
				self.AdaptedAttachments[attachment] = attachment
				return attachment
			end
		elseif R15ToR6Parts[oldParent.Name] then
			local adapter = self:GetAdapterByName(R15ToR6Parts[oldParent.Name])
			attachment.WorldCFrame = adapter.CFrame * attachment.CFrame
		end
		return attachment
	end
	if attachment0 and attachment1 then
		local newAttachment0 = adaptAttachment(attachment0)
		local newAttachment1 = adaptAttachment(attachment1)
		constraint.Attachment0 = newAttachment0
		constraint.Attachment1 = newAttachment1
	end
end

function AdaptCharacterPropertiesAndPhysics:Destroy()
	for _, connection in ipairs(self.Connections) do
		connection:Disconnect()
	end
	table.clear(self.Connections)
end

return AdaptCharacterPropertiesAndPhysics
