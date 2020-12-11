return function()
	local model = Instance.new("Model")
	model.Parent = game.Workspace

	local root = Instance.new("Part")
	root.Size = Vector3.new(3, 3, 3)
	root.Parent = model
	root.Transparency = 1
	root.Anchored = true
	root.Name = "Root"

	local body = Instance.new("Part")
	body.Size = Vector3.new(3, 3, 3)
	body.Parent = model
	body.Name = "Body"

	local rootMotor = Instance.new("Motor6D")
	rootMotor.Part0 = root
	rootMotor.Part1 = body
	rootMotor.Parent = body

	local controller = Instance.new("AnimationController", model)

	for i = 1, 4 do
		local upperLeg = Instance.new("Part", model)
		upperLeg.Size = Vector3.new(4, 1, 1)
		upperLeg.Name = "UpperLeg" ..i

		local lowerLeg = Instance.new("Part", model)
		lowerLeg.Size = Vector3.new(3, 1, 1)
		lowerLeg.Name = "LowerLeg" ..i

		local tip = Instance.new("Part", model)
		tip.Size = Vector3.new(1, 1, 1)
		tip.Name = "Tip" ..i

		local angle = (-3.14159 / 4) + (i - 1) * (3.14159 / 6) 
		local rotation = CFrame.fromEulerAnglesXYZ(0, angle, 0)

		upperLeg.CFrame = rotation + rotation * Vector3.new(3.5, 0, 0)
		lowerLeg.CFrame = rotation + rotation *  Vector3.new(7, 0, 0)
		tip.CFrame = rotation + rotation *  Vector3.new(9, 0, 0)

		local bodyLegAttachment = Instance.new("Attachment", body)
		local legBodyAttachment = Instance.new("Attachment", upperLeg)
		bodyLegAttachment.Name = upperLeg.Name .."Attachment"
		legBodyAttachment.Name = upperLeg.Name .."Attachment"
		bodyLegAttachment.WorldOrientation = Vector3.new(0, angle * 180 / 3.14159, 0)
		bodyLegAttachment.WorldPosition = rotation * Vector3.new(1.5, 0.5, 0)
		legBodyAttachment.WorldPosition = rotation * Vector3.new(1.5, 0.5, 0)

		local upperLowerAttachment = Instance.new("Attachment", upperLeg)
		local lowerUpperAttachment = Instance.new("Attachment", lowerLeg)
		upperLowerAttachment.Name = lowerLeg.Name .."Attachment"
		lowerUpperAttachment.Name = lowerLeg.Name .."Attachment"
		upperLowerAttachment.WorldPosition = rotation * Vector3.new(5.5, 0.5, 0)
		lowerUpperAttachment.WorldPosition = rotation * Vector3.new(5.5, 0.5, 0)
		upperLowerAttachment.Axis = Vector3.new(0, 0, 1)
		lowerUpperAttachment.Axis = Vector3.new(0, 0, 1)

		local lowerTipAttachment = Instance.new("Attachment", lowerLeg)
		local tipLowerAttachment = Instance.new("Attachment", tip)
		lowerTipAttachment.Name = tip.Name .."Attachment"
		tipLowerAttachment.Name = tip.Name .."Attachment"
		lowerTipAttachment.WorldPosition = rotation * Vector3.new(8.5, 0.5, 0)
		tipLowerAttachment.WorldPosition = rotation * Vector3.new(8.5, 0.5, 0)
		lowerTipAttachment.Axis = Vector3.new(0, 0, 1)
		tipLowerAttachment.Axis = Vector3.new(0, 0, 1)

		local upperLegConstraint = Instance.new("BallSocketConstraint", model)
		upperLegConstraint.Attachment0 = bodyLegAttachment
		upperLegConstraint.Attachment1 = legBodyAttachment
		upperLegConstraint.LimitsEnabled = true
		upperLegConstraint.UpperAngle = 135
		upperLegConstraint.TwistLimitsEnabled = true
		upperLegConstraint.TwistLowerAngle = -3
		upperLegConstraint.TwistUpperAngle = 3
		upperLegConstraint.Enabled = false
		upperLegConstraint.Name = "UpperLeg" ..i .."Constraint"

		local lowerLegConstraint = Instance.new("HingeConstraint", model)
		lowerLegConstraint.Attachment0 = upperLowerAttachment
		lowerLegConstraint.Attachment1 = lowerUpperAttachment
		lowerLegConstraint.LimitsEnabled = true
		lowerLegConstraint.LowerAngle = -135
		lowerLegConstraint.UpperAngle = -10
		lowerLegConstraint.Enabled = false
		lowerLegConstraint.Name = "Tip" ..i .."Constraint"

		local tipConstraint = Instance.new("HingeConstraint", model)
		tipConstraint.Attachment0 = lowerTipAttachment
		tipConstraint.Attachment1 = tipLowerAttachment
		tipConstraint.LimitsEnabled = true
		tipConstraint.LowerAngle = -135
		tipConstraint.UpperAngle = -10
		tipConstraint.Enabled = false
		tipConstraint.Name = "LowerLeg" ..i .."Constraint"

		local upperLegMotor = Instance.new("Motor6D")
		upperLegMotor.Part0 = body
		upperLegMotor.Part1 = upperLeg
		upperLegMotor.C0 = CFrame.fromMatrix(
			bodyLegAttachment.Position,
			legBodyAttachment.WorldAxis,
			legBodyAttachment.WorldSecondaryAxis)
		upperLegMotor.C1 = upperLeg.CFrame:inverse() * body.CFrame * upperLegMotor.C0
		upperLegMotor.Parent = upperLeg
		upperLegMotor.Name = "UpperLeg" ..i .."Motor"

		local lowerLegMotor = Instance.new("Motor6D")
		lowerLegMotor.Part0 = upperLeg
		lowerLegMotor.Part1 = lowerLeg
		lowerLegMotor.C0 = CFrame.fromMatrix(
			upperLowerAttachment.Position,
			upperLowerAttachment.Axis,
			upperLowerAttachment.SecondaryAxis)
		lowerLegMotor.C1 = lowerLeg.CFrame:inverse() * upperLeg.CFrame * lowerLegMotor.C0
		lowerLegMotor.Parent = lowerLeg
		lowerLegMotor.Name = "LowerLeg" ..i .."Motor"

		local tipMotor = Instance.new("Motor6D")
		tipMotor.Part0 = lowerLeg
		tipMotor.Part1 = tip
		tipMotor.C0 = CFrame.fromMatrix(
			lowerTipAttachment.Position,
			lowerTipAttachment.Axis,
			lowerTipAttachment.SecondaryAxis)
		tipMotor.C1 = tip.CFrame:inverse() * lowerLeg.CFrame * tipMotor.C0
		tipMotor.Parent = tip
		tipMotor.Name = "Tip" ..i .."Motor"
	end

	for i = 1, 4 do
		local upperLeg = Instance.new("Part", model)
		upperLeg.Size = Vector3.new(4, 1, 1)
		upperLeg.Name = "UpperLeg" ..(i + 4)

		local lowerLeg = Instance.new("Part", model)
		lowerLeg.Size = Vector3.new(3, 1, 1)
		lowerLeg.Name = "LowerLeg" ..(i + 4)

		local tip = Instance.new("Part", model)
		tip.Size = Vector3.new(1, 1, 1)
		tip.Name = "Tip" ..(i + 4)

		local angle = (-3.14159 / 4) + (i - 1) * (3.14159 / 6)
		local rotation = CFrame.fromEulerAnglesXYZ(0, angle, 0)

		upperLeg.CFrame = rotation + rotation * Vector3.new(-3.5, 0, 0)
		lowerLeg.CFrame = rotation + rotation *  Vector3.new(-7, 0, 0)
		tip.CFrame = rotation + rotation *  Vector3.new(-9, 0, 0)

		local bodyLegAttachment = Instance.new("Attachment", body)
		local legBodyAttachment = Instance.new("Attachment", upperLeg)
		bodyLegAttachment.Name = upperLeg.Name .."Attachment"
		legBodyAttachment.Name = upperLeg.Name .."Attachment"
		bodyLegAttachment.WorldOrientation = Vector3.new(0, angle * 180 / 3.14159, 0)
		bodyLegAttachment.WorldPosition = rotation * Vector3.new(-1.5, 0.5, 0)
		legBodyAttachment.WorldPosition = rotation * Vector3.new(-1.5, 0.5, 0)

		local upperLowerAttachment = Instance.new("Attachment", upperLeg)
		local lowerUpperAttachment = Instance.new("Attachment", lowerLeg)
		upperLowerAttachment.Name = lowerLeg.Name .."Attachment"
		lowerUpperAttachment.Name = lowerLeg.Name .."Attachment"
		upperLowerAttachment.WorldPosition = rotation * Vector3.new(-5.5, 0.5, 0)
		lowerUpperAttachment.WorldPosition = rotation * Vector3.new(-5.5, 0.5, 0)
		upperLowerAttachment.Axis = Vector3.new(0, 0, 1)
		lowerUpperAttachment.Axis = Vector3.new(0, 0, 1)

		local lowerTipAttachment = Instance.new("Attachment", lowerLeg)
		local tipLowerAttachment = Instance.new("Attachment", tip)
		lowerTipAttachment.Name = tip.Name .."Attachment"
		tipLowerAttachment.Name = tip.Name .."Attachment"
		lowerTipAttachment.WorldPosition = rotation * Vector3.new(-8.5, 0.5, 0)
		tipLowerAttachment.WorldPosition = rotation * Vector3.new(-8.5, 0.5, 0)
		lowerTipAttachment.Axis = Vector3.new(0, 0, 1)
		tipLowerAttachment.Axis = Vector3.new(0, 0, 1)

		local upperLegConstraint = Instance.new("BallSocketConstraint", model)
		upperLegConstraint.Attachment0 = bodyLegAttachment
		upperLegConstraint.Attachment1 = legBodyAttachment
		upperLegConstraint.LimitsEnabled = true
		upperLegConstraint.UpperAngle = 135
		upperLegConstraint.TwistLimitsEnabled = true
		upperLegConstraint.TwistLowerAngle = -3
		upperLegConstraint.TwistUpperAngle = 3
		upperLegConstraint.Enabled = false
		upperLegConstraint.Name = "UpperLeg" ..(i + 4) .."Constraint"

		local lowerLegConstraint = Instance.new("HingeConstraint", model)
		lowerLegConstraint.Attachment0 = upperLowerAttachment
		lowerLegConstraint.Attachment1 = lowerUpperAttachment
		lowerLegConstraint.LimitsEnabled = true
		lowerLegConstraint.LowerAngle = 10
		lowerLegConstraint.UpperAngle = 135
		lowerLegConstraint.Enabled = false
		lowerLegConstraint.Name = "LowerLeg" ..(i + 4) .."Constraint"

		local tipConstraint = Instance.new("HingeConstraint", model)
		tipConstraint.Attachment0 = lowerTipAttachment
		tipConstraint.Attachment1 = tipLowerAttachment
		tipConstraint.LimitsEnabled = true
		tipConstraint.LowerAngle = 10
		tipConstraint.UpperAngle = 135
		tipConstraint.Enabled = false
		tipConstraint.Name = "Tip" ..(i + 4) .."Constraint"

		local upperLegMotor = Instance.new("Motor6D")
		upperLegMotor.Part0 = body
		upperLegMotor.Part1 = upperLeg
		upperLegMotor.C0 = CFrame.fromMatrix(
			bodyLegAttachment.Position,
			legBodyAttachment.WorldAxis,
			legBodyAttachment.WorldSecondaryAxis)
		upperLegMotor.C1 = upperLeg.CFrame:inverse() * body.CFrame * upperLegMotor.C0
		upperLegMotor.Parent = upperLeg
		upperLegMotor.Name = "UpperLeg" ..(i + 4) .."Motor"

		local lowerLegMotor = Instance.new("Motor6D")
		lowerLegMotor.Part0 = upperLeg
		lowerLegMotor.Part1 = lowerLeg
		lowerLegMotor.C0 = CFrame.fromMatrix(
			upperLowerAttachment.Position,
			upperLowerAttachment.Axis,
			upperLowerAttachment.SecondaryAxis)
		lowerLegMotor.C1 = lowerLeg.CFrame:inverse() * upperLeg.CFrame * lowerLegMotor.C0
		lowerLegMotor.Parent = lowerLeg
		lowerLegMotor.Name = "LowerLeg" ..(i + 4) .."Motor"

		local tipMotor = Instance.new("Motor6D")
		tipMotor.Part0 = lowerLeg
		tipMotor.Part1 = tip
		tipMotor.C0 = CFrame.fromMatrix(
			lowerTipAttachment.Position,
			lowerTipAttachment.Axis,
			lowerTipAttachment.SecondaryAxis)
		tipMotor.C1 = tip.CFrame:inverse() * lowerLeg.CFrame * tipMotor.C0
		tipMotor.Parent = tip
		tipMotor.Name = "Tip" ..(i + 4) .."Motor"
	end

	return model
end