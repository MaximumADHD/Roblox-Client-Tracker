local AssetInfo = {}
--[[
	Model for asset data.

	Structure
        Asset
            number Id : the asset id
            string Name : the asset name
            number TypeId : the assetType id
            table AssetGenres : a list of genres the asset belongs to
            bool IsEndorsed : whether or not teh asset is endorsed
            string Description : the asset description
            string Duration : the duration of an audio asset. Only audio assets have this field.
            string Created : the date in which the asset was created
            string Updated : the date in which the asset was updated

        Creator
            number Id : the creator id
            string Name : the creator name
            string Type : the creator type, such as User or Group

        ProductId
            number ProductId : the product id of the asset
            number Price : the price of the asset

        Thumbnail
            bool Final : whether or not the thumbnail has been finalized for retry purposes
            string Url : the thumbnail url
            string RetryUrl : the url to call for a retry
            number UserId : the userId
            string EndpointType : the type of endpoint

        Voting
            bool ShowVotes : whether or not to show votes
            number UpVotes : the number of upvotes
            number DownVotes : the number of downVotes
            bool CanVote : whether or not the user can vote
            string UserVote : the user's vote
            bool HasVoted : whethr or not the user voted
            string ReasonForNotVoteable :the reason why the user cannot vote
        }
]]
local FFlagToolboxUseNewPluginEndpoint = settings():GetFFlag("ToolboxUseNewPluginEndpoint")

AssetInfo.new = function()
	return {
		Asset = {},
	}
end

function AssetInfo.fromItemDetailsRequest(data)
    local result = AssetInfo.new()

    if data.asset then
        result.Asset = {
            Id = data.asset.id,
            Name = data.asset.name,
            TypeId = data.asset.typeId,
            AssetGenres = data.asset.assetGenres,
            IsEndorsed = data.asset.isEndorsed,
            Description = data.asset.description,
            Duration = data.asset.duration,
            Created = data.asset.createdUtc,
            Updated = data.asset.updatedUtc,
        }
    end

    if data.creator then
        result.Creator = {
            Id = data.creator.id,
            Name = data.creator.name,
            Type = data.creator.type,
        }
    end

    if FFlagToolboxUseNewPluginEndpoint and data.product then
        result.Product = {
            ProductId = data.product.productId,
            Price = data.product.price,
        }
    end

    if data.thumbnail then
        result.Thumbnail = {
            Final = data.thumbnail.final,
            Url = data.thumbnail.url,
            RetryUrl = data.thumbnail.retryUrl,
            UserId = data.thumbnail.userId,
            EndpointType = data.thumbnail.endpointType,
        }
    end

    if data.voting then
        result.Voting = {
            ShowVotes = data.voting.showVotes,
            UpVotes = data.voting.upVotes,
            DownVotes = data.voting.downVotes,
            CanVote = data.voting.canVote,
            UserVote = data.voting.userVote,
            HasVoted = data.voting.hasVoted,
            ReasonForNotVoteable = data.voting.reasonForNotVoteable,
        }
    end

    return result
end

AssetInfo.fromCreationsDetails = function(data, assetType, creatorName)
    local result = AssetInfo.new()

    result.Asset = {
        Description = data.description,
        Id = data.assetId,
        Name = data.name,
        TypeId = assetType and assetType.Value,
        AssetGenres = {},
        Status = data.status
    }

    result.Creator = {
        Id = data.creatorTargetId,
        Name = creatorName
    }

    return result
end

return AssetInfo