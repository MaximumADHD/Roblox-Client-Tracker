local root = script.Parent.Parent
local Constants = require(root.Constants)

local R15plusUtils = {}
local jointNameWhitelist = nil

function R15plusUtils.getJointNameWhitelist()
	if jointNameWhitelist ~= nil then
		return jointNameWhitelist
	end

	jointNameWhitelist = {}
	for jointName, _ in Constants.R15_STANDARD_JOINT_NAMES do
		jointNameWhitelist[jointName] = true
	end

	for _, jointEnum in Instance.new("HumanoidRigDescription"):GetJointLabels() do
		jointNameWhitelist[jointEnum.Name] = true
	end

	for _, jointEnum in Instance.new("DigitsRigDescription"):GetJointLabels() do
		jointNameWhitelist[`LeftHand{jointEnum.Name}`] = true
		jointNameWhitelist[`RightHand{jointEnum.Name}`] = true
	end

	return jointNameWhitelist
end

return R15plusUtils
