-- UnificationServerScript.lua
-- Server script that brings in each portion of avatar unification. Due to some issues we ran into with modulescripts,
-- we have to instead include them here. Think of this as manual inlining of the code.

local Character = script.Parent

-- Need to wait here due to avatar loading order. If we don't wait a frame,
-- rig building/scaling will be done after this script runs
task.wait()

-- AdaptInstance.lua
-- Module script implementing the functionality of setting up the adapter to proxy
-- properties from one instance to another.
local RunService = game:GetService("RunService")

local CLIENT_REPLICATION_TIMEOUT = 2
local IS_CLIENT = RunService:IsClient()

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
    },
}

local ExcludeClasses = {
    Attachment = true,
    WrapTarget = true,
    WrapLayer = true,
    SurfaceAppearance = true,
}

local DEFAULT_NECK_NAME = "spartacus"

local JointRemappings = {
    RightShoulder = "Right Shoulder",
    LeftShoulder = "Left Shoulder",
    RightHip = "Right Hip",
    LeftHip = "Left Hip",
    Neck = "Neck",
    Root = "RootJoint",
}

-- orientation of r6 joints are setup slightly differently from r15 motors -- we have to apply rotation and translation corrections for consistency
local centralRotation = CFrame.Angles(math.pi / 2, -math.pi, 0)
local leftRotation = CFrame.Angles(0, -math.pi / 2, 0)
local rightRotation = CFrame.Angles(0, math.pi / 2, 0)

local Motor6DAdjustments = {
    Root = centralRotation,
    [DEFAULT_NECK_NAME] = centralRotation,
    RightShoulder = rightRotation,
    RightHip = rightRotation,
    LeftShoulder = leftRotation,
    LeftHip = leftRotation,
}

local R6MotorValues = {
    Root = { centralRotation, centralRotation },
    [DEFAULT_NECK_NAME] = { CFrame.new(0., 1., 0.) * centralRotation, CFrame.new(0., -0.5, 0.) * centralRotation },
    RightShoulder = { CFrame.new(1., 0.5, 0.) * rightRotation, CFrame.new(-0.5, 0.5, 0.) * rightRotation },
    RightHip = { CFrame.new(1., -1., 0.) * rightRotation, CFrame.new(0.5, 1., 0.) * rightRotation },
    LeftShoulder = { CFrame.new(-1., 0.5, 0.) * leftRotation, CFrame.new(0.5, 0.5, 0.) * leftRotation },
    LeftHip = { CFrame.new(-1., -1., 0.) * leftRotation, CFrame.new(-0.5, 1., 0.) * leftRotation },
}

local ToBeAdaptedInstances = {}

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

-- store offset between R6 motors and R15 motors
local function setMotor6DAdjustment(motor)
    local name = motor.Name
    local map = Motor6DAdjustments[name]
    local rotation
    if typeof(map) == "CFrame" then
        rotation = map:Inverse()
    else
        rotation = map.C0[2]
    end
    if not rotation then
        return
    end
    local defaultCFrames = R6MotorValues[name]
    local c0TranslateInverse = CFrame.new(motor.C0.Position - defaultCFrames[1].Position)
    local c1TranslateInverse = CFrame.new(motor.C1.Position - defaultCFrames[2].Position)
    Motor6DAdjustments[name] = { C0 = { c0TranslateInverse, rotation }, C1 = { c1TranslateInverse, rotation } }
end

-- apply adjustment from R6->R15 motor
local function applyMotor6DAdjustment(motor, cframe, prop)
    if not Motor6DAdjustments[motor.Name] then
        return
    end
    local adjustments = Motor6DAdjustments[motor.Name][prop]
    return adjustments[1] * cframe * adjustments[2]
end

local motorCache = {}

-- set adapter motors to be default values
local function remapMotor6DCFrame(motor, adapterMotor)
    local cframes = R6MotorValues[motor.Name]
    if not cframes then
        return
    end
    motorCache[motor].C0 = motor.C0
    motorCache[motor].C1 = motor.C1
    motorCache[adapterMotor].C0 = cframes[1]
    motorCache[adapterMotor].C1 = cframes[2]
    adapterMotor.C0 = cframes[1]
    adapterMotor.C1 = cframes[2]
end

local function fuzzyEq(a, b)
    local epsilon = 0.001
    return math.abs(a - b) < epsilon
end

local function fuzzyEq_CFrame(cf1, cf2)
    local rx1, ry1, rz1 = cf1:ToEulerAnglesXYZ()
    local rx2, ry2, rz2 = cf2:ToEulerAnglesXYZ()
    return cf1.p:FuzzyEq(cf2.p) and fuzzyEq(rx1, rx2) and fuzzyEq(ry1, ry2) and fuzzyEq(rz1, rz2)
end

local onPropertyChanged = function(toBeAdapted, adapter)
    return function(prop)
        if isPropertyBlacklisted(toBeAdapted, prop) then
            return
        end

        pcall(function()
            if adapter:IsA("Motor6D") and (prop == "C0" or prop == "C1") then
                if fuzzyEq_CFrame(motorCache[adapter][prop], adapter[prop]) then
                    return
                end
                local transformedCFrame = applyMotor6DAdjustment(toBeAdapted, adapter[prop], prop)
                motorCache[toBeAdapted][prop] = transformedCFrame
                motorCache[adapter][prop] = adapter[prop]
                toBeAdapted[prop] = transformedCFrame
                return
            end
            toBeAdapted[prop] = adapter[prop]
        end)
    end
end

local onMotorChanged = function(motor, adapterMotor)
    local motorChangedFunction
    motorChangedFunction = function(prop)
        if prop ~= "C0" and prop ~= "C1" then
            return
        end
        if fuzzyEq_CFrame(motorCache[motor][prop], motor[prop]) then
            return
        end
        setMotor6DAdjustment(motor)
        remapMotor6DCFrame(motor, adapterMotor)
    end
    return motorChangedFunction
end

local function AdaptInstance(toBeAdapted, adapter)
    if ToBeAdaptedInstances[toBeAdapted] then
        return
    end
    ToBeAdaptedInstances[toBeAdapted] = true

    local mirrorInstances = {}

    local connections = {}

    if toBeAdapted:IsA("Motor6D") and JointRemappings[toBeAdapted.Name] then
        -- change neck name to prevent FindFirstChild() returning R15 Neck
        if toBeAdapted.Name == "Neck" then
            toBeAdapted.Name = DEFAULT_NECK_NAME
            toBeAdapted:GetPropertyChangedSignal("Name"):Connect(function()
                if toBeAdapted.Name == DEFAULT_NECK_NAME then
                    return
                end
                toBeAdapted.Name = DEFAULT_NECK_NAME
            end)
            if toBeAdapted.Part0 then
                local att = toBeAdapted.Part0:FindFirstChild("NeckRigAttachment")
                if att then
                    att.Name = DEFAULT_NECK_NAME .. "RigAttachment"
                end
            end
            if toBeAdapted.Part1 then
                local att = toBeAdapted.Part1:FindFirstChild("NeckRigAttachment")
                if att then
                    att.Name = DEFAULT_NECK_NAME .. "RigAttachment"
                end
            end
        end
        motorCache[adapter] = {}
        motorCache[toBeAdapted] = {}
        setMotor6DAdjustment(toBeAdapted)
        remapMotor6DCFrame(toBeAdapted, adapter)
    end

    if toBeAdapted:IsA("Motor6D") and Motor6DAdjustments[toBeAdapted.Name] then
        connections.motorChangedConnection = toBeAdapted.Changed:Connect(onMotorChanged(toBeAdapted, adapter))
    end
    connections.changedConnection = adapter.Changed:Connect(onPropertyChanged(toBeAdapted, adapter))

    local function onChildAdded(child)
        if mirrorInstances[child] then
            return
        end

        if ExcludeClasses[child.ClassName] then
            return
        end

        local name = child.Name
        local parent = adapter
        if JointRemappings[name] and child:IsA("Motor6D") then
            name = JointRemappings[name]
            if name == "RootJoint" then
                parent = adapter.Parent:FindFirstChild("HumanoidRootPart") or parent
            else
                parent = adapter.Parent:FindFirstChild("Torso") or parent
            end
        end

        local mirror
        if IS_CLIENT then
            mirror = parent:WaitForChild(name, CLIENT_REPLICATION_TIMEOUT)
            if not mirror then
                return
            end
        else
            mirror = child:Clone()
        end
        mirrorInstances[child] = mirror
        if child:IsA("Motor6D") then
            mirror.Enabled = false
        end
        mirror.Name = name
        mirror.Parent = parent
        AdaptInstance(child, mirror)
    end

    connections.childAddedConnection = toBeAdapted.ChildAdded:Connect(onChildAdded)
    for _, child in toBeAdapted:GetChildren() do
        task.spawn(onChildAdded, child)
    end

    connections.childRemovedConnection = toBeAdapted.ChildRemoved:Connect(function(child)
        if mirrorInstances[child] then
            mirrorInstances[child]:Destroy()
            mirrorInstances[child] = nil
        end
    end)

    connections.ancestryChangedConnection = toBeAdapted.AncestryChanged:Connect(function(_, parent)
        if parent then
            return
        end

        ToBeAdaptedInstances[toBeAdapted] = nil
        for _, child in toBeAdapted:GetChildren() do
            if mirrorInstances[child] then
                local mirrorInstance = mirrorInstances[child]
                mirrorInstances[child] = nil
                mirrorInstance:Destroy()
            end
        end

        for _, connection in pairs(connections) do
            connection:Disconnect()
        end
        connections = {}
    end)
end

-- SetupAdapterParts.lua
-- Setup a newly spawned R15 character to emulate an R6 character
-- The character will have "adapter parts" added to it which old script can operate on
local SetupAdapterParts = {}

local CollectionService = game:GetService("CollectionService")

-- AdapterReference.rbxm is set up as { AdapterReference {Left Arm {...}, Right Arm {...},...}, CollisionHead {...} }
-- i.e. CollisionHead and AdapterReference are at then same level
local AdapterReference = script:WaitForChild("AdapterReference")
local CollisionHead = script:WaitForChild("CollisionHead")
AdapterReference.Parent = nil
CollisionHead.Parent = nil

local Character = script.Parent
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

local PartNameToAdapter = {}
local AdapterToParts = {}

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

local function onWeldDestroyed(adapter)
    local parts = AdapterToParts[adapter]
    for part, _ in parts do
        part:BreakJoints()
    end
end

local function setUpAdapterPart(adapter)
    local newAdapter = adapter:Clone()
    newAdapter:ClearAllChildren()
    newAdapter.Parent = Character

    local adapterChildren = adapter:GetChildren()
    for _, child in adapterChildren do
        PartNameToAdapter[child.Name] = newAdapter
        AdapterToParts[newAdapter] = {}
        if child:FindFirstChildWhichIsA("Weld") then
            WeldPartNames[child.Name] = true

            local weldTo = Character:FindFirstChild(child.Name)
            weldParts(newAdapter, weldTo)
        end
    end

    return newAdapter
end

local function onAdaptedPartAdded(part)
    local adapter = PartNameToAdapter[part.Name]

    if WeldPartNames[part.Name] then
        adapter.Color = part.Color
        adapter.Transparency = part.Transparency
        local weld = weldParts(adapter, part)
        table.insert(
                connections,
                weld.AncestryChanged:Connect(function(_, parent)
                    if parent then
                        return
                    end

                    onWeldDestroyed(adapter)
                end)
        )
    end

    AdaptInstance(part, adapter)
    AdapterToParts[adapter][part] = true
end

local function onChildAdded(child)
    if child:IsA("BasePart") then
        setUpPart(child)
        if PartNameToAdapter[child.Name] then
            onAdaptedPartAdded(child)
        end
    end
    if child:IsA("Humanoid") then
        child.BreakJointsOnDeath = false
    end
end

local function onChildRemoved(child)
    if child:IsA("BasePart") and PartNameToAdapter[child.Name] then
        local adapter = PartNameToAdapter[child.Name]
        AdapterToParts[adapter][child] = nil
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

local function createHead()
    local newHead = CollisionHead:Clone()
    newHead:ClearAllChildren()
    newHead.Parent = Character

    local headChildren = CollisionHead:GetChildren()
    for _, child in headChildren do
        --the only child under the CollisionHead is the Head. I only kept this formatting due to the AdapterReference
        local part = Character:FindFirstChild(child.Name)
        if not part	then
            continue
        end
        if child:FindFirstChildWhichIsA("Weld") then
            local weldTo = Character:FindFirstChild(child.Name)
            weldParts(newHead, weldTo)
        end
        setUpAestheticPart(part)
    end
    CollisionHead:Destroy()
    CollectionService:AddTag(newHead, ALWAYS_TRANSPARENT_PART_TAG)
end

function SetupAdapterParts.setupCharacter()
    for _, child in AdapterReference:GetChildren() do
        local adapter = setUpAdapterPart(child)
        CollectionService:AddTag(adapter, ALWAYS_TRANSPARENT_PART_TAG)
    end
    AdapterReference:Destroy()

    table.insert(connections, Character.ChildAdded:Connect(onChildAdded))
    table.insert(connections, Character.ChildRemoved:Connect(onChildRemoved))
    table.insert(connections, Character.AncestryChanged:Connect(onAncestryChanged))

    for _, child in Character:GetChildren() do
        onChildAdded(child)
    end

    createHead()
end

SetupAdapterParts.setupCharacter()

-- UnificationScale.lua
-- Module script implementing scaling and positioning of R15 parts to target positions.
-- The target in this script is defined according to R6 characters
local UnificationScale = {}

local PART_NAMES = {
	"RightFoot",
	"LeftFoot",
	"RightHand",
	"LeftHand",
	"RightLowerArm",
	"LeftLowerArm",
	"RightLowerLeg",
	"LeftLowerLeg",
	"RightUpperArm",
	"LeftUpperArm",
	"RightUpperLeg",
	"LeftUpperLeg",
	"LowerTorso",
	"UpperTorso",
	"Head",
}

local MOTOR_MAPPINGS: { [string]: string } = {
	RightFoot = "RightAnkle",
	LeftFoot = "LeftAnkle",
	RightHand = "RightWrist",
	LeftHand = "LeftWrist",
	RightLowerArm = "RightElbow",
	LeftLowerArm = "LeftElbow",
	RightLowerLeg = "RightKnee",
	LeftLowerLeg = "LeftKnee",
	RightUpperArm = "RightShoulder",
	LeftUpperArm = "LeftShoulder",
	RightUpperLeg = "RightHip",
	LeftUpperLeg = "LeftHip",
	LowerTorso = "Root",
	UpperTorso = "Waist",
	Head = "Neck",
}

local ACCESSORY_MAPPINGS: { [string]: string } = {
	FaceCenterAttachment = "Head",
	FaceFrontAttachment = "Head",
	HairAttachment = "Head",
	HatAttachment = "Head",

	LeftFootAttachment = "LeftFoot",

	LeftGripAttachment = "LeftHand",

	LeftShoulderAttachment = "LeftUpperArm",

	RightShoulderAttachment = "RightUpperArm",

	WaistCenterAttachment = "LowerTorso",
	WaistFrontAttachment = "LowerTorso",
	WaistBackAttachment = "LowerTorso",

	RightFootAttachment = "RightFoot",

	RightGripAttachment = "RightHand",

	BodyBackAttachment = "UpperTorso",
	BodyFrontAttachment = "UpperTorso",
	LeftCollarAttachment = "UpperTorso",
	NeckAttachment = "UpperTorso",
	RightCollarAttachment = "UpperTorso",

	RootAttachment = "HumanoidRootPart",
}

type R15Hitboxes = {
	RightFoot: Vector3,
	LeftFoot: Vector3,
	RightHand: Vector3,
	LeftHand: Vector3,
	RightLowerArm: Vector3,
	LeftLowerArm: Vector3,
	RightLowerLeg: Vector3,
	LeftLowerLeg: Vector3,
	RightUpperArm: Vector3,
	LeftUpperArm: Vector3,
	RightUpperLeg: Vector3,
	LeftUpperLeg: Vector3,
	LowerTorso: Vector3,
	UpperTorso: Vector3,
	Head: Vector3,
	HumanoidRootPart: Vector3,
}

type RiggingAttachment = {
	C0: Vector3,
	C1: Vector3,
	Part0: Part,
	Part1: Part,
}

type R15Attachments = {
	RightFoot: RiggingAttachment,
	LeftFoot: RiggingAttachment,
	RightHand: RiggingAttachment,
	LeftHand: RiggingAttachment,
	RightLowerArm: RiggingAttachment,
	LeftLowerArm: RiggingAttachment,
	RightLowerLeg: RiggingAttachment,
	LeftLowerLeg: RiggingAttachment,
	RightUpperArm: RiggingAttachment,
	LeftUpperArm: RiggingAttachment,
	RightUpperLeg: RiggingAttachment,
	LeftUpperLeg: RiggingAttachment,
	LowerTorso: RiggingAttachment,
	UpperTorso: RiggingAttachment,
	Head: RiggingAttachment,
	HumanoidRootPart: RiggingAttachment,
}

type R15Definition = {
	Sizes: { [string]: Vector3 },
	Rigging: { [string]: { C0: CFrame, C1: CFrame } },
}

UnificationScale.Target = {
	Sizes = {
		RightFoot = Vector3.new(1, 0.3, 1),
		LeftFoot = Vector3.new(1, 0.3, 1),
		RightHand = Vector3.new(1, 0.3, 1),
		LeftHand = Vector3.new(1, 0.3, 1),
		RightLowerArm = Vector3.new(1, 1.0518989562988281, 1),
		LeftLowerArm = Vector3.new(1, 1.0518989562988281, 1),
		RightLowerLeg = Vector3.new(1, 1.1930999755859375, 1),
		LeftLowerLeg = Vector3.new(1, 1.193100094795227, 1),
		RightUpperArm = Vector3.new(1, 1.1686992645263672, 1),
		LeftUpperArm = Vector3.new(1, 1.1686992645263672, 1),
		RightUpperLeg = Vector3.new(1, 1.2166004180908203, 1),
		LeftUpperLeg = Vector3.new(1, 1.2166005373001099, 1),
		LowerTorso = Vector3.new(2, 0.4, 1),
		UpperTorso = Vector3.new(2, 1.6, 1),
		Head = Vector3.new(1.2, 1.2, 1.2),
		HumanoidRootPart = Vector3.new(2, 2, 1),
	},
	Rigging = {
		RightAnkle = {
			C0 = CFrame.new(0, -0.547157168, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, 0.101939559, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		LeftAnkle = {
			C0 = CFrame.new(0, -0.547157228, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, 0.101939693, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		RightWrist = {
			C0 = CFrame.new(0, -0.5009287, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, 0.125045404, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		LeftWrist = {
			C0 = CFrame.new(0.000478625298, -0.5009287, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0.000478982925, 0.125045404, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		RightElbow = {
			C0 = CFrame.new(0, -0.334165096, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, 0.258579493, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		LeftElbow = {
			C0 = CFrame.new(0.000479221344, -0.334056377, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0.000478625298, 0.258688211, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		RightKnee = {
			C0 = CFrame.new(0, -0.400946498, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, 0.379174292, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		LeftKnee = {
			C0 = CFrame.new(0, -0.401102424, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, 0.379018486, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		RightShoulder = {
			C0 = CFrame.new(0.99999994, 0.56301713, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(-0.500000715, 0.394326687, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		LeftShoulder = {
			C0 = CFrame.new(-1, 0.56301713, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0.500000358, 0.394326687, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		RightHip = {
			C0 = CFrame.new(0.499999881, -0.199972257, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, 0.420782268, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		LeftHip = {
			C0 = CFrame.new(-0.500000119, -0.199972257, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, 0.420782208, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		Root = {
			C0 = CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, -0.199972257, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		Waist = {
			C0 = CFrame.new(0, 0.200024918, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, -0.799985707, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
		Neck = {
			C0 = CFrame.new(0, 0.800017118, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			C1 = CFrame.new(0, -0.500000119, -0.000272244215, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		},
	},
} :: R15Definition

local function GetHitboxes(character: Model): R15Hitboxes
	local ret = {}
	for _, name in PART_NAMES do
		local part = character[name]
		ret[name] = part.Size
	end
	ret.HumanoidRootPart = character.HumanoidRootPart.Size
	return ret
end

local function GetOffset(attachment: RiggingAttachment, part: Part | MeshPart): Vector3
	if attachment.Part0 == part then
		return attachment.C0
	elseif attachment.Part1 == part then
		return attachment.C1
	else
		error("part not element of attachment")
	end
end

local function GetRelativeRigging(motor: Motor6D): RiggingAttachment
	if motor.Part0 == nil or motor.Part1 == nil then
		error("Missing attachment parts")
	end

	return {
		C0 = motor.C0.Position / motor.Part0.Size,
		C1 = motor.C1.Position / motor.Part1.Size,
		Part0 = motor.Part0,
		Part1 = motor.Part1,
	}
end

local function GetRelativeAttachments(character: Model): R15Attachments
	local ret = {}
	for _, name in PART_NAMES do
		local part = character[name] :: MeshPart

		if MOTOR_MAPPINGS[name] ~= nil then
			local motor = part:WaitForChild(MOTOR_MAPPINGS[name]) :: Motor6D
			ret[name] = GetRelativeRigging(motor)
		end
	end

	return ret
end

local function ResetScaling(humanoid: Humanoid)
	humanoid.AutomaticScalingEnabled = false
	local bodyWidthScaleValue = humanoid:FindFirstChild("BodyWidthScale")
	if bodyWidthScaleValue then
		bodyWidthScaleValue:Destroy()
	end

	local bodyDepthScaleValue = humanoid:FindFirstChild("BodyDepthScale")
	if bodyDepthScaleValue then
		bodyDepthScaleValue:Destroy()
	end

	local bodyProportionScaleValue = humanoid:FindFirstChild("BodyProportionScale")
	if bodyProportionScaleValue then
		bodyProportionScaleValue:Destroy()
	end

	local bodyHeightScaleValue = humanoid:FindFirstChild("BodyHeightScale")
	if bodyHeightScaleValue then
		bodyHeightScaleValue:Destroy()
	end

	local headScaleValue = humanoid:FindFirstChild("HeadScale")
	if headScaleValue then
		headScaleValue:Destroy()
	end
end

local function MoveAndScalePart(part: MeshPart, newSize: Vector3): MeshPart
	part.Archivable = true
	local oldSize = part.Size
	part.Size = newSize

	if part:FindFirstChild("OriginalSize") then
		part.OriginalSize.Value = part.Size
	end

	local scaleFactor = newSize / oldSize
	for _, child in pairs(part:GetChildren()) do
		if child.ClassName == "Attachment" then
			child.CFrame = child.CFrame + child.CFrame.Position * (scaleFactor - Vector3.one)
			if child:FindFirstChild("OriginalPosition") then
				child.OriginalPosition.Value = child.Position
			end
		end
	end
end

local function MoveAndScaleUpperTorso(
	upperTorso: MeshPart,
	oldRelativeRigging: R15Attachments,
	oldHitboxes: R15Hitboxes,
	targetRig: R15Definition,
	scalingFactors: { [string]: Vector3 }
)
	local left = GetOffset(oldRelativeRigging.LeftUpperArm, upperTorso)
	local right = GetOffset(oldRelativeRigging.RightUpperArm, upperTorso)
	local top = GetOffset(oldRelativeRigging.Head, upperTorso)
	local bottom = GetOffset(oldRelativeRigging.UpperTorso, upperTorso)
	local relativeX = (targetRig.Rigging.RightShoulder.C0.X - targetRig.Rigging.LeftShoulder.C0.X)
		/ (right.X - left.X)
		/ targetRig.Sizes.UpperTorso.X

	-- Clamp height so characters can't get too tall
	local relativeY = (targetRig.Rigging.Neck.C0.Y - targetRig.Rigging.Waist.C1.Y)
		/ (top.Y - bottom.Y)
		/ targetRig.Sizes.UpperTorso.Y
	local relativeZ = oldHitboxes.UpperTorso.Z / targetRig.Sizes.UpperTorso.Z

	relativeX = math.clamp(relativeX, 0, 1)
	relativeY = math.clamp(relativeY, 0, 0.9)
	relativeZ = math.clamp(relativeZ, 0, 1.5)

	local scaleFactor = Vector3.new(relativeX, relativeY, relativeZ)

	scalingFactors["UpperTorso"] = scaleFactor

	MoveAndScalePart(upperTorso, targetRig.Sizes.UpperTorso * scaleFactor)
end

local function MoveAndScaleLowerTorso(
	lowerTorso: MeshPart,
	oldRelativeRigging: R15Attachments,
	oldHitboxes: R15Hitboxes,
	targetRig: R15Definition,
	scalingFactors: { [string]: Vector3 }
)
	local lowerTop = GetOffset(oldRelativeRigging.UpperTorso, lowerTorso)
	local lowerBotttom = GetOffset(oldRelativeRigging.LeftUpperLeg, lowerTorso)
	local lowerLeft = GetOffset(oldRelativeRigging.LeftUpperLeg, lowerTorso)
	local lowerRight = GetOffset(oldRelativeRigging.RightUpperLeg, lowerTorso)

	local relativeX = (targetRig.Rigging.RightHip.C0.Position.X - targetRig.Rigging.LeftHip.C0.Position.X)
		/ (lowerRight.X - lowerLeft.X)
		/ targetRig.Sizes.LowerTorso.X
	local relativeY = (targetRig.Rigging.Waist.C0.Position.Y - targetRig.Rigging.LeftHip.C0.Position.Y)
		/ (lowerTop.Y - lowerBotttom.Y)
		/ targetRig.Sizes.LowerTorso.Y
	local relativeZ = oldHitboxes.LowerTorso.Z / targetRig.Sizes.LowerTorso.Z

	relativeX = math.clamp(relativeX, 0, 0.9)
	relativeY = math.clamp(relativeY, 0, 5)
	relativeZ = math.clamp(relativeZ, 0, 0.9)

	local scaleFactor = Vector3.new(relativeX, relativeY, relativeZ)

	scalingFactors["LowerTorso"] = scaleFactor

	MoveAndScalePart(lowerTorso, targetRig.Sizes.LowerTorso * scaleFactor)
end

local function MoveAndScaleTorso(
	character: Model,
	oldRelativeRigging: R15Attachments,
	oldHitboxes: R15Hitboxes,
	targetRig: R15Definition,
	scalingFactors: { [string]: Vector3 }
)
	MoveAndScaleUpperTorso(character.UpperTorso, oldRelativeRigging, oldHitboxes, targetRig, scalingFactors)
	MoveAndScaleLowerTorso(character.LowerTorso, oldRelativeRigging, oldHitboxes, targetRig, scalingFactors)
end

local function calculateCombinedPartsHeight(
	secondPartPos: Vector3,
	thirdPartPos: Vector3,
	firstPartSize: Vector3,
	secondPartSize: Vector3,
	thirdPartSize: Vector3
): Vector3
	-- Set first part to origin
	local firstPartPos = Vector3.zero

	local minFirstPos = firstPartPos - firstPartSize / 2
	local minSecondPos = secondPartPos - secondPartSize / 2
	local minThirdPos = thirdPartPos - thirdPartSize / 2

	local maxFirstPos = firstPartPos + firstPartSize / 2
	local maxSecondPos = secondPartPos + secondPartSize / 2
	local maxThirdPos = thirdPartPos + thirdPartSize / 2

	local partHeight = maxFirstPos:Max(maxSecondPos, maxThirdPos) - minFirstPos:Min(minSecondPos, minThirdPos)
	return partHeight
end

local function MoveAndScaleArm(
	character: Model,
	oldHitboxes: R15Hitboxes,
	side: "Left" | "Right",
	scalingFactors: { [string]: Vector3 }
)
	local upperArm = character[side .. "UpperArm"]
	local lowerArm = character[side .. "LowerArm"]
	local hand = character[side .. "Hand"]

	local oldUpperSize = oldHitboxes[side .. "UpperArm"]
	local oldLowerSize = oldHitboxes[side .. "LowerArm"]
	local oldHandSize = oldHitboxes[side .. "Hand"]

	-- Calculate current {old} arm height by traversing joints, showing upperArmPos as Vector3.zero for readability, not actual usage
	local upperArmPos = Vector3.zero
	local lowerArmPos = upperArmPos
		+ upperArm[side .. "ElbowRigAttachment"].Position
	- lowerArm[side .. "ElbowRigAttachment"].Position
	local handPos = lowerArmPos
		+ lowerArm[side .. "WristRigAttachment"].Position
	- hand[side .. "WristRigAttachment"].Position
	local armSize = calculateCombinedPartsHeight(lowerArmPos, handPos, oldUpperSize, oldLowerSize, oldHandSize)

	local targetSize = Vector3.new(1, 2, 1)

	local scaleFactor = Vector3.new(
		math.max(math.clamp(targetSize.X / armSize.X, 0, 2.5), 1),
		targetSize.Y / armSize.Y,
		math.max(math.clamp(targetSize.Z / armSize.Z, 0, 1), 1)
	)

	MoveAndScalePart(upperArm, scaleFactor * oldUpperSize)
	MoveAndScalePart(lowerArm, scaleFactor * oldLowerSize)
	MoveAndScalePart(hand, scaleFactor * oldHandSize)
	scalingFactors[side .. "UpperArm"] = scaleFactor
	scalingFactors[side .. "LowerArm"] = scaleFactor
	scalingFactors[side .. "Hand"] = scaleFactor
end

local function MoveAndScaleArms(character: Model, oldHitboxes: R15Hitboxes, scalingFactors: { [string]: Vector3 })
	MoveAndScaleArm(character, oldHitboxes, "Left", scalingFactors)
	MoveAndScaleArm(character, oldHitboxes, "Right", scalingFactors)
end

local function MoveAndScaleLeg(
	character: Model,
	oldHitboxes: R15Hitboxes,
	side: "Left" | "Right",
	scalingFactors: { [string]: Vector3 }
)
	local upperLeg = character[side .. "UpperLeg"]
	local lowerLeg = character[side .. "LowerLeg"]
	local foot = character[side .. "Foot"]
	local humanoidRootPart = character["HumanoidRootPart"]
	local lowerTorso = character["LowerTorso"]

	local oldUpperSize = oldHitboxes[side .. "UpperLeg"]
	local oldLowerSize = oldHitboxes[side .. "LowerLeg"]
	local oldFootSize = oldHitboxes[side .. "Foot"]

	-- Calculate current {old} leg height
	local upperLegPos = Vector3.zero
	local lowerLegPos = upperLegPos
		+ upperLeg[side .. "KneeRigAttachment"].Position
	- lowerLeg[side .. "KneeRigAttachment"].Position
	local footPos = lowerLegPos
		+ lowerLeg[side .. "AnkleRigAttachment"].Position
	- foot[side .. "AnkleRigAttachment"].Position
	local legSize = calculateCombinedPartsHeight(lowerLegPos, footPos, oldUpperSize, oldLowerSize, oldFootSize)

	-- Need to calculate leg height based on the HipHeight so that characters don't look like they are floating or sinking into the ground
	local HRPPos = Vector3.zero
	upperLegPos = HRPPos
		+ humanoidRootPart["RootRigAttachment"].Position
	- lowerTorso["RootRigAttachment"].Position
		+ lowerTorso[side .. "HipRigAttachment"].Position
	- upperLeg[side .. "HipRigAttachment"].Position
	lowerLegPos = upperLegPos
		+ upperLeg[side .. "KneeRigAttachment"].Position
	- lowerLeg[side .. "KneeRigAttachment"].Position
	footPos = lowerLegPos
		+ lowerLeg[side .. "AnkleRigAttachment"].Position
	- foot[side .. "AnkleRigAttachment"].Position
	local maxUpper = upperLegPos + oldUpperSize / 2
	local maxLower = lowerLegPos + oldLowerSize / 2
	local maxFoot = footPos + oldFootSize / 2

	local maxLegPos = maxUpper:Max(maxLower, maxFoot) :: Vector3
	local HRPIntersection = maxLegPos.Y - (HRPPos.Y - humanoidRootPart.Size.Y / 2)
	local percentageIntersection = HRPIntersection / legSize.Y

	local targetSize = Vector3.new(1, 2, 1)
	-- Get the part of the Leg OUTSIDE of the HRP to be the same length as the HipHeight (Humanoid.HipHeight == 2 for R6)
	local targetHeight = 2 / (1 - percentageIntersection)

	local scaleFactor = Vector3.new(
		math.max(1, math.clamp(targetSize.X / legSize.X, 0, 1.4)),
		targetHeight / legSize.Y,
		math.max(1, math.clamp(targetSize.Z / legSize.Z, 0, 1.4))
	)

	MoveAndScalePart(upperLeg, scaleFactor * oldUpperSize)
	MoveAndScalePart(lowerLeg, scaleFactor * oldLowerSize)
	MoveAndScalePart(foot, scaleFactor * oldFootSize)
	scalingFactors[side .. "UpperLeg"] = scaleFactor
	scalingFactors[side .. "LowerLeg"] = scaleFactor
	scalingFactors[side .. "Foot"] = scaleFactor
end

local function MoveAndScaleLegs(character: Model, oldHitboxes: R15Hitboxes, scalingFactors: { [string]: Vector3 })
	MoveAndScaleLeg(character, oldHitboxes, "Left", scalingFactors)
	MoveAndScaleLeg(character, oldHitboxes, "Right", scalingFactors)
end

local function MoveAndScaleHead(character: Model, scalingFactors: { [string]: Vector3 })
	local head = character["Head"]
	local headSize = head.Size

	local constScaleNumber = 1.2
	local scaleFactor = Vector3.new(constScaleNumber, constScaleNumber, constScaleNumber)

	scalingFactors["Head"] = scaleFactor

	MoveAndScalePart(head, scaleFactor * headSize)
end

local function MoveAndScaleParts(
	character: Model,
	oldRelativeRigging: R15Attachments,
	oldHitboxes: R15Hitboxes,
	targetRig: R15Definition,
	scalingFactors: { [string]: Vector3 }
)
	character.HumanoidRootPart.Size = targetRig.Sizes.HumanoidRootPart
	MoveAndScaleTorso(character, oldRelativeRigging, oldHitboxes, targetRig, scalingFactors)
	MoveAndScaleArms(character, oldHitboxes, scalingFactors)
	MoveAndScaleLegs(character, oldHitboxes, scalingFactors)
	MoveAndScaleHead(character, scalingFactors)
end

local function MoveAndScaleAccessories(character: Model, scalingFactors: { [string]: Vector3 })
	local humanoid = character:WaitForChild("Humanoid")
	for _, accessory in pairs(humanoid:GetAccessories()) do
		local accessoryHandle = accessory:WaitForChild("Handle") :: MeshPart
		local accessoryAttachment = accessoryHandle:FindFirstChildOfClass("Attachment") :: Attachment
		local accessoryWeld = accessoryHandle:FindFirstChildOfClass("Weld") :: Weld

		if not accessoryAttachment or not accessoryWeld then
			continue
		end

		local partName = ACCESSORY_MAPPINGS[accessoryAttachment.Name]
		if partName == "UpperTorso" or partName == "LowerTorso" then
			continue
		end
		local partScaling = scalingFactors[partName]

		accessoryHandle.Size = accessoryHandle.Size * partScaling
		if accessoryHandle:FindFirstChild("OriginalSize") then
			accessoryHandle.OriginalSize.Value = accessoryHandle.OriginalSize.Value * partScaling
		end
		accessoryAttachment.CFrame = accessoryAttachment.CFrame
			+ (accessoryAttachment.CFrame.Position * (partScaling - Vector3.one))
		accessoryWeld.C1 = accessoryWeld.C1 + (accessoryWeld.C1.Position * (partScaling - Vector3.one))
	end
end

function UnificationScale.ScaleCharacter(character: Model, targetRig: R15Definition)
	local humanoid: Humanoid = character.Humanoid :: Humanoid

	ResetScaling(humanoid)

	local oldHitboxes = GetHitboxes(character)
	local oldRelativeRigging = GetRelativeAttachments(character)
	local scalingFactors = {}
	MoveAndScaleParts(character, oldRelativeRigging, oldHitboxes, targetRig, scalingFactors)
	MoveAndScaleAccessories(character, scalingFactors)
	humanoid.HipHeight = 2
	humanoid:BuildRigFromAttachments()
end

UnificationScale.ScaleCharacter(Character, UnificationScale.Target)

-- MoveAdapterPartHitboxes.lua
-- Module script implementing moving R6 adapter parts to their correct positions.
local MoveAdapterPartHitboxes = {}

local R6Parts: { [number]: string } = {
	"Right Leg",
	"Left Leg",
	"Left Arm",
	"Right Arm",
	"CollisionHead",
}

local PartToAttachmentMapping = {
	["LowerTorso"] = {
		Part0 = "HumanoidRootPart",
		Part1 = "LowerTorso",
		Attachment = "RootRigAttachment",
	},
	["UpperTorso"] = {
		Part0 = "LowerTorso",
		Part1 = "UpperTorso",
		Attachment = "WaistRigAttachment",
	},
	["CollisionHead"] = {
		Part0 = "UpperTorso",
		Part1 = "Head",
		Attachment = "NeckRigAttachment",
		SizeDiffFunction = function(torsoSize, partSize)
			return Vector3.new(0, -(torsoSize.Y + partSize.Y) / 2, 0)
		end,
	},
	["Left Arm"] = {
		Part0 = "UpperTorso",
		Part1 = "LeftUpperArm",
		Attachment = "LeftShoulderRigAttachment",
		SizeDiffFunction = function(torsoSize, partSize)
			return Vector3.new((torsoSize.X + partSize.X) / 2, 0, 0)
		end,
	},
	["Right Arm"] = {
		Part0 = "UpperTorso",
		Part1 = "RightUpperArm",
		Attachment = "RightShoulderRigAttachment",
		SizeDiffFunction = function(torsoSize, partSize)
			return Vector3.new(-(torsoSize.X + partSize.X) / 2, 0, 0)
		end,
	},
	["Left Leg"] = {
		Part0 = "LowerTorso",
		Part1 = "LeftUpperLeg",
		Attachment = "LeftHipRigAttachment",
		SizeDiffFunction = function(torsoSize, partSize)
			return Vector3.new(partSize.X / 2, (torsoSize.Y + partSize.Y) / 2, 0)
		end,
	},
	["Right Leg"] = {
		Part0 = "LowerTorso",
		Part1 = "RightUpperLeg",
		Attachment = "RightHipRigAttachment",
		SizeDiffFunction = function(torsoSize, partSize)
			return Vector3.new(-partSize.X / 2, (torsoSize.Y + partSize.Y) / 2, 0)
		end,
	},
}

local function getPartRelativePosition(character, part)
	local part0 = character:FindFirstChild(PartToAttachmentMapping[part].Part0)
	local part1 = character:FindFirstChild(PartToAttachmentMapping[part].Part1)
	if not part0 or not part1 then
		return nil
	end

	local part0Attachment = part0:FindFirstChild(PartToAttachmentMapping[part].Attachment)
	local part1Attachment = part1:FindFirstChild(PartToAttachmentMapping[part].Attachment)
	if not part0Attachment or not part1Attachment then
		return nil
	end

	--gets the relative position of the part depending on the previous one
	local partPosition = part0Attachment.Position - part1Attachment.Position
	return partPosition
end

local function getPartSizeDiff(partName, partSize, torsoSize)
	local sizeDiffFunction = PartToAttachmentMapping[partName].SizeDiffFunction
	if sizeDiffFunction then
		return sizeDiffFunction(torsoSize, partSize)
	else
		return Vector3.new()
	end
end

function MoveAdapterPartHitboxes.moveHitboxes(character: Model)
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	local torso = character:FindFirstChild("Torso")

	if not humanoidRootPart or not torso then
		return
	end

	local torsoWeld = torso:FindFirstChildWhichIsA("Weld")
	if torsoWeld then
		torsoWeld.C0 = CFrame.new()
		torsoWeld.C1 = CFrame.new()
	else
		return
	end

	local lowerTorsoPosition = getPartRelativePosition(character, "LowerTorso")
	if not lowerTorsoPosition then
		return
	end

	local upperTorsoPosition = getPartRelativePosition(character, "UpperTorso")
	if not upperTorsoPosition then
		return
	end
	upperTorsoPosition = lowerTorsoPosition + upperTorsoPosition
	torsoWeld.C0 = CFrame.new(upperTorsoPosition)

	for _, partName in R6Parts do
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

		local adapterPartPosDiff = getPartRelativePosition(character, partName)
		if not adapterPartPosDiff then
			continue
		end
		local adapterPartSizeDiff = getPartSizeDiff(partName, part.Size, torso.Size)
		if partName == "Left Arm" or partName == "Right Arm" or partName == "CollisionHead" then
			adapterPartPosDiff = adapterPartPosDiff + upperTorsoPosition
		elseif partName == "Left Leg" or partName == "Right Leg" then
			adapterPartPosDiff = adapterPartPosDiff + lowerTorsoPosition
		end
		weld.C0 = CFrame.new(adapterPartPosDiff + adapterPartSizeDiff)
	end
end

MoveAdapterPartHitboxes.moveHitboxes(Character)
