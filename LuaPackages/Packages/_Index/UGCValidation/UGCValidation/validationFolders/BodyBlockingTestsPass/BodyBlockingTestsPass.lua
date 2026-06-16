--[[
	BodyBlockingTestsPass validates that no body part mesh has zero extent on any
	axis, which would crash downstream validation geometry (bounds, raster, etc.).
	Migrated from src/util/ValidateBodyBlockingTests.lua (validateMeshMin only —
	the attachment check lives in MoveableAttachmentsExist).
]]

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local floatEquals = require(root.util.floatEquals)

local getFFlagUGCValidateMigratePoseBlocking = require(root.flags.getFFlagUGCValidateMigratePoseBlocking)

local BodyBlockingTestsPass = {}

BodyBlockingTestsPass.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
	ValidationEnums.UploadCategory.FULL_BODY,
}

BodyBlockingTestsPass.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.renderMeshesData,
}

BodyBlockingTestsPass.fflag = getFFlagUGCValidateMigratePoseBlocking

BodyBlockingTestsPass.expectedFailures = {}

local function validateMeshMin(reporter: Types.ValidationReporter, meshSize: Vector3, meshName: string)
	local errorParts = {}

	for _, dimension in { "X", "Y", "Z" } do
		local sizeOnAxis = (meshSize :: any)[dimension]
		if floatEquals(sizeOnAxis, 0, 0.0001) then
			table.insert(errorParts, "Size on " .. dimension .. " axis is zero")
		end
	end

	if #errorParts > 0 then
		reporter:fail(ErrorSourceStrings.Keys.BodyBlocking_ZeroMeshSize, {
			meshName = meshName,
			details = table.concat(errorParts, ". "),
		})
	end
end

BodyBlockingTestsPass.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for meshPartName, meshData in data.renderMeshesData do
		validateMeshMin(reporter, meshData.originalSize, meshPartName)
	end
end

return BodyBlockingTestsPass :: Types.ValidationModule
