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

function CreatorInfoHelper.backendToClient(backendCreatorType)
	if backendCreatorType == 1 then
		return Enum.CreatorType.User.Value
	elseif backendCreatorType == 2 then
		return Enum.CreatorType.Group.Value
	else
		error("Unknown backendCreatorType received " .. tostring(backendCreatorType))
	end
end

function CreatorInfoHelper.clientToBackend(creatorType)
	if creatorType == Enum.CreatorType.User.Value then
		return 1
	elseif creatorType == Enum.CreatorType.Group.Value then
		return 2
	else
		error("Unknown creatorType received " .. tostring(creatorType))
	end
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
