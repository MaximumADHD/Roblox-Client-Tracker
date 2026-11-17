--[[
	NoMeshBelowFeet fails a full body when a head, torso, or arm mesh reaches below the lowest point
	of the legs. The Humanoid stands on its feet, so that mesh ends up under the floor in experiences
	while still counting toward the full body size that AssetBoundsValid checks.
]]

local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local BoundsCalculator = require(root.util.BoundsCalculator)

local getFFlagUGCValidateNoMeshBelowFeet = require(root.flags.getFFlagUGCValidateNoMeshBelowFeet)

-- studs a head, torso, or arm mesh may reach below the feet
game:DefineFastString("UGCValidateMaxMeshBelowFeet", "0.1")

local NoMeshBelowFeet = {}

NoMeshBelowFeet.categories = {
	ValidationEnums.UploadCategory.FULL_BODY,
}
NoMeshBelowFeet.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.renderMeshesData,
}
NoMeshBelowFeet.fflag = getFFlagUGCValidateNoMeshBelowFeet
NoMeshBelowFeet.expectedFailures = {}

local LEG_PARTS = {
	Constants.NAMED_R15_BODY_PARTS.LeftUpperLeg,
	Constants.NAMED_R15_BODY_PARTS.LeftLowerLeg,
	Constants.NAMED_R15_BODY_PARTS.LeftFoot,
	Constants.NAMED_R15_BODY_PARTS.RightUpperLeg,
	Constants.NAMED_R15_BODY_PARTS.RightLowerLeg,
	Constants.NAMED_R15_BODY_PARTS.RightFoot,
}

local NON_LEG_PARTS = {
	Constants.NAMED_R15_BODY_PARTS.Head,
	Constants.NAMED_R15_BODY_PARTS.UpperTorso,
	Constants.NAMED_R15_BODY_PARTS.LowerTorso,
	Constants.NAMED_R15_BODY_PARTS.LeftUpperArm,
	Constants.NAMED_R15_BODY_PARTS.LeftLowerArm,
	Constants.NAMED_R15_BODY_PARTS.LeftHand,
	Constants.NAMED_R15_BODY_PARTS.RightUpperArm,
	Constants.NAMED_R15_BODY_PARTS.RightLowerArm,
	Constants.NAMED_R15_BODY_PARTS.RightHand,
}

local function getMeshBottom(allPartsMetrics: { [string]: any }, partName: string): number?
	local partMetrics = allPartsMetrics[partName]
	local minMeshCorner = partMetrics and (partMetrics.boundsData :: Types.BoundsData).minMeshCorner
	return if minMeshCorner then minMeshCorner.Y else nil
end

NoMeshBelowFeet.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local allBodyParts: Types.AllBodyParts = {}
	for _, child in data.rootInstance:GetChildren() do
		if child:IsA("MeshPart") then
			allBodyParts[child.Name] = child
		end
	end

	-- same pose as the full body size check, so mesh can't pass here and still count toward the size there
	local success, _, allPartsMetricsOpt =
		BoundsCalculator.calculateIndividualFullBodyPartsDataFromData(allBodyParts, data.renderMeshesData)
	if not success then
		reporter:fetchError("Failed to calculate full body part bounds")
		return
	end
	local allPartsMetrics = allPartsMetricsOpt :: { [string]: any }

	local feetBottom: number? = nil
	for _, partName in LEG_PARTS do
		local partBottom = getMeshBottom(allPartsMetrics, partName)
		if partBottom and (feetBottom == nil or partBottom < feetBottom) then
			feetBottom = partBottom
		end
	end
	if feetBottom == nil then
		return
	end

	local maxBelowFeet = tonumber(game:GetFastString("UGCValidateMaxMeshBelowFeet")) :: number
	for _, partName in NON_LEG_PARTS do
		local partBottom = getMeshBottom(allPartsMetrics, partName)
		if partBottom == nil then
			continue
		end

		local distanceBelowFeet = (feetBottom :: number) - partBottom
		if distanceBelowFeet > maxBelowFeet then
			reporter:fail(ErrorSourceStrings.Keys.NoMeshBelowFeet_PartBelowFeet, {
				partName = partName,
				distance = string.format("%.2f", distanceBelowFeet),
				maxDistance = string.format("%.2f", maxBelowFeet),
			}, allBodyParts[partName])
		end
	end
end

return NoMeshBelowFeet :: Types.ValidationModule
