--[[
	{
		universeId : string,
		state : string,
		url : string,
	}
]]
local CorePackages = game:GetService("CorePackages")
local UseNewThumbnailsAPI = require(CorePackages.AppTempCommon.LuaApp.Flags.UseNewThumbnailsAPI)

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
	if UseNewThumbnailsAPI() then
		return type(thumbnailData) == "table"
			and type(thumbnailData.targetId) == "number"
			and type(thumbnailData.state) == "string"
			and (type(thumbnailData.imageUrl) == "string" or thumbnailData.imageUrl == nil)
	end

	return type(thumbnailData) == "table"
		and type(thumbnailData.targetId) == "number"
		and type(thumbnailData.state) == "string"
		and type(thumbnailData.imageUrl) == "string"
end

function Thumbnail.checkStateIsFinal(thumbnailState)
	if UseNewThumbnailsAPI() then
		return thumbnailState == "Completed" or thumbnailState == "Blocked"
	end

	return thumbnailState == "Completed"
end

return Thumbnail