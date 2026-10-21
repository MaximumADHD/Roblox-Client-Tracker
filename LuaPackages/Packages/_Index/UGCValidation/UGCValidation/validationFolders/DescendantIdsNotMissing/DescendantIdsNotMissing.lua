local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local ParseContentIds = require(root.util.ParseContentIds)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)

local getFFlagUGCValidateCheckDescendantIdsLoadable = require(root.flags.getFFlagUGCValidateCheckDescendantIdsLoadable)
local getFFlagUGCValidateVersionedContentIds = require(root.flags.getFFlagUGCValidateVersionedContentIds)

local function hasEditableBacking(instance: Instance, fieldName: string): boolean
	local classMap = Constants.CONTENT_ID_EDITABLE_PROPERTY[instance.ClassName]
	local contentProperty = classMap and classMap[fieldName]
	if not contentProperty then
		return false
	end
	return (instance :: any)[contentProperty].SourceType == Enum.ContentSourceType.Object
end

local function canLoadAsset(uri: string): boolean
	local pcallSuccess, canLoadResult = pcall(function()
		return UGCValidationService:CanLoadAsset(uri)
	end)
	return pcallSuccess and canLoadResult
end

local function reportUnloadable(
	reporter: Types.ValidationReporter,
	isBackend: boolean,
	assetLabel: string,
	entry: Types.ContentIdEntry
)
	if isBackend then
		-- Backend re-raises so RCC reschedules; the outcome is inconclusive, not creator-facing.
		reporter:fetchError(
			string.format(
				"Failed to load asset referenced by %s.%s. Make sure the asset exists and try again.",
				entry.instance:GetFullName(),
				entry.fieldName
			)
		)
	else
		reporter:fail(ErrorSourceStrings.Keys.AssetDoesNotExist, {
			AssetId = assetLabel,
			InstancePath = entry.instance:GetFullName(),
		})
	end
end

local DescendantIdsNotMissing = {}

DescendantIdsNotMissing.categories = Constants.AllAssetUploadCategories
DescendantIdsNotMissing.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.consumerConfig,
	ValidationEnums.SharedDataMember.contentIds,
}
DescendantIdsNotMissing.expectedFailures = {}

DescendantIdsNotMissing.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	-- Lifecycle-gated on consumerEnv: the empty-required-field editable-backing allowance is an IEC-origin exemption
	-- (in-session editables have no content id), so IEC-origin keeps it even when re-run on a VaaS backend.
	local isIEC = data.consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.IEC

	-- The data layer stores only non-empty, parseable content IDs, keyed by asset id, recording the
	-- (instance, field) each came from. Invert it so a field present here is "properly loaded"; a
	-- non-empty field absent from it was malformed (the raw value never parsed into an asset id).
	local loadedFields: { [Instance]: { [string]: boolean } } = {}
	for _, entries in data.contentIds do
		for _, entry in entries do
			local fields = loadedFields[entry.instance]
			if not fields then
				fields = {}
				loadedFields[entry.instance] = fields
			end
			fields[entry.fieldName] = true
		end
	end

	local descendantsAndRoot = data.rootInstance:GetDescendants()
	table.insert(descendantsAndRoot, data.rootInstance)

	for _, instance in descendantsAndRoot do
		local fieldsForClass = Constants.CONTENT_ID_FIELDS[instance.ClassName]
		if not fieldsForClass then
			continue
		end

		local requiredFieldsForClass = Constants.CONTENT_ID_REQUIRED_FIELDS[instance.ClassName]
		local loadedForInstance = loadedFields[instance]

		for _, fieldName in fieldsForClass do
			local contentId = (instance :: any)[fieldName] :: string
			local isRequired = requiredFieldsForClass ~= nil and requiredFieldsForClass[fieldName] == true

			if contentId ~= "" then
				-- A non-empty content ID must have parsed into the data layer, required or optional.
				if not (loadedForInstance and loadedForInstance[fieldName]) then
					reporter:fail(ErrorSourceStrings.Keys.DescendantIdMalformed, {
						InstanceFullName = instance:GetFullName(),
						FieldName = fieldName,
					})
				end
			elseif isRequired and not (isIEC and hasEditableBacking(instance, fieldName)) then
				-- An empty required field is only acceptable when an IEC editable instance backs it.
				reporter:fail(ErrorSourceStrings.Keys.DescendantIdMissing, {
					InstanceFullName = instance:GetFullName(),
					FieldName = fieldName,
				})
			end
		end
		local contentFieldsForClass = Constants.CONTENT_FIELDS_WITHOUT_CONTENTID[instance.ClassName]
		if not contentFieldsForClass then
			continue
		end

		for _, contentFieldName in contentFieldsForClass do
			local content = (instance :: any)[contentFieldName] :: Content
			if content.SourceType == Enum.ContentSourceType.Uri and content.Uri ~= "" then
				-- A non-empty content ID must have parsed into the data layer, required or optional.
				if not (loadedForInstance and loadedForInstance[contentFieldName]) then
					reporter:fail(ErrorSourceStrings.Keys.DescendantIdMalformed, {
						InstanceFullName = instance:GetFullName(),
						FieldName = contentFieldName,
					})
				end
			end
		end
	end

	-- Pins are limited until validation is ready for versions. Meshes and images can only pin version 1, because metadata
	-- reads, like DescendantIdsAllowed's moderation check, still see an asset's latest version rather than the pinned one.
	-- Animations can't pin at all, because playback ignores the pin and plays the latest version, so validation would
	-- check a different clip than players see.
	if getFFlagUGCValidateVersionedContentIds() then
		for assetId, entries in data.contentIds do
			for _, entry in entries do
				if entry.version == nil then
					continue
				end

				local params = {
					InstanceFullName = entry.instance:GetFullName(),
					FieldName = entry.fieldName,
					Version = tostring(entry.version),
					AssetId = assetId,
				}
				if entry.fieldName == "AnimationId" then
					reporter:fail(ErrorSourceStrings.Keys.DescendantIdAnimationVersionNotSupported, params)
				elseif entry.version ~= 1 then
					reporter:fail(ErrorSourceStrings.Keys.DescendantIdVersionNotSupported, params)
				end
			end
		end
	end

	-- Every referenced asset must be loadable. The data layer already deduped by asset id.
	-- This check is a bit redundant and maybe doesnt belong here
	-- This is carried over for legacy parity during migration, and can be audited later.
	local isBackend = data.consumerConfig.validationEnv == ValidationEnums.ValidationEnv.Backend
	if isBackend or getFFlagUGCValidateCheckDescendantIdsLoadable() then
		if getFFlagUGCValidateVersionedContentIds() then
			-- One check per distinct (asset id, version) reference, so a pinned version is checked at that version.
			for _, reference in ParseContentIds.getDistinctReferences(data.contentIds) do
				if not canLoadAsset(reference.uri) then
					reportUnloadable(reporter, isBackend, reference.key, reference.entry)
				end
			end
		else
			for assetId, entries in data.contentIds do
				if not canLoadAsset("rbxassetid://" .. assetId) then
					reportUnloadable(reporter, isBackend, assetId, entries[1])
				end
			end
		end
	end
end

return DescendantIdsNotMissing :: Types.ValidationModule
