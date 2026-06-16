local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)

local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)
local getFFlagUGCValidateCheckDescendantIdsLoadable = require(root.flags.getFFlagUGCValidateCheckDescendantIdsLoadable)

local function hasEditableBacking(instance: Instance, fieldName: string): boolean
	local classMap = Constants.CONTENT_ID_EDITABLE_PROPERTY[instance.ClassName]
	local contentProperty = classMap and classMap[fieldName]
	if not contentProperty then
		return false
	end
	return (instance :: any)[contentProperty].SourceType == Enum.ContentSourceType.Object
end

local DescendantIdsNotMissing = {}

DescendantIdsNotMissing.categories = Constants.AllAssetUploadCategories
DescendantIdsNotMissing.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.consumerConfig,
	ValidationEnums.SharedDataMember.contentIds,
}
DescendantIdsNotMissing.fflag = getFFlagUGCValidateMigrateSchemaProperties
DescendantIdsNotMissing.expectedFailures = {}

DescendantIdsNotMissing.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
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
	end

	-- Every referenced asset must be loadable. The data layer already deduped by asset id.
	-- This check is a bit redundant and maybe doesnt belong here
	-- This is carried over for legacy parity during migration, and can be audited later.
	local isBackend = data.consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.Backend
	if isBackend or getFFlagUGCValidateCheckDescendantIdsLoadable() then
		for assetId, entries in data.contentIds do
			local firstEntry = entries[1]
			local pcallSuccess, canLoadResult = pcall(function()
				return UGCValidationService:CanLoadAsset("rbxassetid://" .. assetId)
			end)

			if not pcallSuccess or not canLoadResult then
				if isBackend then
					-- Backend re-raises so RCC reschedules; the outcome is inconclusive, not creator-facing.
					reporter:fetchError(
						string.format(
							"Failed to load asset referenced by %s.%s. Make sure the asset exists and try again.",
							firstEntry.instance:GetFullName(),
							firstEntry.fieldName
						)
					)
				else
					reporter:fail(ErrorSourceStrings.Keys.AssetDoesNotExist, {
						AssetId = assetId,
						InstancePath = firstEntry.instance:GetFullName(),
					})
				end
			end
		end
	end
end

return DescendantIdsNotMissing :: Types.ValidationModule
