--[[
	validateAccurateBoundingBoxFlags.lua contains the flags used by the validateAccurateBoundingBox test
]]

--[[This is the amount of projected surface area we are trying to contain inside of the
bounding box we're trying to minimize. The cost function incurs a penalty the greater the
difference between the subtended percentage in the box and our target]]
game:DefineFastString("UGCValidationAccurateBoundingBoxTargetPercentage", "98.0")

--[[This defines the relationship between the cost of the target percentage and the cost of
the size of our bounding box. Higher values will prioritize the target percentage more, lower values
will prioritize shrinking the bounding box more. As an example, "0.05" means moving 1% closer to
the target percentage is the same improvement as shrinking the bounding box by 5% of the total object bounds]]
game:DefineFastString("UGCValidationAccurateBoundingBoxPercentageWeight", "0.05")

-- The number of nelder-mead iterations before we cut the convergence off and take the best candidate
game:DefineFastInt("UGCValidationAccurateBoundingBoxMaxIterations", 500)

--[[The max distance between any two vectors in the nelder mead simplex, under which we consider
the simplex converged. A higher value may converge faster, but yeild worse results]]
game:DefineFastString("UGCValidationAccurateBoundingBoxConvergedLength", "0.001")

--[[After determining the valid bounds we converged on, we fail if the size of the original bounding
box is bigger in any axis than the valid bounds plus the threshold defined in terms of the valid bounds.
e.g. for "0.30" we fail if originalSize.X > validBoundsSize.X * 1.30

Note that this is different from saying 30% of the bounds are allowed to be empty. We can always solve for that
value given a our current threshold because they are related by the function 1 - (1 / (1 + x)) where x is our threshold.
So if we want to allow 25% of the total bounds to be "empty" and nothing more, the inflation threshold would be set
to ~0.334]]
game:DefineFastString("UGCValidateAccurateBoundingBoxInflationThreshold", "0.334")

game:DefineFastFlag("UGCValidateAccurateBoundingBoxRasterMethod", false)

local validateAccurateBoundingBoxFlags = {}

function validateAccurateBoundingBoxFlags.targetPercentage(): number
	return tonumber(game:GetFastString("UGCValidationAccurateBoundingBoxTargetPercentage")) :: number
end

function validateAccurateBoundingBoxFlags.percentageWeight(): number
	return tonumber(game:GetFastString("UGCValidationAccurateBoundingBoxPercentageWeight")) :: number
end

function validateAccurateBoundingBoxFlags.maxIterations(): number
	return game:GetFastInt("UGCValidationAccurateBoundingBoxMaxIterations")
end

function validateAccurateBoundingBoxFlags.convergedLength(): number
	return tonumber(game:GetFastString("UGCValidationAccurateBoundingBoxConvergedLength")) :: number
end

function validateAccurateBoundingBoxFlags.inflationThreshold(): number
	return tonumber(game:GetFastString("UGCValidateAccurateBoundingBoxInflationThreshold")) :: number
end

game:DefineFastString("UGCValidationInflationThresholdDynamicHeadX", "0.334")
game:DefineFastString("UGCValidationInflationThresholdDynamicHeadY", "0.334")
game:DefineFastString("UGCValidationInflationThresholdDynamicHeadZ", "0.334")

game:DefineFastString("UGCValidationInflationThresholdTorsoX", "0.334")
game:DefineFastString("UGCValidationInflationThresholdTorsoY", "0.334")
game:DefineFastString("UGCValidationInflationThresholdTorsoZ", "0.334")

game:DefineFastString("UGCValidationInflationThresholdArmsX", "1.0")
game:DefineFastString("UGCValidationInflationThresholdArmsY", "0.334")
game:DefineFastString("UGCValidationInflationThresholdArmsZ", "1.0")

game:DefineFastString("UGCValidationInflationThresholdLegsX", "0.7")
game:DefineFastString("UGCValidationInflationThresholdLegsY", "0.334")
game:DefineFastString("UGCValidationInflationThresholdLegsZ", "0.7")

local DynamicHeadAxisThresholds = {
	X = tonumber(game:GetFastString("UGCValidationInflationThresholdDynamicHeadX")) :: number,
	Y = tonumber(game:GetFastString("UGCValidationInflationThresholdDynamicHeadY")) :: number,
	Z = tonumber(game:GetFastString("UGCValidationInflationThresholdDynamicHeadZ")) :: number,
}

local TorsoAxisThresholds = {
	X = tonumber(game:GetFastString("UGCValidationInflationThresholdTorsoX")) :: number,
	Y = tonumber(game:GetFastString("UGCValidationInflationThresholdTorsoY")) :: number,
	Z = tonumber(game:GetFastString("UGCValidationInflationThresholdTorsoZ")) :: number,
}

local ArmsAxisThresholds = {
	X = tonumber(game:GetFastString("UGCValidationInflationThresholdArmsX")) :: number,
	Y = tonumber(game:GetFastString("UGCValidationInflationThresholdArmsY")) :: number,
	Z = tonumber(game:GetFastString("UGCValidationInflationThresholdArmsZ")) :: number,
}

local LegsAxisThresholds = {
	X = tonumber(game:GetFastString("UGCValidationInflationThresholdLegsX")) :: number,
	Y = tonumber(game:GetFastString("UGCValidationInflationThresholdLegsY")) :: number,
	Z = tonumber(game:GetFastString("UGCValidationInflationThresholdLegsZ")) :: number,
}

validateAccurateBoundingBoxFlags.AssetTypeToAxisThresholds = {
	[Enum.AssetType.DynamicHead] = DynamicHeadAxisThresholds,
	[Enum.AssetType.Torso] = TorsoAxisThresholds,
	[Enum.AssetType.LeftArm] = ArmsAxisThresholds,
	[Enum.AssetType.RightArm] = ArmsAxisThresholds,
	[Enum.AssetType.LeftLeg] = LegsAxisThresholds,
	[Enum.AssetType.RightLeg] = LegsAxisThresholds,
}

return validateAccurateBoundingBoxFlags
