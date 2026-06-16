--[[
	CageModifiedAreaValid checks that the modified area of the outer cage is within the expected
	region according to the asset type being validated (e.g., a left shoe should modify left
	leg/foot UVs, not right side UVs).

	This check only applies to shoe-type layered clothing (LeftShoeAccessory, RightShoeAccessory).
	For other LC asset types, the check early-returns (no body area defined).

	Migrated from: src/validation/ValidateModifiedCageArea.lua
	Called via: validateLCCageQuality -> ValidateModifiedCageArea.validate
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local WrapTargetCageUVReferenceValues = require(root.WrapTargetCageUVReferenceValues)
local CollisionTestUtil = require(root.util.CollisionTestUtil)
local StringUtil = require(root.util.StringUtil)

local getFFlagUGCValidateMigrateCageUV = require(root.flags.getFFlagUGCValidateMigrateCageUV)

local FIntUGCValidateExcludedUVModifyRequirements = game:DefineFastInt("UGCValidateExcludedUVModifyRequirements", 14)
local FIntUGCValidatePartUVModifyRequirements = game:DefineFastInt("UGCValidatePartUVModifyRequirements", 45)
local FIntUGCValidateRenderMeshInsideModifiedArea = game:DefineFastInt("UGCValidateRenderMeshInsideModifiedArea", 70)
local FStringUGCValidateModifiedAreaPaddingModifier =
	game:DefineFastString("UGCValidateModifiedAreaPaddingModifier", "1.1")

local modifiedAreaPadding = tonumber(FStringUGCValidateModifiedAreaPaddingModifier)

local CageModifiedAreaValid = {}

type BodyArea = {
	allowedParts: { [string]: boolean? },
	mainParts: { [string]: boolean? },
	uVsDisallowedForAssetType: { Vector2 }?,
	uVsForAssetType: { Vector2 }?,
	mainUVsForAssetType: { Vector2 }?,
}

local AllBodyAreas: { [Enum.AssetType]: BodyArea } = {
	[Enum.AssetType.LeftShoeAccessory] = {
		allowedParts = {
			LeftFoot = true,
			LeftLowerLeg = true,
			LeftUpperLeg = true,
		},
		mainParts = {
			LeftFoot = true,
		},
	},

	[Enum.AssetType.RightShoeAccessory] = {
		allowedParts = {
			RightFoot = true,
			RightLowerLeg = true,
			RightUpperLeg = true,
		},
		mainParts = {
			RightFoot = true,
		},
	},
}

CageModifiedAreaValid.categories = {
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
}

CageModifiedAreaValid.requiredData = {
	ValidationEnums.SharedDataMember.innerCagesData,
	ValidationEnums.SharedDataMember.outerCagesData,
	ValidationEnums.SharedDataMember.renderMeshesData,
}

CageModifiedAreaValid.conditionalData = {}

CageModifiedAreaValid.fflag = getFFlagUGCValidateMigrateCageUV

CageModifiedAreaValid.expectedFailures = {}

local function gatherUVs(namedBodyParts: { [string]: boolean? }): { Vector2 }
	local allUVs: { Vector2 } = {}
	for bodyPartName in namedBodyParts do
		local uVsForBodyPart =
			assert(WrapTargetCageUVReferenceValues[bodyPartName], "Body area not found in UV reference values")
		for _, uv in uVsForBodyPart do
			table.insert(allUVs, uv)
		end
	end
	return allUVs
end

local function lazyGetUVsExcludedForAssetType(bodyArea: BodyArea): { Vector2 }
	if not bodyArea.uVsDisallowedForAssetType then
		local namedBodyParts: { [string]: boolean } = {}
		for bodyPartName in WrapTargetCageUVReferenceValues do
			if bodyArea.allowedParts[bodyPartName :: string] then
				continue
			end
			namedBodyParts[bodyPartName :: string] = true
		end
		bodyArea.uVsDisallowedForAssetType = gatherUVs(namedBodyParts)
	end
	return bodyArea.uVsDisallowedForAssetType :: { Vector2 }
end

local function lazyGetUVsForAssetType(bodyArea: BodyArea): { Vector2 }
	if not bodyArea.uVsForAssetType then
		bodyArea.uVsForAssetType = gatherUVs(bodyArea.allowedParts)
	end
	return bodyArea.uVsForAssetType :: { Vector2 }
end

local function lazyGetMainUVsForAssetType(bodyArea: BodyArea): { Vector2 }
	if not bodyArea.mainUVsForAssetType then
		bodyArea.mainUVsForAssetType = gatherUVs(bodyArea.mainParts)
	end
	return bodyArea.mainUVsForAssetType :: { Vector2 }
end

CageModifiedAreaValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local assetType = data.uploadEnum.assetType

	local bodyArea = AllBodyAreas[assetType]
	if not bodyArea then
		-- This check only applies to shoes; early-return for other LC types
		return
	end

	-- We need the Handle's inner and outer cage data
	local innerCageData = data.innerCagesData["Handle"]
	local outerCageData = data.outerCagesData["Handle"]
	if not innerCageData or not outerCageData then
		return
	end

	local innerCFrame = innerCageData.origin
	local outerCFrame = outerCageData.origin

	-- Sub-check 1: validateExcludedModifiedUVs
	do
		local allExcludedUVs = lazyGetUVsExcludedForAssetType(bodyArea)
		if #allExcludedUVs > 0 then
			local numUniqueUVsInSet, totalModifiedUVs, numModifiedUVsInSet =
				UGCValidationService:CalculateEditableMeshNumModifiedCageUVsInSet(
					allExcludedUVs,
					innerCageData.editable,
					innerCFrame,
					outerCageData.editable,
					outerCFrame
				)

			assert(
				numUniqueUVsInSet == #allExcludedUVs,
				"all the UVs in allExcludedUVsForBodyArea sent in to CalculateEditableMeshNumModifiedCageUVsInSet should be unique"
			)
			if totalModifiedUVs ~= 0 then
				local modifiedPercent = (numModifiedUVsInSet / totalModifiedUVs) * 100
				if modifiedPercent > FIntUGCValidateExcludedUVModifyRequirements then
					reporter:fail(ErrorSourceStrings.Keys.CageUV_TooManyExcludedModified, {
						modifiedPercent = tostring(math.floor(modifiedPercent)),
						assetTypeName = assetType.Name,
						maxPercent = tostring(FIntUGCValidateExcludedUVModifyRequirements),
						allowedArea = StringUtil.keysToString(bodyArea.allowedParts, "/"),
					})
				end
			end
		end
	end

	-- Sub-check 2: validateMainModifiedUVs
	do
		local allMainUVs = lazyGetMainUVsForAssetType(bodyArea)
		if #allMainUVs > 0 then
			local numUniqueUVsInSet, _, numModifiedUVsInSet =
				UGCValidationService:CalculateEditableMeshNumModifiedCageUVsInSet(
					allMainUVs,
					innerCageData.editable,
					innerCFrame,
					outerCageData.editable,
					outerCFrame
				)

			assert(
				numUniqueUVsInSet == #allMainUVs,
				"all the UVs in allUVsForBodyArea sent in to CalculateEditableMeshNumModifiedCageUVsInSet should be unique"
			)
			local modifiedPercent = (numModifiedUVsInSet / numUniqueUVsInSet) * 100
			if modifiedPercent < FIntUGCValidatePartUVModifyRequirements then
				reporter:fail(ErrorSourceStrings.Keys.CageUV_TooFewMainModified, {
					assetTypeName = assetType.Name,
					requiredPercent = tostring(FIntUGCValidatePartUVModifyRequirements),
					mainArea = StringUtil.keysToString(bodyArea.mainParts, "/"),
					currentPercent = tostring(math.floor(modifiedPercent)),
				})
			end
		end
	end

	-- Sub-check 3: validateRenderMeshInsideModifiedOuterCageArea
	do
		local allUVsForBodyArea = lazyGetUVsForAssetType(bodyArea)
		if #allUVsForBodyArea > 0 then
			local renderMeshData = data.renderMeshesData["Handle"]
			if not renderMeshData then
				return
			end

			local modifiedAreaPosition, modifiedAreaSize =
				UGCValidationService:CalculateEditableMeshModifiedCageBoundingBox(
					allUVsForBodyArea,
					innerCageData.editable,
					innerCFrame,
					outerCageData.editable,
					outerCFrame
				)

			local renderMeshVerts = UGCValidationService:GetEditableMeshVerts(renderMeshData.editable)
			if not renderMeshVerts or #renderMeshVerts == 0 then
				reporter:fail(ErrorSourceStrings.Keys.CageUV_RenderMeshBoundsCheckFailed)
				return
			end

			modifiedAreaSize = modifiedAreaSize * modifiedAreaPadding

			local numVertsInModifiedArea = 0
			for _, vertPos in renderMeshVerts do
				if CollisionTestUtil.pointInAxisAlignedBounds(vertPos, modifiedAreaPosition, modifiedAreaSize) then
					numVertsInModifiedArea = numVertsInModifiedArea + 1
				end
			end

			local inAreaPercent = (numVertsInModifiedArea / #renderMeshVerts) * 100
			if inAreaPercent < FIntUGCValidateRenderMeshInsideModifiedArea then
				local allowedPartsAsString = StringUtil.keysToString(bodyArea.allowedParts, "/")
				reporter:fail(ErrorSourceStrings.Keys.CageUV_RenderMeshOutsideModifiedArea, {
					currentPercent = tostring(math.floor(inAreaPercent)),
					allowedArea = allowedPartsAsString,
					requiredPercent = tostring(FIntUGCValidateRenderMeshInsideModifiedArea),
				})
			end
		end
	end
end

return CageModifiedAreaValid :: Types.ValidationModule
