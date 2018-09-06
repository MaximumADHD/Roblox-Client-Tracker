local ThumbnailRequest = {}

function ThumbnailRequest.new()
	local self = {}

	return self
end

function ThumbnailRequest.fromData(thumbnailType, thumbnailSize)
	local self = ThumbnailRequest.new()

	self.thumbnailType = thumbnailType
	self.thumbnailSize = thumbnailSize

	return self
end

return ThumbnailRequest