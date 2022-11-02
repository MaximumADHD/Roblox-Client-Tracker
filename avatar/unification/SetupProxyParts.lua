-- SetupProxyParts.lua
-- Setup a newly spawned R15 character to emulate an R6 character
-- The character will have "proxy parts" added to it which old script can operate on

local Character = script.Parent

local ProxyReference = script:WaitForChild("ProxyReference")
ProxyReference.Parent = nil

local ProxyInstance = require(Character:WaitForChild("ProxyInstance"))

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

local PartNameToProxy = {}
local ProxyToParts = {}

local WeldPartNames = {}

local connections = {}
local fixedAttachments = {}

local function addToFixedAttachments(instance)
	fixedAttachments[instance] = true

	local conn
	conn = instance:GetPropertyChangedSignal("Parent"):Connect(function()
		if not instance.Parent then
			fixedAttachments[instance] = nil
			conn:Disconnect()
		end
	end)
end

local function maintainPropertyValue(instance, prop, value)
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

local function fixJoints(part)
	for attachmentName, info in pairs(JointFixes[part.Name]) do
		local attachment = part:FindFirstChild(attachmentName)
		if not attachment or not attachment:IsA("Attachment") then
			continue
		end

		local connectedPart = Character:FindFirstChild(info.ConnectedPart)
		local jointParent = Character:FindFirstChild(info.JointOwner)
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
		addToFixedAttachments(attachment)

		local originalPositionValue = attachment:FindFirstChild("OriginalPosition")
		if originalPositionValue and originalPositionValue:IsA("Vector3Value") then
			originalPositionValue.Value = originalPositionValue.Value + info.Translation
		end
		attachment.Position = attachment.Position + info.Translation

		rebuildJoint(connectAttachment, jointAttachment)
	end
end

local function setUpAestheticPart(part)
	maintainPropertyValue(part, "Massless", true)
	maintainPropertyValue(part, "CanCollide", false)
	maintainPropertyValue(part, "CanTouch", false)
	maintainPropertyValue(part, "CanQuery", false)
end

local function setUpPart(part)
	if AestheticParts[part.Name] then
		setUpAestheticPart(part)
	end

	if JointFixes[part.Name] then
		fixJoints(part)
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

local function onWeldDestroyed(proxy)
	local parts = ProxyToParts[proxy]
	for part, _ in parts do
		part:BreakJoints()
	end
end

local function setUpProxyPart(proxy)
	local newProxy = proxy:Clone()
	newProxy:ClearAllChildren()
	newProxy.Parent = Character

	local proxyChildren = proxy:GetChildren()
	for _, child in proxyChildren do
		PartNameToProxy[child.Name] = newProxy
		ProxyToParts[newProxy] = {}
		if child:FindFirstChildWhichIsA("Weld") then
			WeldPartNames[child.Name] = true

			local weldTo = Character:FindFirstChild(child.Name)
			weldParts(newProxy, weldTo)
		end
	end
end

local function onProxiedPartAdded(part)
	local proxy = PartNameToProxy[part.Name]

	if WeldPartNames[part.Name] then
		proxy.Color = part.Color
		local weld = weldParts(proxy, part)
		table.insert(
			connections,
			weld.AncestryChanged:Connect(function(_, parent)
				if parent then
					return
				end

				onWeldDestroyed(proxy)
			end)
		)
	end

	ProxyInstance(part, proxy)
	ProxyToParts[proxy][part] = true
end

local function onChildAdded(child)
	if child:IsA("BasePart") then
		setUpPart(child)
		if PartNameToProxy[child.Name] then
			onProxiedPartAdded(child)
		end
	end
end

local function onChildRemoved(child)
	if child:IsA("BasePart") and PartNameToProxy[child.Name] then
		local proxy = PartNameToProxy[child.Name]
		ProxyToParts[proxy][child] = nil
	end
end

local function onAncestryChanged(_, parent)
	if parent == nil then
		for _, connection in connections do
			connection:Disconnect()
		end
		table.clear(connections)
	end
end

local function setupCharacter()
	for _, child in ProxyReference:GetChildren() do
		setUpProxyPart(child)
		maintainPropertyValue(child, "Transparency", 1)
	end
	ProxyReference:Destroy()

	table.insert(connections, Character.ChildAdded:Connect(onChildAdded))
	table.insert(connections, Character.ChildRemoved:Connect(onChildRemoved))
	table.insert(connections, Character.AncestryChanged:Connect(onAncestryChanged))

	for _, child in Character:GetChildren() do
		onChildAdded(child)
	end
end
setupCharacter()
