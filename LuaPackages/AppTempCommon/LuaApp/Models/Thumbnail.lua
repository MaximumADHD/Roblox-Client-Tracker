--[[
	{
		universeId : string,
		state : string,
		url : string,
	}
]]

local Thumbnail = {}

function Thumbnail.new()
	local self = {}

	return self
end

function Thumbnail.fromThumbnailData(thumbnailData, size)
	local self = Thumbnail.new()

	self.universeId = tostring(thumbnailData.targetId)
	self.state = thumbnailData.state
	self.url = thumbnailData.imageUrl
	self.size = size

	return self
end

function Thumbnail.isCompleteThumbnailData(thumbnailData)
	return type(thumbnailData) == "table"
		and type(thumbnailData.targetId) == "number"
		and type(thumbnailData.state) == "string"
		and (type(thumbnailData.imageUrl) == "string" or thumbnailData.imageUrl == nil)
end

function Thumbnail.checkStateIsFinal(thumbnailState)
	return thumbnailState ~= "Pending"
end

return Thumbnail