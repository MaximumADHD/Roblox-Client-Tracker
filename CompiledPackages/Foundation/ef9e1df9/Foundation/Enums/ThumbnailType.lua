--[[
	Supported thumbnails for rbxthumb protocol.
	Upstream: https://create.roblox.com/docs/projects/assets#rbxthumb
]]
export type ThumbnailType =
	"Asset"
	| "Avatar"
	| "AvatarBust"
	| "AvatarHeadShot"
	| "BadgeIcon"
	| "BundleThumbnail"
	| "FontFamily"
	| "GameIcon"
	| "GameThumbnail"
	| "GamePass"
	| "GroupIcon"
	| "Outfit"

local ThumbnailTypeEnum = {
	-- ID for a 2D or 3D asset
	Asset = "Asset" :: "Asset",
	-- ID for a Roblox user (Player.UserId)
	Avatar = "Avatar" :: "Avatar",
	-- ID for a Roblox user (Player.UserId)
	AvatarBust = "AvatarBust" :: "AvatarBust",
	-- ID for a Roblox user (Player.UserId)
	AvatarHeadShot = "AvatarHeadShot" :: "AvatarHeadShot",
	-- ID for a badge
	BadgeIcon = "BadgeIcon" :: "BadgeIcon",
	-- ID for a Marketplace bundle such as a character, head, or shoes
	BundleThumbnail = "BundleThumbnail" :: "BundleThumbnail",
	-- ID for a font in the Creator Store or Toolbox inventory
	FontFamily = "FontFamily" :: "FontFamily",
	-- ID for an experience (DataModel.GameId); shows the experience's icon
	GameIcon = "GameIcon" :: "GameIcon",
	-- ID for a pass
	GamePass = "GamePass" :: "GamePass",
	-- ID for an experience (DataModel.GameId); shows the experience's primary thumbnail
	GameThumbnail = "GameThumbnail" :: "GameThumbnail",
	-- ID for a group
	GroupIcon = "GroupIcon" :: "GroupIcon",
	-- ID gathered from an OutfitPages table
	Outfit = "Outfit" :: "Outfit",
}

return ThumbnailTypeEnum
