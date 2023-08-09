-- SetupAdapterParts.lua
-- Setup a newly spawned R15 character to emulate an R6 character
-- The character will have "adapter parts" added to it which old script can operate on
local SetupAdapterParts = {}

local CollectionService = game:GetService("CollectionService")

local AdaptInstance = require(script.Parent:WaitForChild("AdaptInstance"))

local ALWAYS_TRANSPARENT_PART_TAG = "__RBX__LOCKED_TRANSPARENT"

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

local JointFixes = {
	UpperTorso = {
		RightShoulderRigAttachment = {
			JointOwner = "RightUpperArm",
			ConnectedPart = "UpperTorso",
			Translation = Vector3.new(0, -0.268, 0),
		},

		LeftShoulderRigAttachment = {
			JointOwner = "LeftUpperArm",
			ConnectedPart = "UpperTorso",
			Translation = Vector3.new(0, -0.268, 0),
		},
	},

	RightUpperArm = {
		RightShoulderRigAttachment = {
			JointOwner = "RightUpperArm",
			ConnectedPart = "UpperTorso",
			Translation = Vector3.new(0, -0.269, 0),
		},
	},

	LeftUpperArm = {
		LeftShoulderRigAttachment = {
			JointOwner = "LeftUpperArm",
			ConnectedPart = "UpperTorso",
			Translation = Vector3.new(0, -0.269, 0),
		},
	},
}

local function addToFixedAttachments(instance, fixedAttachments)
	fixedAttachments[instance] = true

	local conn
	conn = instance:GetPropertyChangedSignal("Parent"):Connect(function()
		if not instance.Parent then
			fixedAttachments[instance] = nil
			conn:Disconnect()
		end
	end)
end

local function maintainPropertyValue(instance, prop, value, connections)
	local function setPropValue()
		if instance[prop] ~= value then
			instance[prop] = value
		end
	end

	table.insert(connections, instance:GetPropertyChangedSignal(prop):Connect(setPropValue))
	setPropValue()
end

local function rebuildJoint(parentAttachment, partForJointAttachment)
	local jointName = parentAttachment.Name:gsub("RigAttachment", "")
	local motor = partForJointAttachment.Parent:FindFirstChild(jointName)
	if not motor then
		motor = Instance.new("Motor6D")
	end
	motor.Name = jointName

	motor.Part0 = parentAttachment.Parent
	motor.Part1 = partForJointAttachment.Parent

	motor.C0 = parentAttachment.CFrame
	motor.C1 = partForJointAttachment.CFrame

	motor.Parent = partForJointAttachment.Parent
end

local function fixJoints(character, part, fixedAttachments)
	for attachmentName, info in pairs(JointFixes[part.Name]) do
		local attachment = part:FindFirstChild(attachmentName)
		if not attachment or not attachment:IsA("Attachment") then
			continue
		end

		local connectedPart = character:FindFirstChild(info.ConnectedPart)
		local jointParent = character:FindFirstChild(info.JointOwner)
		if not connectedPart or not jointParent then
			continue
		end

		local connectAttachment = connectedPart:FindFirstChild(attachmentName)
		local jointAttachment = jointParent:FindFirstChild(attachmentName)
		if
			not connectAttachment
			or not jointAttachment
			or not connectAttachment:IsA("Attachment")
			or not jointAttachment:IsA("Attachment")
		then
			continue
		end

		if fixedAttachments[attachment] then
			continue
		end
		addToFixedAttachments(attachment, fixedAttachments)

		local originalPositionValue = attachment:FindFirstChild("OriginalPosition")
		if originalPositionValue and originalPositionValue:IsA("Vector3Value") then
			originalPositionValue.Value = originalPositionValue.Value + info.Translation
		end
		attachment.Position = attachment.Position + info.Translation

		rebuildJoint(connectAttachment, jointAttachment)
	end
end

local function setUpAestheticPart(part, connections)
	maintainPropertyValue(part, "Massless", true, connections)
	maintainPropertyValue(part, "CanCollide", false, connections)
	maintainPropertyValue(part, "CanTouch", false, connections)
	maintainPropertyValue(part, "CanQuery", false, connections)
end

local function setUpPart(character, part, fixedAttachments, connections)
	if AestheticParts[part.Name] then
		setUpAestheticPart(part, connections)
	end

	if JointFixes[part.Name] then
		fixJoints(character, part, fixedAttachments)
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

local function onWeldDestroyed(adapter, adapterToParts)
	local parts = adapterToParts[adapter]
	for part, _ in parts do
		part:BreakJoints()
	end
end

local function setUpAdapterPart(character, adapter, partNameToAdapter, adapterToParts, weldPartNames)
	local newAdapter = adapter:Clone()
	newAdapter:ClearAllChildren()
	newAdapter.Parent = character

	local adapterChildren = adapter:GetChildren()
	for _, child in adapterChildren do
		partNameToAdapter[child.Name] = newAdapter
		adapterToParts[newAdapter] = {}
		if child:FindFirstChildWhichIsA("Weld") then
			weldPartNames[child.Name] = true

			local weldTo = character:FindFirstChild(child.Name)
			weldParts(newAdapter, weldTo)
		end
	end

	return newAdapter
end

local function onAdaptedPartAdded(
	part,
	partNameToAdapter,
	weldPartNames,
	connections,
	adapterToParts,
	adaptInstancesTable
)
	local adapter = partNameToAdapter[part.Name]

	if weldPartNames[part.Name] then
		adapter.Color = part.Color
		adapter.Transparency = part.Transparency
		local weld = weldParts(adapter, part)
		table.insert(
			connections,
			weld.AncestryChanged:Connect(function(_, parent)
				if parent then
					return
				end

				onWeldDestroyed(adapter, adapterToParts)
			end)
		)
	end

	table.insert(adaptInstancesTable, AdaptInstance(part, adapter))
	adapterToParts[adapter][part] = true
end

local function onChildAdded(
	character,
	child,
	partNameToAdapter,
	weldPartNames,
	connections,
	adapterToParts,
	fixedAttachments,
	adaptInstancesTable
)
	if child:IsA("BasePart") then
		setUpPart(character, child, fixedAttachments, connections)
		if partNameToAdapter[child.Name] then
			onAdaptedPartAdded(
				child,
				partNameToAdapter,
				weldPartNames,
				connections,
				adapterToParts,
				adaptInstancesTable
			)
		end
	end
	if child:IsA("Humanoid") then
		child.BreakJointsOnDeath = false
	end
end

local function createHead(character, connections, CollisionHead)
	local newHead = CollisionHead:Clone()
	newHead:ClearAllChildren()
	newHead.Parent = character

	local headChildren = CollisionHead:GetChildren()
	for _, child in headChildren do
		--the only child under the CollisionHead is the Head. I only kept this formatting due to the AdapterReference
		local part = character:FindFirstChild(child.Name)
		if not part then
			continue
		end
		if child:FindFirstChildWhichIsA("Weld") then
			local weldTo = character:FindFirstChild(child.Name)
			weldParts(newHead, weldTo)
		end
		setUpAestheticPart(part, connections)
	end
	CollisionHead:Destroy()
	CollectionService:AddTag(newHead, ALWAYS_TRANSPARENT_PART_TAG)
end

function SetupAdapterParts.setupCharacter(character, AdapterReference, CollisionHead)
	local partNameToAdapter = {}
	local adapterToParts = {}
	local weldPartNames = {}
	local connections = {}
	local fixedAttachments = {}
	local adaptInstancesTable = {}

	for _, child in AdapterReference:GetChildren() do
		local adapter = setUpAdapterPart(character, child, partNameToAdapter, adapterToParts, weldPartNames)
		CollectionService:AddTag(adapter, ALWAYS_TRANSPARENT_PART_TAG)
	end
	AdapterReference:Destroy()

	table.insert(
		connections,
		character.ChildAdded:Connect(function(child)
			onChildAdded(
				character,
				child,
				partNameToAdapter,
				weldPartNames,
				connections,
				adapterToParts,
				fixedAttachments,
				adaptInstancesTable
			)
		end)
	)

	table.insert(
		connections,
		character.ChildRemoved:Connect(function(child)
			if child:IsA("BasePart") and partNameToAdapter[child.Name] then
				local adapter = partNameToAdapter[child.Name]
				adapterToParts[adapter][child] = nil
			end
		end)
	)

	table.insert(
		connections,
		character.AncestryChanged:Connect(function(_, parent)
			if parent == nil then
				for _, connection in connections do
					connection:Disconnect()
				end
				table.clear(connections)
			end
		end)
	)

	for _, child in character:GetChildren() do
		onChildAdded(
			character,
			child,
			partNameToAdapter,
			weldPartNames,
			connections,
			adapterToParts,
			fixedAttachments,
			adaptInstancesTable
		)
	end

	createHead(character, connections, CollisionHead)

	return {
		["partNameToAdapter"] = partNameToAdapter,
		["adapterToParts"] = adapterToParts,
		["weldPartNames"] = weldPartNames,
		["connections"] = connections,
		["fixedAttachments"] = fixedAttachments,
		["adaptInstancesTable"] = adaptInstancesTable,
	}
end

return SetupAdapterParts
