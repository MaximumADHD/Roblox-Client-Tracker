-- Shared attachment-rotation FInts; legacy and new validators read the same numbers.

game:DefineFastInt("UGCValidationAttRotRigAttachmentMaxThousandthsDegrees", 10)
game:DefineFastInt("UGCValidationAttRotLimitRootAttachment", 30)
game:DefineFastInt("UGCValidationAttRotLimitFaceFrontAttachment", 30)
game:DefineFastInt("UGCValidationAttRotLimitHatAttachment", 30)
game:DefineFastInt("UGCValidationAttRotLimitHairAttachment", 30)
game:DefineFastInt("UGCValidationAttRotLimitFaceCenterAttachment", 30)
game:DefineFastInt("UGCValidationAttRotLimitRightFootAttachment", 30)
game:DefineFastInt("UGCValidationAttRotLimitLeftFootAttachment", 30)
game:DefineFastInt("UGCValidationAttRotLimitBodyFrontAttachment", 30)
game:DefineFastInt("UGCValidationAttRotLimitBodyBackAttachment", 30)
game:DefineFastInt("UGCValidationAttRotLimitLeftCollarAttachment", 30)
game:DefineFastInt("UGCValidationAttRotLimitRightCollarAttachment", 30)
game:DefineFastInt("UGCValidationAttRotLimitNeckAttachment", 30)
game:DefineFastInt("UGCValidationAttRotLimitWaistCenterAttachment", 30)
game:DefineFastInt("UGCValidationAttRotLimitWaistFrontAttachment", 30)
game:DefineFastInt("UGCValidationAttRotLimitWaistBackAttachment", 30)
game:DefineFastInt("UGCValidationAttRotLimitLeftShoulderAttachment", 30)
game:DefineFastInt("UGCValidationAttRotLimitLeftGripAttachment", 30)
game:DefineFastInt("UGCValidationAttRotLimitRightShoulderAttachment", 30)
game:DefineFastInt("UGCValidationAttRotLimitRightGripAttachment", 30)

local AttachmentRotationFInts = {}

AttachmentRotationFInts.thresholdGetters = {
	RigAttachment = function()
		return game:GetFastInt("UGCValidationAttRotRigAttachmentMaxThousandthsDegrees") / 1000
	end,
	RootAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitRootAttachment")
	end,
	FaceFrontAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitFaceFrontAttachment")
	end,
	HatAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitHatAttachment")
	end,
	HairAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitHairAttachment")
	end,
	FaceCenterAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitFaceCenterAttachment")
	end,
	RightFootAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitRightFootAttachment")
	end,
	LeftFootAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitLeftFootAttachment")
	end,
	BodyFrontAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitBodyFrontAttachment")
	end,
	BodyBackAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitBodyBackAttachment")
	end,
	LeftCollarAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitLeftCollarAttachment")
	end,
	RightCollarAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitRightCollarAttachment")
	end,
	NeckAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitNeckAttachment")
	end,
	WaistCenterAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitWaistCenterAttachment")
	end,
	WaistFrontAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitWaistFrontAttachment")
	end,
	WaistBackAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitWaistBackAttachment")
	end,
	LeftShoulderAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitLeftShoulderAttachment")
	end,
	LeftGripAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitLeftGripAttachment")
	end,
	RightShoulderAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitRightShoulderAttachment")
	end,
	RightGripAttachment = function()
		return game:GetFastInt("UGCValidationAttRotLimitRightGripAttachment")
	end,
}

return AttachmentRotationFInts
