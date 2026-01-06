local root = script.Parent.Parent
local Types = require(root.util.Types)
local newValidationManager = require(root.validationSystem.ValidationManager)
local getFFlagUGCValidationCombineEntrypointResults = require(root.flags.getFFlagUGCValidationCombineEntrypointResults)

local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local LegacyValidationAdapter = {}

local function fallbackLocalizationFunction(localizationContext: Types.failureStringContext): string
	local keyBreakdown = localizationContext.key:split(".")
	local keyEnum = keyBreakdown[#keyBreakdown]
	local sourceString = ErrorSourceStrings.Values[keyEnum]
	if not sourceString then
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
	failContext: Types.failureStringContext
): string
	local success: boolean, localizedString: string?
	if localizationFunc then
		success, localizedString = pcall(function()
			return localizationFunc(failContext)
		end)
	end

	if success and localizedString ~= failContext.key then -- plugin fallback is the key, ours is the string
		return localizedString :: string
	else
		return fallbackLocalizationFunction(failContext)
	end
end

function LegacyValidationAdapter.combineResultsIntoLegacy(
	legacyPass: boolean,
	legacyReasons: { string }?,
	validationData: Types.ValidationResultData,
	localizationFunc: ((Types.failureStringContext) -> string)?
): (boolean, { string }?)
	local pass, reasons = legacyPass, legacyReasons
	pass = pass and validationData.pass
	if #validationData.errorTranslationContexts > 0 then
		if reasons == nil then
			reasons = {}
		end

		for _, failContext in validationData.errorTranslationContexts do
			table.insert(reasons :: { string }, fetchString(localizationFunc, failContext))
		end
	end

	if not pass and (reasons == nil or #reasons == 0) then
		-- Some consumers will break if we don't provide a reason, which in theory can happen if we dont start a test due to a data fetch failure
		-- For now, provide a generic unkown error message, and in the future make sure this never happens
		if reasons == nil then
			reasons = {}
		end

		table.insert(
			reasons :: { string },
			fetchString(localizationFunc, {
				key = ErrorSourceStrings.Keys.FailureWithoutReason,
				params = {},
			})
		)
	end

	return pass, reasons
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
