--[[
	Fails an upload that uses a mesh or image version that is still a draft (two-stage publishing): the pinned version,
	or else the latest. RCC can't download drafts, so ValidationManager runs this right after the schema check, before
	anything downloads.
]]

local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local ParseContentIds = require(root.util.ParseContentIds)
local Types = require(root.util.Types)
local UnpublishedDependencies = require(root.util.UnpublishedDependencies)
local ValidationEnums = require(root.validationSystem.ValidationEnums)

local getFFlagUGCValidateDescendantIdsPublished = require(root.flags.getFFlagUGCValidateDescendantIdsPublished)
local getFFlagUGCValidateDescendantIdsPublishedShadow =
	require(root.flags.getFFlagUGCValidateDescendantIdsPublishedShadow)

-- Content Platform hasn't said these can be drafts.
local SKIPPED_FIELDS: { [string]: boolean } = { AnimationId = true, TexturePack = true, HSRAssetId = true }
-- Accept both proto-enum and legacy camel-case labels.
local MODERATION_REJECTED: { [string]: boolean } = { MODERATION_STATE_REJECTED = true, Rejected = true }

local DescendantIdsPublished = {}

DescendantIdsPublished.categories = Constants.AllUploadCategories
DescendantIdsPublished.requiredData = {
	ValidationEnums.SharedDataMember.consumerConfig,
	ValidationEnums.SharedDataMember.contentIds,
}
DescendantIdsPublished.fflag = getFFlagUGCValidateDescendantIdsPublished
DescendantIdsPublished.shadowFlag = getFFlagUGCValidateDescendantIdsPublishedShadow

DescendantIdsPublished.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	-- Publish state is only readable where validation runs on RCC: the Backend jobs, and Studio's uploads through VaaS.
	if data.consumerConfig.validationEnv ~= ValidationEnums.ValidationEnv.Backend then
		return
	end

	-- A pinned reference is checked at its version, and an unpinned one at the latest version, which is what loads.
	for _, reference in ParseContentIds.getDistinctReferences(data.contentIds) do
		local entry = reference.entry
		if SKIPPED_FIELDS[entry.fieldName] then
			continue
		end

		local success, version = pcall(UnpublishedDependencies.getVersion, reference.assetId, entry.version)
		if not success then
			reporter:fetchError(`Failed to read asset {reference.key}: {version}`)
		end

		-- The version resource omits `published` when it's false.
		if not version.published then
			local fullName = entry.instance:GetFullName()
			local moderationState = if version.moderationResult then version.moderationResult.moderationState else nil
			if moderationState ~= nil and MODERATION_REJECTED[moderationState] then
				-- A rejected draft can't be published, so it gets DescendantIdsAllowed's moderation message.
				reporter:fail(ErrorSourceStrings.Keys.DescendantIdNotApproved, {
					ModerationMessages = `{fullName}.{entry.fieldName} ( {reference.key} )`,
				}, entry.instance)
			else
				reporter:fail(ErrorSourceStrings.Keys.DescendantIdNotPublished, {
					AssetId = reference.key,
					InstanceFullName = fullName,
					FieldName = entry.fieldName,
				}, entry.instance)
			end
		end
	end
end

return DescendantIdsPublished :: Types.ValidationModule
