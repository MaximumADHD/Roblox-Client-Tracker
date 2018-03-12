local ThumbnailModel = {}

function ThumbnailModel.new()
	local self = {}

	return self
end

function ThumbnailModel.mock()
	local self = ThumbnailModel.new()

	self.image = "imageToken"
	self.width = 0
	self.height = 0

	return self
end

function ThumbnailModel.fromWeb(data)
	local self = {}
	self.image = data or ""

	return self
end

return ThumbnailModel