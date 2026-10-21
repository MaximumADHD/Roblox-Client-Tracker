--!nonstrict

--[[
	ParseContentIds.lua exposes functions to get all the asset ids used in the hierarchy tree of an asset. Internal
	functions are used to parse the asset id from the url it is contained in e.g parse 1234 from https://assetdelivery.roblox.com/v1/asset/?id=1234
	With FFlagUGCValidateVersionedContentIds, a content id may also pin a version, e.g. rbxassetid://1234&version=3
]]

local root = script.Parent.Parent

local Constants = require(root.Constants)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local getFFlagUGCValidateVersionedContentIds = require(root.flags.getFFlagUGCValidateVersionedContentIds)

local ParseContentIds = {}

-- rbxassetid://1234
local function getRbxAssetId(contentId)
	local id = string.match(contentId, "^rbxassetid://(%d+)$")
	return id
end

-- http(s)://(www.sitetest1.)roblox(labs).com/asset/?id=1234
local function getAssetUrlId(contentId)
	contentId = string.match(contentId, "^https?://www%.(.+)") or string.match(contentId, "^https?://(.+)")
	if not contentId then
		return nil
	end
	contentId = string.match(contentId, "^sitetest%d%.robloxlabs(.+)") or string.match(contentId, "^roblox(.+)")
	if not contentId then
		return nil
	end

	local id = string.match(contentId, "^%.com//?asset/%?id=(%d+)$") -- allows for one or two forward slashes after '.com'
	return id
end

-- http(s)://assetdelivery.(sitetest1.)roblox(labs).com/v1/asset/?id=1234
local function getAssetDeliveryAssetUrlId(contentId)
	contentId = string.match(contentId, "^https?://assetdelivery%.(.+)")
	if not contentId then
		return nil
	end
	contentId = string.match(contentId, "^sitetest%d%.robloxlabs(.+)") or string.match(contentId, "^roblox(.+)")
	if not contentId then
		return nil
	end
	local id = string.match(contentId, "^%.com/v1/asset/%?id=(%d+)$")
	return id
end

local MAX_VERSION_DIGITS = 10

-- splits a trailing "&version=<n>" pin (any letter case in the key, 1 <= n, at most MAX_VERSION_DIGITS digits) off a
-- content id. Anything else after the id, including a second pin, stays in the base so the id patterns above reject it
local function splitVersionPin(contentId: string): (string, number?)
	local base, key, digits = string.match(contentId, "^(.*)&(%a+)=(%d+)$")
	if base == nil or string.lower(key) ~= "version" or #digits > MAX_VERSION_DIGITS then
		return contentId, nil
	end

	local version = tonumber(digits)
	if version == nil or version < 1 then
		return contentId, nil
	end
	return base, version
end

-- the asset id is always a string, without leading zeros (the engine reads rbxassetid://0123 as asset 123). A bare id
-- can't carry a pin: the engine doesn't load "1234&version=3", and Studio stores it as rbxassetid://1234&version=3
local function tryParseVersionedContentId(contentId: string): (string?, number?)
	local base, version = splitVersionPin(contentId)

	local id = string.match(base, "^%d+$")
	if id ~= nil and version ~= nil then
		return nil, nil
	end

	id = id or getRbxAssetId(base) or getAssetUrlId(base) or getAssetDeliveryAssetUrlId(base)
	if id == nil then
		return nil, nil
	end
	return (string.gsub(id, "^0+(%d)", "%1")), version
end

-- attempt to extract the asset id out of a valid content id URL
local function tryGetAssetIdFromContentIdInternal(contentId)
	if getFFlagUGCValidateVersionedContentIds() then
		return (tryParseVersionedContentId(contentId))
	end

	local id = tonumber(contentId)
	if id ~= nil then
		return id
	end

	id = getRbxAssetId(contentId)
	if id ~= nil then
		return id
	end

	id = getAssetUrlId(contentId)
	if id ~= nil then
		return id
	end

	id = getAssetDeliveryAssetUrlId(contentId)
	if id ~= nil then
		return id
	end

	return nil
end

local function hasInExpCreatedEditableInstance(object, fieldName, validationContext)
	if not validationContext then
		return false
	end

	if not validationContext.allowEditableInstances then
		return false
	end

	local instanceFieldsToEditableImageMap = validationContext.editableImages[object]
	if
		instanceFieldsToEditableImageMap
		and instanceFieldsToEditableImageMap[fieldName]
		and instanceFieldsToEditableImageMap[fieldName].instance
	then
		return true
	end

	local instanceFieldsToEditableMeshMap = validationContext.editableMeshes[object]
	if
		instanceFieldsToEditableMeshMap
		and instanceFieldsToEditableMeshMap[fieldName]
		and instanceFieldsToEditableMeshMap[fieldName].instance
	then
		return true
	end

	return false
end

local function parseContentId(contentIds, contentIdMap, allResults, object, fieldName, isRequired, validationContext)
	local contentId = object[fieldName]

	if contentId == "" then
		if hasInExpCreatedEditableInstance(object, fieldName, validationContext) then
			if allResults then
				table.insert(allResults, { fieldName = fieldName, instance = object })
			end
		elseif isRequired then
			return false, { string.format("%s.%s cannot be empty", object:GetFullName(), fieldName) }
		end

		return true
	end

	local id = tryGetAssetIdFromContentIdInternal(contentId)
	if id == nil then
		return false,
			{
				string.format(
					"Could not parse ContentId %s in %s.%s. Please make sure you are using a valid URL with a valid ID.",
					contentId,
					object:GetFullName(),
					fieldName
				),
			}
	end

	-- do not check the same asset ID multiple times
	if contentIdMap[id] == nil then
		contentIdMap[id] = {
			fieldName = fieldName,
			instance = object,
		} :: any
		table.insert(contentIds, id)
	end

	-- if you need to know all the instances that reference an assetid
	if allResults then
		table.insert(allResults, { fieldName = fieldName, instance = object, id = id })
	end

	return true
end

local function parseWithErrorCheckInternal(
	contentIds,
	contentIdMap,
	allResults,
	object,
	allFields,
	requiredFields,
	validationContext
)
	allFields = allFields or Constants.CONTENT_ID_FIELDS
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local descendantsAndObject = object:GetDescendants()
	table.insert(descendantsAndObject, object)

	for _, descendant in pairs(descendantsAndObject) do
		local contentIdFields = allFields[descendant.ClassName]
		if contentIdFields then
			local requiredFieldsForClassType = requiredFields and requiredFields[descendant.ClassName]
			for __, field in ipairs(contentIdFields) do
				local isRequired = requiredFieldsForClassType and requiredFieldsForClassType[field]
				reasonsAccumulator:updateReasons(
					parseContentId(
						contentIds,
						contentIdMap,
						allResults,
						descendant,
						field,
						isRequired,
						validationContext
					)
				)
			end
		end
	end

	return reasonsAccumulator:getFinalResults()
end

function ParseContentIds.tryGetAssetIdFromContentId(contentId: string): string
	return tryGetAssetIdFromContentIdInternal(contentId)
end

-- returns the asset id and the version the content id pins, if any. With FFlagUGCValidateVersionedContentIds off,
-- pinned content ids don't parse and the version is always nil
function ParseContentIds.tryParseContentId(contentId: string): (string?, number?)
	if getFFlagUGCValidateVersionedContentIds() then
		return tryParseVersionedContentId(contentId)
	end
	return tryGetAssetIdFromContentIdInternal(contentId), nil
end

-- key for one reference to an asset; an unpinned reference keys by the asset id alone
function ParseContentIds.getReferenceKey(assetId: string, version: number?): string
	if version == nil then
		return assetId
	end
	return string.format("%s&version=%d", assetId, version)
end

-- rbxassetid uri for one reference, keeping its version pin
function ParseContentIds.toAssetUri(assetId: string, version: number?): string
	return "rbxassetid://" .. ParseContentIds.getReferenceKey(assetId, version)
end

-- one entry per distinct (asset id, version) reference in a FetchContentIds map, with the first field that uses it
function ParseContentIds.getDistinctReferences(
	contentIdMap
): { { key: string, uri: string, assetId: string, entry: any } }
	local references = {}
	local seenKeys = {}
	for assetId, entries in contentIdMap do
		for _, entry in entries do
			local key = ParseContentIds.getReferenceKey(assetId, entry.version)
			if seenKeys[key] then
				continue
			end
			seenKeys[key] = true
			table.insert(references, {
				key = key,
				uri = ParseContentIds.toAssetUri(assetId, entry.version),
				assetId = assetId,
				entry = entry,
			})
		end
	end
	return references
end

function ParseContentIds.parseWithErrorCheck(
	contentIds,
	contentIdMap,
	object,
	allFields,
	requiredFields,
	validationContext
)
	return parseWithErrorCheckInternal(
		contentIds,
		contentIdMap,
		nil,
		object,
		allFields,
		requiredFields,
		validationContext
	)
end

function ParseContentIds.parse(object, allFields, validationContext)
	local contentIdMap = {}
	local contentIds = {}
	local allResults = {}

	local success =
		parseWithErrorCheckInternal(contentIds, contentIdMap, allResults, object, allFields, nil, validationContext)

	assert(success)
	return allResults
end

return ParseContentIds
