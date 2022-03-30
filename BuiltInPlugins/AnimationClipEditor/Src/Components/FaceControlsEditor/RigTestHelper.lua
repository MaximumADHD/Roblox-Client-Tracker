local RigHelper = {}

RigHelper.buildTestRig = function()
	local model = Instance.new("Model")
	local root = Instance.new("Part", model)
	root.Name = "HumanoidRootPart"
	local torso = Instance.new("Part", model)
	torso.Name = "UpperTorso"
	local head = Instance.new("Part", model)
	head.Name = "Head"
	local torsoJoint = Instance.new("Motor6D", torso)
	torsoJoint.Part0 = root
	torsoJoint.Part1 = torso
	local headJoint = Instance.new("Motor6D", head)
	headJoint.Part0 = torso
	headJoint.Part1 = head

	local rootToUpperTorsoAttach = Instance.new("Attachment", root)
	rootToUpperTorsoAttach.Name = "RootAttachment"

	local upperTorsoToRootAttach = Instance.new("Attachment", torso)
	upperTorsoToRootAttach.Name = "RootAttachment"

	local upperTorsoToHeadAttach = Instance.new("Attachment", torso)
	upperTorsoToHeadAttach.Name = "NeckAttachment"

	local headToUpperTorsoAttach = Instance.new("Attachment", head)
	headToUpperTorsoAttach.Name = "NeckAttachment"

	local constraint = Instance.new("BallSocketConstraint", model)
	constraint.Enabled = false
	constraint.Attachment0 = upperTorsoToHeadAttach
	constraint.Attachment1 = headToUpperTorsoAttach

	return model
end

return RigHelper
