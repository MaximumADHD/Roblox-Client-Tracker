-- Though this is CharacterEmulation.lua, that part of the code is contained after AdaptInstance. This is due to an
-- issue with modulescripts. In order to avoid this issue, we're manually inlining AdaptInstance

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

-- CharacterEmulation.lua
-- Emulate the behavior of R6 characters in an R15 character with adapter parts

local PhysicsService = game:GetService("PhysicsService")

local AESTHETIC_PARTS = "AESTHETIC_PARTS"

local Character = script.Parent

local AestheticPartsGroupExists = false
for _, group in PhysicsService:GetRegisteredCollisionGroups() do
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

local AdapterMapping = {
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
		part.CollisionGroup = AESTHETIC_PARTS
	end
end

local function setAdapterPart(proxiedPart)
	local adapterName = AdapterMapping[proxiedPart.Name]
	local adapter = Character:WaitForChild(adapterName)
	AdaptInstance(proxiedPart, adapter)
end

local function onHumanoidDied()
	if AestheticPartsGroupExists then
		for _, child in Character:GetChildren() do
			if child:IsA("BasePart") and AestheticParts[child.Name] then
				child.CollisionGroup = "Default"
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

	if descendant:IsA("BasePart") and AdapterMapping[descendant.Name] then
		setAdapterPart(descendant)
	end

	if descendant:IsA("BasePart") and descendant.Name == "Head" then
		maintainPropertyValue(descendant, "CanCollide", true)
	end

	if descendant:IsA("Humanoid") then
		setupHumanoid(descendant)
	end

	if descendant:IsA("Motor6D") and descendant.Parent.Name == "Head" and descendant.Name == "Neck" then
		local adapter = descendant:Clone()
		adapter.Enabled = false
		adapter.Parent = Character:WaitForChild("Torso")
		AdaptInstance(descendant, adapter)
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
