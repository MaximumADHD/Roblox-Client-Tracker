local ThumbnailType = require(script.Parent.ThumbnailType)
type ThumbnailType = ThumbnailType.ThumbnailType

-- We leave the door open here for adding other media types in the future
-- and keep the concepts of ThumbnailType and MediaType separate.
export type MediaType = ThumbnailType -- | "Video"

local MediaTypeEnum = ThumbnailType
--[[
local MediaTypeEnum = Dash.join(ThumbnailType, {
	Video = "Video" :: "Video",
})
]]

return MediaTypeEnum
