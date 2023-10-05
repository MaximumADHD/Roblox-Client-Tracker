--!nonstrict

--[[
	ParseContentIds.lua exposes functions to get all the asset ids used in the hierarchy tree of an asset. Internal
	functions are used to parse the asset id from the url it is contained in e.g parse 1234 from https://assetdelivery.roblox.com/v1/asset/?id=1234
]]

local root = script.Parent.Parent

local Constants = require(root.Constants)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local getFFlagAddUGCValidationForPackage = require(root.flags.getFFlagAddUGCValidationForPackage)
local getFFlagFixPackageIDFieldName = require(root.flags.getFFlagFixPackageIDFieldName)
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
	local id = string.match(contentId, "^%.com/asset/%?id=(%d+)$")
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

-- attempt to extract the asset id out of a valid content id URL
local function tryGetAssetIdFromContentIdInternal(contentId)
	local id

	if getFFlagAddUGCValidationForPackage() then
		id = tonumber(contentId)
		if id ~= nil then
			if getFFlagFixPackageIDFieldName() then
				return tostring(id)
			else
				return id
			end
		end
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

local function parseContentId(contentIds, contentIdMap, allResults, object, fieldName, isRequired)
	local contentId = object[fieldName]

	if contentId == "" then
		if isRequired then
			return false, { string.format("%s.%s cannot be empty", object:GetFullName(), fieldName) }
		end
		return true
	end

	local id = tryGetAssetIdFromContentIdInternal(contentId)
	if id == nil then
		return false,
			{
				string.format("Could not parse ContentId %s in %s.%s", contentId, object:GetFullName(), fieldName),
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

local function parseWithErrorCheckInternal(contentIds, contentIdMap, allResults, object, allFields, requiredFields)
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
					parseContentId(contentIds, contentIdMap, allResults, descendant, field, isRequired)
				)
			end
		end
	end

	return reasonsAccumulator:getFinalResults()
end

function ParseContentIds.tryGetAssetIdFromContentId(contentId: string): string
	return tryGetAssetIdFromContentIdInternal(contentId)
end

function ParseContentIds.parseWithErrorCheck(contentIds, contentIdMap, object, allFields, requiredFields)
	return parseWithErrorCheckInternal(contentIds, contentIdMap, nil, object, allFields, requiredFields)
end

function ParseContentIds.parse(object, allFields)
	local contentIdMap = {}
	local contentIds = {}
	local allResults = {}
	local success = parseWithErrorCheckInternal(contentIds, contentIdMap, allResults, object, allFields)
	assert(success)
	return allResults
end

return ParseContentIds
