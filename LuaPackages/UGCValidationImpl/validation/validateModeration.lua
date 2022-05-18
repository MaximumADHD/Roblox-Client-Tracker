local root = script.Parent.Parent

local Constants = require(root.Constants)
local getAssetCreationDetails = require(root.util.getAssetCreationDetails)

-- rbxassetid://1234
local function getRbxAssetId(contentId)
	local id = string.match(contentId, "^rbxassetid://(%d+)$")
	return id
end

-- http(s)://www.(sitetest1.)roblox(labs).com/asset/?id=1234
local function getAssetUrlId(contentId)
	contentId = string.match(contentId, "^https?://www%.(.+)")
	if not contentId then return nil end
	contentId = string.match(contentId, "^sitetest%d%.robloxlabs(.+)") or string.match(contentId, "^roblox(.+)")
	if not contentId then return nil end
	local id = string.match(contentId, "^%.com/asset/%?id=(%d+)$")
	return id
end

-- http(s)://assetdelivery.(sitetest1.)roblox(labs).com/v1/asset/?id=1234
local function getAssetDeliveryAssetUrlId(contentId)
	contentId = string.match(contentId, "^https?://assetdelivery%.(.+)")
	if not contentId then return nil end
	contentId = string.match(contentId, "^sitetest%d%.robloxlabs(.+)") or string.match(contentId, "^roblox(.+)")
	if not contentId then return nil end
	local id = string.match(contentId, "^%.com/v1/asset/%?id=(%d+)$")
	return id
end

-- attempt to extract the asset id out of a valid content id URL
local function tryGetAssetIdFromContentId(contentId)
	local id

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

local function parseContentId(contentIds, contentIdMap, object, fieldName)
	local contentId = object[fieldName]

	if contentId == "" then
		return true
	end

	local id = tryGetAssetIdFromContentId(contentId)
	if id == nil then
		return false, {
			"Could not parse ContentId",
			contentId,
		}
	end

	-- do not check the same asset ID multiple times
	if not game:GetFastFlag("UGCFixModerationCheck") or contentIdMap[id] == nil then
		contentIdMap[id] = {
			fieldName = fieldName,
			instance = object,
		} :: any
		table.insert(contentIds, id)
	end

	return true
end

local function parseDescendantContentIds(contentIds, contentIdMap, object)
	for _, descendant in pairs(object:GetDescendants()) do
		local contentIdFields = Constants.CONTENT_ID_FIELDS[descendant.ClassName]
		if contentIdFields then
			local success, reasons
			for _, field in ipairs(contentIdFields) do
				success, reasons = parseContentId(contentIds, contentIdMap, descendant, field)
				if not success then
					return false, reasons
				end
			end
		end
	end

	return true
end

-- ensures accessory content ids have all passed moderation review
local function validateModeration(instance: Instance): (boolean, {string}?)
	local contentIdMap = {}
	local contentIds = {}

	local parseSuccess, parseReasons = parseDescendantContentIds(contentIds, contentIdMap, instance)
	if not parseSuccess then
		return false, parseReasons
	end

	local moderatedIds = {}

	local success, response = getAssetCreationDetails(contentIds)

	if not success or #response ~= #contentIds then
		return false, { "Could not fetch details for assets" }
	end

	for _, details in pairs(response) do
		if details.status == Constants.ASSET_STATUS.UNKNOWN
		or details.status == Constants.ASSET_STATUS.REVIEW_PENDING
		or details.status == Constants.ASSET_STATUS.MODERATED
		then
			table.insert(moderatedIds, details.assetId)
		end
	end

	if #moderatedIds > 0 then
		local moderationMessages = {}
		for idx, id in pairs(moderatedIds) do
			local mapped = contentIdMap[id]
			if mapped then
				moderationMessages[idx] = string.format(
					"%s.%s ( %s )",
					mapped.instance:GetFullName(),
					mapped.fieldName,
					id
				)
			else
				moderationMessages[idx] = id
			end
		end
		return false, {
			"The following asset IDs have not passed moderation:",
			unpack(moderationMessages),
		}
	end

	return true
end

return validateModeration
