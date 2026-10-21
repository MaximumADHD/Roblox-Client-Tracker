local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local VRAvatarGesturesServer = require(script.Parent.VRAvatarGesturesServer)
local suppressArmRagdollLimits = VRAvatarGesturesServer._suppressArmRagdollLimits
local restoreArmRagdollLimits = VRAvatarGesturesServer._restoreArmRagdollLimits

-- The ragdoll rig parents each joint's constraint to the joint's child part.
local AJU_JOINT_BY_PART_SUFFIX: { [string]: string } = {
	UpperArm = "Shoulder",
	LowerArm = "Elbow",
	Hand = "Wrist",
}

local function addPart(character: Model, name: string): Part
	local part = Instance.new("Part")
	part.Name = name
	part.Parent = character
	return part
end

local function addBallSocket(part: Part, name: string): BallSocketConstraint
	local constraint = Instance.new("BallSocketConstraint")
	constraint.Name = name
	constraint.LimitsEnabled = true
	constraint.TwistLimitsEnabled = true
	constraint.Parent = part
	return constraint
end

-- An AvatarJointUpgrade arm: a limit-enabled "<joint>BallSocket" per part, plus a child to ignore.
local function makeAjuArm(character: Model, side: string): { [string]: BallSocketConstraint }
	local constraints: { [string]: BallSocketConstraint } = {}
	for partSuffix, jointName in pairs(AJU_JOINT_BY_PART_SUFFIX) do
		local part = addPart(character, side .. partSuffix)
		Instance.new("Attachment").Parent = part
		constraints[partSuffix] = addBallSocket(part, side .. jointName .. "BallSocket")
	end
	return constraints
end

describe("suppress/restoreArmRagdollLimits", function()
	it("clears cone and twist limits on every ragdoll joint in the arm chain", function()
		local character = Instance.new("Model")
		local constraints = makeAjuArm(character, "Right")

		suppressArmRagdollLimits(character, "Right")

		for _, constraint in pairs(constraints) do
			expect(constraint.LimitsEnabled).toBe(false)
			expect(constraint.TwistLimitsEnabled).toBe(false)
		end
	end)

	it("leaves the constraints enabled so the ragdoll rig stays intact for death", function()
		local character = Instance.new("Model")
		local constraints = makeAjuArm(character, "Right")

		suppressArmRagdollLimits(character, "Right")

		for _, constraint in pairs(constraints) do
			expect(constraint.Enabled).toBe(true)
		end
	end)

	it("restores cone and twist limits on the ragdoll joints", function()
		local character = Instance.new("Model")
		local constraints = makeAjuArm(character, "Right")
		suppressArmRagdollLimits(character, "Right")

		restoreArmRagdollLimits(character, "Right")

		for _, constraint in pairs(constraints) do
			expect(constraint.LimitsEnabled).toBe(true)
			expect(constraint.TwistLimitsEnabled).toBe(true)
		end
	end)

	it("clears limits on legacy rigs, where every joint is named RagdollBallSocket", function()
		local character = Instance.new("Model")
		local elbow = addBallSocket(addPart(character, "RightLowerArm"), "RagdollBallSocket")
		local wrist = addBallSocket(addPart(character, "RightHand"), "RagdollBallSocket")

		suppressArmRagdollLimits(character, "Right")

		expect(elbow.LimitsEnabled).toBe(false)
		expect(wrist.LimitsEnabled).toBe(false)
	end)

	it("only touches the requested side", function()
		local character = Instance.new("Model")
		local rightConstraints = makeAjuArm(character, "Right")
		local leftWrist = addBallSocket(addPart(character, "LeftHand"), "LeftWristBallSocket")

		suppressArmRagdollLimits(character, "Right")

		expect(rightConstraints.Hand.LimitsEnabled).toBe(false)
		expect(leftWrist.LimitsEnabled).toBe(true)
		expect(leftWrist.TwistLimitsEnabled).toBe(true)
	end)

	it("ignores ball sockets the ragdoll rig did not create", function()
		local character = Instance.new("Model")
		local hand = addPart(character, "RightHand")
		addBallSocket(hand, "RightWristBallSocket")
		local experienceConstraint = addBallSocket(hand, "HeldToolGrip")

		suppressArmRagdollLimits(character, "Right")

		expect(experienceConstraint.LimitsEnabled).toBe(true)
		expect(experienceConstraint.TwistLimitsEnabled).toBe(true)
	end)

	it("matches the rig naming as a suffix, not anywhere in the name", function()
		local character = Instance.new("Model")
		local experienceConstraint = addBallSocket(addPart(character, "RightHand"), "BallSocketDebugHelper")

		suppressArmRagdollLimits(character, "Right")

		expect(experienceConstraint.LimitsEnabled).toBe(true)
	end)

	it("clears the joints that are present when the character is missing arm parts", function()
		-- no UpperArm or LowerArm to hang the shoulder and elbow off
		local character = Instance.new("Model")
		local wrist = addBallSocket(addPart(character, "RightHand"), "RightWristBallSocket")

		suppressArmRagdollLimits(character, "Right")

		expect(wrist.LimitsEnabled).toBe(false)
	end)

	it("restores a joint to limit-free when it started limit-free, rather than forcing limits on", function()
		local character = Instance.new("Model")
		local wrist = addBallSocket(addPart(character, "RightHand"), "RightWristBallSocket")
		wrist.LimitsEnabled = false
		wrist.TwistLimitsEnabled = false

		suppressArmRagdollLimits(character, "Right")
		restoreArmRagdollLimits(character, "Right")

		expect(wrist.LimitsEnabled).toBe(false)
		expect(wrist.TwistLimitsEnabled).toBe(false)
	end)

	it("preserves the original limits across a re-clear before the restore", function()
		local character = Instance.new("Model")
		local wrist = addBallSocket(addPart(character, "RightHand"), "RightWristBallSocket")

		-- a mid-session rig rebuild clears twice before teardown restores once
		suppressArmRagdollLimits(character, "Right")
		suppressArmRagdollLimits(character, "Right")
		restoreArmRagdollLimits(character, "Right")

		expect(wrist.LimitsEnabled).toBe(true)
		expect(wrist.TwistLimitsEnabled).toBe(true)
	end)

	it("leaves limits untouched when restoring a joint gestures never cleared", function()
		local character = Instance.new("Model")
		local wrist = addBallSocket(addPart(character, "RightHand"), "RightWristBallSocket")
		wrist.LimitsEnabled = false

		restoreArmRagdollLimits(character, "Right")

		expect(wrist.LimitsEnabled).toBe(false)
	end)
end)
