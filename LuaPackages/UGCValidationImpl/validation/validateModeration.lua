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

	if game:GetFastFlag("UGCValidateLayeredClothing2") and contentId == "" then
		return true
	end

	local id
	if game:GetFastFlag("UGCValidateContentIdStrict") then
		id = tryGetAssetIdFromContentId(contentId)
	else
		id = tonumber(string.match(contentId, "%d+$"))
	end
	if id == nil then
		return false, {
			"Could not parse ContentId",
			contentId,
		}
	end
	contentIdMap[id] = {
		fieldName = fieldName,
		instance = object,
	}
	table.insert(contentIds, id)

	return true
end

local function parseDescendantContentIds(contentIds, contentIdMap, object)
	for _, descendant in pairs(object:GetDescendants()) do
		if game:GetFastFlag("UGCValidateLayeredClothing2") then
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
		else
			if descendant:IsA("SpecialMesh") then
				local success, reasons
				success, reasons = parseContentId(contentIds, contentIdMap, descendant, "MeshId")
				if not success then
					return false, reasons
				end
				success, reasons = parseContentId(contentIds, contentIdMap, descendant, "TextureId")
				if not success then
					return false, reasons
				end
			end
		end
	end

	return true
end

-- ensures accessory content ids have all passed moderation review
local function validateModeration_DEPRECATED(isAsync, instance)
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

if game:GetFastFlag("UGCValidateLayeredClothing2") then
	return validateModeration
else
	return validateModeration_DEPRECATED :: any
end
