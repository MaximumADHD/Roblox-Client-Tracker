local root = script.Parent.Parent

local Constants = require(root.Constants)
local getAssetCreationDetails = require(root.util.getAssetCreationDetails)

local function parseContentId(contentIds, contentIdMap, object, fieldName)
	local contentId = object[fieldName]

	-- map to ending digits
	-- rbxassetid://1234 -> 1234
	-- http://www.roblox.com/asset/?id=1234 -> 1234
	local id = tonumber(string.match(contentId, "%d+$"))
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

	return true
end

-- ensures accessory content ids have all passed moderation review
local function validateModeration(isAsync, instance)
	local contentIdMap = {}
	local contentIds = {}

	local parseSuccess, parseReasons = parseDescendantContentIds(contentIds, contentIdMap, instance)
	if not parseSuccess then
		return false, parseReasons
	end

	local moderatedIds = {}

	local success, response = getAssetCreationDetails(isAsync, contentIds)

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
