local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)
local getFFlagUGCValidateCurveAnimAttributes = require(root.flags.getFFlagUGCValidateCurveAnimAttributes)
local getFFlagUGCValidateMakeupCategoryParity = require(root.flags.getFFlagUGCValidateMakeupCategoryParity)
local getFFlagUGCValidateR15FixedAttributes = require(root.flags.getFFlagUGCValidateR15FixedAttributes)

game:DefineFastFlag("UGCValidateAllowEmoteAttributes", false)

local AttributesAllowed = {}

type AllowedAttributes = { [string]: boolean }

local EmoteCurveAllowedAttributes: AllowedAttributes = {
	[Constants.EmoteIsUGCAttributeName] = true,
	[Constants.EmoteMaxPartTranslationAttributeName] = true,
}

AttributesAllowed.categories = if getFFlagUGCValidateMakeupCategoryParity()
	then Constants.AllAssetUploadCategories
	else Constants.AllAssetUploadCategoriesIncludingMakeup
AttributesAllowed.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.consumerConfig,
	ValidationEnums.SharedDataMember.hsrAssets,
}
-- CurveAnimations are fetched out-of-tree via Animation.AnimationId, so they are
-- not reachable from rootInstance. Pull them in so their attributes get the same
-- allowlist sweep. For non-animation categories FetchCurveAnimations returns an
-- empty list, so requiring it here is a no-op for them.
if getFFlagUGCValidateCurveAnimAttributes() then
	table.insert(AttributesAllowed.requiredData, ValidationEnums.SharedDataMember.curveAnimations)
end
AttributesAllowed.fflag = getFFlagUGCValidateMigrateSchemaProperties
AttributesAllowed.expectedFailures = {}

local function hasOnlyAllowedAttribute(
	attributes: { [string]: any },
	allowEditableInstances: boolean,
	allowedAttributes: AllowedAttributes?
): boolean
	for attribute, value in attributes do
		if allowEditableInstances and attribute == Constants.AlternateMeshIdAttributeName then
			continue
		end

		if allowedAttributes and allowedAttributes[attribute] then
			continue
		end

		if attribute ~= Constants.GUIDAttributeName then
			return false
		end

		if typeof(value) ~= "string" then
			return false
		end

		if string.len(value) > Constants.GUIDAttributeMaxLength then
			return false
		end
	end
	return true
end

local function reportInstanceWithDisallowedAttributes(reporter: Types.ValidationReporter, instance: Instance)
	-- One fail per offending instance so Studio can deep-link to each.
	reporter:fail(ErrorSourceStrings.Keys.NoAttributes, {
		RootInstanceName = instance.Name,
		InstanceNameList = instance:GetFullName(),
	})
end

local function walkInstanceTree(
	reporter: Types.ValidationReporter,
	rootInstance: Instance,
	allowEditableInstances: boolean,
	allowedRootAttributes: AllowedAttributes?
)
	if not hasOnlyAllowedAttribute(rootInstance:GetAttributes(), allowEditableInstances, allowedRootAttributes) then
		reportInstanceWithDisallowedAttributes(reporter, rootInstance)
	end

	for _, descendant in rootInstance:GetDescendants() do
		if allowEditableInstances and descendant:GetAttribute(Constants.AlternateMeshIdAttributeName) then
			continue
		end
		if next(descendant:GetAttributes()) ~= nil then
			reportInstanceWithDisallowedAttributes(reporter, descendant)
		end
	end
end

AttributesAllowed.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	-- IEC allows AlternateMeshId for editable-instance wiring.
	local allowEditableInstances = data.consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.IEC

	walkInstanceTree(reporter, data.rootInstance, allowEditableInstances)

	-- R15Fixed is built from a separate folder (unreachable from rootInstance) and only Backend deserializes it; sweep it too.
	if
		getFFlagUGCValidateR15FixedAttributes()
		and data.consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.Backend
		and data.r15LegacyDuplicateRoot ~= nil
	then
		walkInstanceTree(reporter, data.r15LegacyDuplicateRoot, allowEditableInstances)
	end

	-- HSR roots are loaded out-of-tree by FetchHSRAssets; sweep them too.
	for _, hsrCandidates in data.hsrAssets do
		for _, hsrAsset in hsrCandidates do
			walkInstanceTree(reporter, hsrAsset, allowEditableInstances)
		end
	end

	-- CurveAnimation trees are downloaded out-of-tree (see requiredData note).
	-- requiredData guarantees data.curveAnimations is present whenever this runs.
	if getFFlagUGCValidateCurveAnimAttributes() then
		local allowedAttributes = if game:GetFastFlag("UGCValidateAllowEmoteAttributes")
				and data.uploadCategory == ValidationEnums.UploadCategory.EMOTE_ANIMATION
			then EmoteCurveAllowedAttributes
			else nil
		for _, curveAnim in data.curveAnimations do
			walkInstanceTree(reporter, curveAnim, allowEditableInstances, allowedAttributes)
		end
	end
end

return AttributesAllowed :: Types.ValidationModule
