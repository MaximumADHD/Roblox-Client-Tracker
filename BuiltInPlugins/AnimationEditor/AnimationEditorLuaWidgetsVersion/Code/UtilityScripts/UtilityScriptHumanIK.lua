local IK = {}

IK.ConstraintTypes = {
	BallSocket = {},
	Hinge = {},
}

IK.BodyPartNames = {
	"HumanoidRootPart", "Head", "UpperTorso", "RightUpperArm", "LeftUpperArm",
	"RightLowerArm", "LeftLowerArm", "LeftHand", "RightHand", "LowerTorso",
	"LeftUpperLeg", "RightUpperLeg", "LeftLowerLeg", "RightLowerLeg", "LeftFoot",
	"RightFoot",
}

IK.BodyParts = {}

IK.ConstraintConfigurations = {
	Ankle = {
		Type = IK.ConstraintTypes.BallSocket,
		LimitsEnabled = true,
		Restitution = 0,
		TwistLimitsEnabled = true,
		UpperAngle = 20,
		TwistLowerAngle = -45,
		TwistUpperAngle = 20,
	},

	Knee = {
		Type = IK.ConstraintTypes.Hinge,
		LimitsEnabled = true,
		LowerAngle = -135,
		Restitution = 0,
		UpperAngle = -10,
	},

	Hip = {
		Type = IK.ConstraintTypes.BallSocket,
		LimitsEnabled = true,
		Restitution = 0,
		TwistLimitsEnabled = true,
		UpperAngle = 135,
		TwistLowerAngle = -3,
		TwistUpperAngle = 3,
		Axis = Vector3.new(0, -1, 0),
		SecondaryAxis = Vector3.new(0, 0, 1)
	},

	Waist = {
		Type = IK.ConstraintTypes.Hinge,
		LimitsEnabled = true,
		LowerAngle = -90,
		Restitution = 0,
		UpperAngle = 90,
	},

	Shoulder = {
		Type = IK.ConstraintTypes.BallSocket,
		LimitsEnabled = true,
		Restitution = 0,
		TwistLimitsEnabled = false,
		UpperAngle = 170,
		TwistLowerAngle = -90,
		TwistUpperAngle = 135,
	},

	Elbow = {
		Type = IK.ConstraintTypes.Hinge,
		LimitsEnabled = true,
		LowerAngle = 0,
		Restitution = 0,
		UpperAngle = 135,
	},

	Wrist = {
		Type = IK.ConstraintTypes.BallSocket,
		LimitsEnabled = true,
		Restitution = 0,
		TwistLimitsEnabled = true,
		UpperAngle = 20,
		TwistLowerAngle = 0,
		TwistUpperAngle = 0,
	},

	Neck = {
		Type = IK.ConstraintTypes.BallSocket,
		LimitsEnabled = true,
		Restitution = 0,
		TwistLimitsEnabled = false,
		UpperAngle = 30,
		TwistLowerAngle = -70,
		TwistUpperAngle = 70,
	}
}

local function findAttachments(self, Paths, childPart, parentPart)
	for _, child in ipairs(childPart:GetChildren()) do
		if child:IsA("Attachment") then
			attachment0 = child
			for _, otherChild in ipairs(parentPart:GetChildren()) do
				if otherChild:IsA("Attachment") and otherChild.Name == child.Name then
					return otherChild, child
				end
			end
		end
	end

	Paths.HelperFunctionsWarningsAndPrompts:createAttachmentWarning(Paths)
end

local function verifyBodyPart(self, dummy, partName)
	local part = dummy:FindFirstChild(partName)
	if part then 
		self.BodyParts[partName] = part
		return true
	end

	return false
end

local function hasBodyParts(self, Paths)
	return not Paths.HelperFunctionsTable:isNilOrEmpty(self.BodyParts)
end

local function verifyWelds(self, Paths)
	-- number of welds a proper R15 avatar should have
	local numRequiredWelds = 15

	local weldCount = 0
	local dummy = Paths.DataModelRig:getModel()
	if hasBodyParts(self, Paths) then
		for _, part in pairs(self.BodyParts) do
			for _, child in ipairs(part:GetChildren()) do
				if child:IsA("Motor6D") then
					if self.BodyParts[child.Part0.Name] then
						if child.Part1 == part and child.Part0 == self.PartToParentMap[child.Part1] then
							weldCount = weldCount + 1
						end
					end
				end
			end
		end
	end

	return weldCount == numRequiredWelds
end

local function buildPartToParentsMap(self, Paths)
	if hasBodyParts(self, Paths) then
		self.PartToParentMap = {
			[self.BodyParts.LeftFoot] = self.BodyParts.LeftLowerLeg,
			[self.BodyParts.RightFoot] = self.BodyParts.RightLowerLeg,
			[self.BodyParts.LeftLowerLeg] = self.BodyParts.LeftUpperLeg,
			[self.BodyParts.RightLowerLeg] = self.BodyParts.RightUpperLeg,
			[self.BodyParts.LeftUpperLeg] = self.BodyParts.LowerTorso,
			[self.BodyParts.RightUpperLeg] = self.BodyParts.LowerTorso,
			[self.BodyParts.UpperTorso] = self.BodyParts.LowerTorso,
			[self.BodyParts.LeftUpperArm] = self.BodyParts.UpperTorso,
			[self.BodyParts.RightUpperArm] = self.BodyParts.UpperTorso,
			[self.BodyParts.LeftLowerArm] = self.BodyParts.LeftUpperArm,
			[self.BodyParts.RightLowerArm] = self.BodyParts.RightUpperArm,
			[self.BodyParts.LeftHand] = self.BodyParts.LeftLowerArm,
			[self.BodyParts.RightHand] = self.BodyParts.RightLowerArm,
			[self.BodyParts.Head] = self.BodyParts.UpperTorso,
			[self.BodyParts.LowerTorso] = self.BodyParts.HumanoidRootPart,
		}
	end
end

function IK:verifyForHumanBodyParts(Paths)
	local dummy = Paths.DataModelRig:getModel()
	local missingBodyParts = {}
	self.BodyParts = {}

	for _, name in ipairs(self.BodyPartNames) do
		if not verifyBodyPart(self, dummy, name) then table.insert(missingBodyParts, name) end
	end

	if not Paths.HelperFunctionsTable:isNilOrEmpty(missingBodyParts) then
		Paths.HelperFunctionsWarningsAndPrompts:createMissingBodyPartsWarning(Paths, missingBodyParts)
		return false
	end

	buildPartToParentsMap(self, Paths)

	if verifyWelds(self, Paths) then
		return true
	else
		self.BodyParts = {}
		return false
	end
end

function IK:removeIKConstraints(Paths)
	local numRequiredConstraints = 14
	local constraintCount = 0
	local dummy = Paths.DataModelRig:getModel()
	for _, child in pairs(dummy:GetChildren()) do
		if child:IsA("BallSocketConstraint") or child:IsA("HingeConstraint") then
			local tag = child:FindFirstChild("Tag")
			if tag and tag.Value == self:getTagNameForIK() then

				child:Destroy()
			end
		end
	end
end

function IK:setupConstraints(Paths)
	self.PartToConstraintConfigMap = {}
	self.PartToConstraintMap = {}

	local dummy = Paths.DataModelRig:getModel()
	if dummy and hasBodyParts(self, Paths) then
		self:removeIKConstraints(Paths)

		self.PartToConstraintConfigMap = {
			[self.BodyParts.LeftFoot] = IK.ConstraintConfigurations.Ankle,
			[self.BodyParts.RightFoot] = IK.ConstraintConfigurations.Ankle,
			[self.BodyParts.LeftLowerLeg] = IK.ConstraintConfigurations.Knee,
			[self.BodyParts.RightLowerLeg] = IK.ConstraintConfigurations.Knee,
			[self.BodyParts.LeftUpperLeg] = IK.ConstraintConfigurations.Hip,
			[self.BodyParts.RightUpperLeg] = IK.ConstraintConfigurations.Hip,
			[self.BodyParts.UpperTorso] = IK.ConstraintConfigurations.Waist,
			[self.BodyParts.LeftUpperArm] = IK.ConstraintConfigurations.Shoulder,
			[self.BodyParts.RightUpperArm] = IK.ConstraintConfigurations.Shoulder,
			[self.BodyParts.LeftLowerArm] = IK.ConstraintConfigurations.Elbow,
			[self.BodyParts.RightLowerArm] = IK.ConstraintConfigurations.Elbow,
			[self.BodyParts.LeftHand] = IK.ConstraintConfigurations.Wrist,
			[self.BodyParts.RightHand] = IK.ConstraintConfigurations.Wrist,
			[self.BodyParts.Head] = IK.ConstraintConfigurations.Neck,
		}

		self.PartToConstraintMap = {}
		for name, part in pairs(Paths.DataModelRig.partListByName) do
			local config = self.PartToConstraintConfigMap[part.Item]
			if config then
				self.PartToConstraintMap[part.Item] = self:createConstraint(Paths, config, dummy, part.Item)
			end
		end
	end
end

function IK:getConstraintForPart(part)
	if self.PartToConstraintMap[part] then
		return self.PartToConstraintMap[part]
	end
end

function IK:fixAttachmentAxes(part)
	self.OriginalAxes = {}
	local constraint = self:getConstraintForPart(part)
	local config = self.PartToConstraintConfigMap[part]
	if constraint and config and config.Axis and config.SecondaryAxis then
		self.OriginalAxes[constraint.Attachment0] = {Axis = constraint.Attachment0.Axis, SecondaryAxis = constraint.Attachment0.SecondaryAxis}
		self.OriginalAxes[constraint.Attachment1] = {Axis = constraint.Attachment1.Axis, SecondaryAxis = constraint.Attachment1.SecondaryAxis}
		constraint.Attachment0.Axis = config.Axis
		constraint.Attachment0.SecondaryAxis = config.SecondaryAxis
		constraint.Attachment1.Axis = config.Axis
		constraint.Attachment1.SecondaryAxis = config.SecondaryAxis
	end
end

function IK:resetAttachmentAxes(Paths)
	if not Paths.HelperFunctionsTable:isNilOrEmpty(self.OriginalAxes) then
		for attachment, axisInfo in pairs(self.OriginalAxes) do
			attachment.Axis = axisInfo.Axis
			attachment.SecondaryAxis = axisInfo.Axis
		end
	end
end

function IK:createConstraint(Paths, config, dummy, part)
	local constraint = nil
	if config.Type == IK.ConstraintTypes.BallSocket then
		constraint = self:createBallSocketConstraint(config, dummy, part)
	elseif config.Type == IK.ConstraintTypes.Hinge then
		constraint = self:createHingeConstraint(config, dummy, part)
	end

	if constraint then
		constraint.Parent = dummy
		constraint.Attachment0, constraint.Attachment1 = findAttachments(self, Paths, part, self.PartToParentMap[part])
		constraint.Name = string.gsub(constraint.Attachment0.Name, "Attachment", "")

		local tag = Instance.new("StringValue", constraint)
		tag.Name = "Tag"
		tag.Value = self:getTagNameForIK()
	end

	return constraint
end

function IK:createBallSocketConstraint(config, dummy, part)
	local constraint = Instance.new("BallSocketConstraint")
	constraint.Enabled = false
	constraint.LimitsEnabled = config.LimitsEnabled
	constraint.Restitution = config.Restitution
	constraint.TwistLimitsEnabled = config.TwistLimitsEnabled
	constraint.UpperAngle = config.UpperAngle
	constraint.TwistUpperAngle = config.TwistUpperAngle
	constraint.TwistLowerAngle = config.TwistLowerAngle
	return constraint
end

function IK:createHingeConstraint(config)
	local constraint = Instance.new("HingeConstraint")
	constraint.Enabled = false
	constraint.LimitsEnabled = config.LimitsEnabled
	constraint.Restitution = config.Restitution
	constraint.LowerAngle = config.LowerAngle
	constraint.UpperAngle = config.UpperAngle
	return constraint
end

function IK:getTagNameForIK()
	return "ForIK"
end

return IK