local RoduxFriends = script:FindFirstAncestor("RoduxFriends")
local Packages = RoduxFriends.Parent
local mockId = require(script.Parent.mockId)
local roduxFriendsTypes = require(script.Parent.Parent.roduxFriendsTypes)
local llama = require(Packages.llama)
local RecommendationContextType = require(RoduxFriends.Enums.RecommendationContextType)

local Recommendation = {}

function Recommendation.new(recommendation: roduxFriendsTypes.RecommendationModel)
	assert(Recommendation.isValid(recommendation))

	Recommendation.__index = Recommendation

	local self = {
		id = recommendation.id,
		entityId = recommendation.entityId,
		rank = recommendation.rank,
		contextType = recommendation.contextType,
		mutualFriendsList = recommendation.mutualFriendsList,
		mutualFriendsCount = recommendation.mutualFriendsCount,
		thumbnailEntities = recommendation.thumbnailEntities,
		entityDisplayName = recommendation.entityDisplayName,
	}

	setmetatable(self, Recommendation)

	return self
end

function Recommendation.mock(mergeTable: { id: string?, mutualFriendsList: { string }?, contextType: any, rank: number? }?)
	local defaultValues: roduxFriendsTypes.RecommendationModel = { id = mockId(), contextType = RecommendationContextType.MutualFriends }
	local mergedValues: roduxFriendsTypes.RecommendationModel = llama.Dictionary.join(defaultValues, mergeTable)

	local self = Recommendation.new({
		id = mergedValues.id,
		mutualFriendsList = mergedValues.mutualFriendsList,
		rank = mergedValues.rank or tonumber(mergedValues.id),
		contextType = mergedValues.contextType,
		mutualFriendsCount = if mergedValues.mutualFriendsCount
			then mergedValues.mutualFriendsCount
			else mergedValues.mutualFriendsList and #mergedValues.mutualFriendsList or 0
	})

	return self
end

function Recommendation.isValid(recommendation: any?)
	if not recommendation then
		return false, "Expected recommendation information to be given"
	elseif not recommendation.id then
		return false, "Expected user's id to be given"
	elseif not recommendation.rank then
		return false, "Expected user's rank to be given"
	elseif not recommendation.contextType or not RecommendationContextType.isEnumValue(recommendation.contextType) then
		return false, "Expected contextType to be given"
	end

	if recommendation.mutualFriendsList and type(recommendation.mutualFriendsList) ~= "table" then
		return false, "mutualFriendList must be a table of strings"
	end

	if recommendation.mutualFriendsCount and type(recommendation.mutualFriendsCount) ~= "number" then
		return false, "mutualFriendsCount must be a number"
	end

	if recommendation.contextType == RecommendationContextType.Contacts and not recommendation.entityId then
		return false, "entity Id must be given for Contacts recommendation type"
	end

	return true, "Valid Recommendation"
end

function Recommendation.isEqual(
	recommendation1: roduxFriendsTypes.RecommendationModel,
	recommendation2: roduxFriendsTypes.RecommendationModel
)
	return recommendation1.id == recommendation2.id
		and llama.List.equals(recommendation1.mutualFriendsList, recommendation2.mutualFriendsList)
		and recommendation1.rank == recommendation2.rank
		and recommendation1.contextType == recommendation2.contextType
		and recommendation1.mutualFriendsCount == recommendation2.mutualFriendsCount
end

function Recommendation.format(mergeTable: roduxFriendsTypes.RecommendationResponse)
	local contextType = if mergeTable.contextType
		then RecommendationContextType.fromRawValue(mergeTable.contextType) or RecommendationContextType.None
		else RecommendationContextType.None

	local mutualFriendsCount =
		if mergeTable.mutualFriendsCount then mergeTable.mutualFriendsCount
		elseif mergeTable.mutualFriendsList then #mergeTable.mutualFriendsList
		else 0

	local entityId = if mergeTable.contactId ~= "" then mergeTable.contactId else nil
		
	local entityDisplayName = if contextType == RecommendationContextType.Contacts then mergeTable.displayName else nil

	return Recommendation.new(llama.Dictionary.join(mergeTable, {
		id = mergeTable.id,
		entityId = entityId,
		contextType = contextType,
		mutualFriendsCount = mutualFriendsCount,
		contactId = contactId,
		thumbnailEntities = mergeTable.thumbnailEntities,
		entityDisplayName = entityDisplayName
	}))
end

return Recommendation
