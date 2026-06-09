--!strict
--[[
	declare and retrieve the following fast flags:

	FStringUGCValidateMaxJointRotationHead
	FStringUGCValidateMaxJointRotationUpperTorso
	FStringUGCValidateMaxJointRotationLeftUpperLeg
	FStringUGCValidateMaxJointRotationLeftLowerLeg
	FStringUGCValidateMaxJointRotationLeftHand
	FStringUGCValidateMaxJointRotationRightUpperArm
	FStringUGCValidateMaxJointRotationRightLowerArm
	FStringUGCValidateMaxJointRotationRightHand
	FStringUGCValidateMaxJointRotationLeftUpperArm
	FStringUGCValidateMaxJointRotationLeftLowerArm
	FStringUGCValidateMaxJointRotationLeftFoot
	FStringUGCValidateMaxJointRotationRightUpperLeg
	FStringUGCValidateMaxJointRotationRightLowerLeg
	FStringUGCValidateMaxJointRotationRightFoot
]]

local GetFStringUGCValidateMaxJointRotation = require(script.Parent.GetFStringUGCValidateMaxJointRotation)

local function getFallbackValue(): string
	return GetFStringUGCValidateMaxJointRotation.asString()
end

game:DefineFastString("UGCValidateMaxJointRotationHead", "")
game:DefineFastString("UGCValidateMaxJointRotationUpperTorso", "")
game:DefineFastString("UGCValidateMaxJointRotationLeftUpperLeg", "")
game:DefineFastString("UGCValidateMaxJointRotationLeftLowerLeg", "")
game:DefineFastString("UGCValidateMaxJointRotationLeftHand", "")
game:DefineFastString("UGCValidateMaxJointRotationRightUpperArm", "")
game:DefineFastString("UGCValidateMaxJointRotationRightLowerArm", "")
game:DefineFastString("UGCValidateMaxJointRotationRightHand", "")
game:DefineFastString("UGCValidateMaxJointRotationLeftUpperArm", "")
game:DefineFastString("UGCValidateMaxJointRotationLeftLowerArm", "")
game:DefineFastString("UGCValidateMaxJointRotationLeftFoot", "")
game:DefineFastString("UGCValidateMaxJointRotationRightUpperLeg", "")
game:DefineFastString("UGCValidateMaxJointRotationRightLowerLeg", "")
game:DefineFastString("UGCValidateMaxJointRotationRightFoot", "")

local GetFStringUGCValidateMaxJointRotationPerPart = {}

local FStringFunctionTable = {
	Head = function()
		return game:GetFastString("UGCValidateMaxJointRotationHead")
	end,
	UpperTorso = function()
		return game:GetFastString("UGCValidateMaxJointRotationUpperTorso")
	end,
	LeftUpperLeg = function()
		return game:GetFastString("UGCValidateMaxJointRotationLeftUpperLeg")
	end,
	LeftLowerLeg = function()
		return game:GetFastString("UGCValidateMaxJointRotationLeftLowerLeg")
	end,
	LeftHand = function()
		return game:GetFastString("UGCValidateMaxJointRotationLeftHand")
	end,
	RightUpperArm = function()
		return game:GetFastString("UGCValidateMaxJointRotationRightUpperArm")
	end,
	RightLowerArm = function()
		return game:GetFastString("UGCValidateMaxJointRotationRightLowerArm")
	end,
	RightHand = function()
		return game:GetFastString("UGCValidateMaxJointRotationRightHand")
	end,
	LeftUpperArm = function()
		return game:GetFastString("UGCValidateMaxJointRotationLeftUpperArm")
	end,
	LeftLowerArm = function()
		return game:GetFastString("UGCValidateMaxJointRotationLeftLowerArm")
	end,
	LeftFoot = function()
		return game:GetFastString("UGCValidateMaxJointRotationLeftFoot")
	end,
	RightUpperLeg = function()
		return game:GetFastString("UGCValidateMaxJointRotationRightUpperLeg")
	end,
	RightLowerLeg = function()
		return game:GetFastString("UGCValidateMaxJointRotationRightLowerLeg")
	end,
	RightFoot = function()
		return game:GetFastString("UGCValidateMaxJointRotationRightFoot")
	end,
}

function GetFStringUGCValidateMaxJointRotationPerPart.asString(partName: string): string
	local func = FStringFunctionTable[partName]
	if not func then
		return getFallbackValue()
	end
	local value = func()
	if #value == 0 then
		return getFallbackValue()
	end
	return value
end

function GetFStringUGCValidateMaxJointRotationPerPart.asNumber(partName: string): number
	return tonumber(GetFStringUGCValidateMaxJointRotationPerPart.asString(partName)) :: number
end

return GetFStringUGCValidateMaxJointRotationPerPart
