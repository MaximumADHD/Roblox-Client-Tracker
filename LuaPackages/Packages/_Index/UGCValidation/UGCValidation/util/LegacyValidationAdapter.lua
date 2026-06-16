local root = script.Parent.Parent
local Types = require(root.util.Types)
local newValidationManager = require(root.validationSystem.ValidationManager)
local getFFlagUGCValidationCombineEntrypointResults = require(root.flags.getFFlagUGCValidationCombineEntrypointResults)
local getEngineFeatureEngineUGCValidationExpandReturnSchema =
	require(root.flags.getEngineFeatureEngineUGCValidationExpandReturnSchema)

local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local LegacyValidationAdapter = {}

-- Sentinel for legacy-entrypoint reasons: failureMap bucket and failureStringKey of
-- the entries inside it. The raw message lives in params.Message.
LegacyValidationAdapter.LegacyValidator = "LegacyValidator"

local function fallbackLocalizationFunction(
	localizationContext: Types.failureStringContext,
	relevantSourceStrings: { [string]: string }?
): string
	local sourceString = if relevantSourceStrings then relevantSourceStrings[localizationContext.key] else nil

	if sourceString == nil then
		local keyBreakdown = localizationContext.key:split(".")
		local keyEnum = keyBreakdown[#keyBreakdown]
		sourceString = ErrorSourceStrings.Values[keyEnum]
	end

	if sourceString == nil then
		-- If the key doesn't map to anything, we can just show the key for some minmal info
		return localizationContext.key
	end

	-- custom character replacement to mimick the translation services. Should be O(n).
	-- Expects no { or } in the source string, other than to cover the parameter names
	local stringCharacters: { string } = {}
	local paramCharacters: { string }? = nil
	for charInd = 1, #sourceString do
		local char = string.sub(sourceString, charInd, charInd)
		if char == "{" then
			paramCharacters = {}
		elseif char == "}" then
			if paramCharacters ~= nil then
				local paramName = table.concat(paramCharacters)

				if localizationContext.params[paramName] ~= nil then
					table.insert(stringCharacters, tostring(localizationContext.params[paramName]))
				end
				paramCharacters = nil
			end
		elseif paramCharacters ~= nil then
			table.insert(paramCharacters, char)
		else
			table.insert(stringCharacters, char)
		end
	end

	return table.concat(stringCharacters)
end

function LegacyValidationAdapter.getPrecomputedEditables(
	editableMeshes: Types.EditableMeshes,
	editableImages: Types.EditableImages
): ({ string: EditableMesh }, { string: EditableImage })
	local preloaded = { {}, {} }
	local legacyFormat: { Types.EditableMeshes | Types.EditableImages } = { editableMeshes, editableImages }
	for i, editables in legacyFormat do
		for inst, fieldMaps in editables :: any do
			for fieldName, meshInfo in fieldMaps :: any do
				pcall(function()
					local uri = (inst :: any)[fieldName]
					if uri ~= nil and uri ~= "" then
						preloaded[i][uri] = meshInfo.instance
					end
				end)
			end
		end
	end

	return preloaded[1] :: { string: EditableMesh }, preloaded[2] :: { string: EditableImage }
end

local function fetchString(
	localizationFunc: ((Types.failureStringContext) -> string)?,
	failContext: Types.failureStringContext,
	relevantSourceStrings: { [string]: string }?
): string
	if failContext.key == LegacyValidationAdapter.LegacyValidator then
		return failContext.params.Message or ""
	end

	local success: boolean, localizedString: string?
	if localizationFunc then
		success, localizedString = pcall(function()
			return localizationFunc(failContext)
		end)
	end

	if success and localizedString ~= failContext.key then -- plugin fallback is the key, ours is the string
		return localizedString :: string
	else
		return fallbackLocalizationFunction(failContext, relevantSourceStrings)
	end
end

-- For modern-only conversion (no legacy pass/reasons to merge): call with `(true, nil, validationData, fn)`.
function LegacyValidationAdapter.combineResultsIntoLegacy(
	legacyPass: boolean,
	legacyReasons: { string }?,
	validationData: Types.ValidationResultData,
	localizationFunc: ((Types.failureStringContext) -> string)?
): (boolean, { string }?)
	local pass, reasons = legacyPass, legacyReasons
	pass = pass and validationData.pass

	if getEngineFeatureEngineUGCValidationExpandReturnSchema() then
		if next(validationData.failureMap) ~= nil then
			if reasons == nil then
				reasons = {}
			end
			for _, failures in validationData.failureMap do
				for _, entry in failures do
					table.insert(
						reasons :: { string },
						fetchString(localizationFunc, {
							key = entry.failureStringKey,
							params = entry.failureStringParams,
						}, validationData.relevantSourceStrings)
					)
				end
			end
		end
	else
		local legacyContexts = (validationData :: any).errorTranslationContexts :: { Types.failureStringContext }?
		if legacyContexts and #legacyContexts > 0 then
			if reasons == nil then
				reasons = {}
			end
			for _, failContext in legacyContexts do
				table.insert(reasons :: { string }, fetchString(localizationFunc, failContext))
			end
		end
	end

	if not pass and (reasons == nil or #reasons == 0) then
		-- Some consumers will break if we don't provide a reason, which in theory can happen if we dont start a test due to a data fetch failure
		if reasons == nil then
			reasons = {}
		end

		if getEngineFeatureEngineUGCValidationExpandReturnSchema() then
			table.insert(
				reasons :: { string },
				fetchString(localizationFunc, {
					key = ErrorSourceStrings.Keys.InternalError,
					params = { ValidationJobId = validationData.validationJobId },
				}, validationData.relevantSourceStrings)
			)
		else
			-- For now, provide a generic unkown error message, and in the future make sure this never happens
			table.insert(
				reasons :: { string },
				fetchString(localizationFunc, {
					key = ErrorSourceStrings.Keys.FailureWithoutReason,
					params = {},
				})
			)
		end
	end

	return pass, reasons
end

function LegacyValidationAdapter.mergeLegacyIntoModern(
	legacyPass: boolean,
	legacyReasons: { string }?,
	validationData: Types.ValidationResultData
)
	assert(
		getEngineFeatureEngineUGCValidationExpandReturnSchema(),
		"mergeLegacyIntoModern requires EngineUGCValidationExpandReturnSchema"
	)

	validationData.pass = validationData.pass and legacyPass

	if legacyReasons and #legacyReasons > 0 then
		local legacyEntries: { Types.FailureEntry } = {}
		for _, reason in legacyReasons do
			if reason ~= "" then
				table.insert(legacyEntries, {
					failureStringKey = LegacyValidationAdapter.LegacyValidator,
					failureStringParams = { Message = reason },
					instancePath = "",
				})
			end
		end
		if #legacyEntries > 0 then
			validationData.failureMap[LegacyValidationAdapter.LegacyValidator] = legacyEntries
			validationData.numFailures += #legacyEntries
		end
	end
end

-- This is a hacky situation to connect the old and new entrypoints, as its currently tightly coupled to studio.
-- Studio body validation needs to be refactored to call new entrypoints, may need a week of work to track down usage and test changes
function LegacyValidationAdapter.studioRFUAssetValidation(
	validationContext: Types.ValidationContext,
	telemetryBundleId: string,
	legacyPass: boolean,
	legacyReasons: { string }?
): (boolean, { string }?)
	local plugin: Types.UGCValidationConsumerName = "Toolbox"
	local enforceShadowValidations = validationContext.bypassFlags
			and validationContext.bypassFlags.enforceShadowValidations
		or false
	if validationContext.bypassFlags and validationContext.bypassFlags.studioPluginName then
		plugin = validationContext.bypassFlags.studioPluginName :: Types.UGCValidationConsumerName
	end

	local preloadedEditableMeshes, preloadedEditableImages = LegacyValidationAdapter.getPrecomputedEditables(
		validationContext.editableMeshes or {},
		validationContext.editableImages or {}
	)
	local validationData = newValidationManager.ValidateAsset(
		(validationContext :: any).instances,
		(validationContext :: any).assetTypeEnum,
		{
			source = plugin,
			enforceR15FolderStructure = validationContext.requireAllFolders or false,
			enforceShadowValidations = enforceShadowValidations,
			telemetryBundleId = telemetryBundleId,
			preloadedEditableMeshes = preloadedEditableMeshes,
			preloadedEditableImages = preloadedEditableImages,
			-- Populate both; manager strips the non-matching env-config.
			backendConfigs = if validationContext.restrictedUserIds
				then { restrictedUserIds = validationContext.restrictedUserIds }
				else nil,
			iecConfigs = if validationContext.token
				then {
					token = validationContext.token,
					universeId = validationContext.universeId,
				}
				else nil,
		}
	)

	if getFFlagUGCValidationCombineEntrypointResults() then
		return LegacyValidationAdapter.combineResultsIntoLegacy(
			legacyPass,
			legacyReasons,
			validationData,
			if validationContext.bypassFlags ~= nil then validationContext.bypassFlags.localizationCallback else nil
		)
	end

	return legacyPass, legacyReasons
end

function LegacyValidationAdapter.studioRFUBundleValidation(
	fullBodyData: Types.FullBodyData,
	bundleTypeEnum: Enum.BundleType,
	validationContext: Types.ValidationContext,
	telemetryBundleId: string,
	legacyPass: boolean,
	legacyReasons: { string }?
): (boolean, { string }?)
	local plugin: Types.UGCValidationConsumerName = "Toolbox"
	if validationContext.bypassFlags and validationContext.bypassFlags.studioPluginName then
		plugin = validationContext.bypassFlags.studioPluginName :: Types.UGCValidationConsumerName
	end

	local enforceShadowValidations = validationContext.bypassFlags
			and validationContext.bypassFlags.enforceShadowValidations
		or false
	local preloadedEditableMeshes, preloadedEditableImages = LegacyValidationAdapter.getPrecomputedEditables(
		validationContext.editableMeshes or {},
		validationContext.editableImages or {}
	)
	local validationData = newValidationManager.ValidateFinalizedBundle(fullBodyData, bundleTypeEnum, {
		source = plugin,
		enforceR15FolderStructure = validationContext.requireAllFolders or false,
		enforceShadowValidations = enforceShadowValidations,
		telemetryBundleId = telemetryBundleId,
		preloadedEditableMeshes = preloadedEditableMeshes,
		preloadedEditableImages = preloadedEditableImages,
		-- Populate both; manager strips the non-matching env-config.
		backendConfigs = if validationContext.restrictedUserIds
			then { restrictedUserIds = validationContext.restrictedUserIds }
			else nil,
		iecConfigs = if validationContext.token
			then {
				token = validationContext.token,
				universeId = validationContext.universeId,
			}
			else nil,
	})

	if getFFlagUGCValidationCombineEntrypointResults() then
		assert(validationContext.bypassFlags)
		assert(validationContext.bypassFlags.localizationCallback)
		return LegacyValidationAdapter.combineResultsIntoLegacy(
			legacyPass,
			legacyReasons,
			validationData,
			if validationContext.bypassFlags ~= nil then validationContext.bypassFlags.localizationCallback else nil
		)
	end

	return legacyPass, legacyReasons
end

return LegacyValidationAdapter
