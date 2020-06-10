local Plugin = script.Parent.Parent.Parent

local CreatorInfoHelper = {}

function CreatorInfoHelper.getCreatorTypeValueFromName(creatorTypeName)
	assert(type(creatorTypeName) == "string")

	for _, item in ipairs(Enum.CreatorType:GetEnumItems()) do
		if item.Name == creatorTypeName then
			return item.Value
		end
	end

	error(("'%s' is not a valid Enum.CreatorType"):format(creatorTypeName))
end

function CreatorInfoHelper.isValidCreatorType(creatorType)
	for _, item in ipairs(Enum.CreatorType:GetEnumItems()) do
		if item.Value == creatorType then
			return true
		end
	end

	return false
end

function CreatorInfoHelper.getNameFromResult(result, creatorType)
	assert(CreatorInfoHelper.isValidCreatorType(creatorType))

	local data = result.responseBody

	if creatorType == Enum.CreatorType.Group.Value then
		return data.Name
	elseif creatorType == Enum.CreatorType.User.Value then
		return data.Username
	else
		error(("Unknown creatorType: '%s'"):format(creatorType))
	end
end

function CreatorInfoHelper.isCached(store, creatorId, creatorType)
	assert(CreatorInfoHelper.isValidCreatorType(creatorType))

	local cachedCreatorInfo = store:getState().assets.cachedCreatorInfo

	if not cachedCreatorInfo then
		return false
	end

	if not cachedCreatorInfo.Id then
		return false
	end

	return cachedCreatorInfo.Id == creatorId and cachedCreatorInfo.Type == creatorType
end

return CreatorInfoHelper
