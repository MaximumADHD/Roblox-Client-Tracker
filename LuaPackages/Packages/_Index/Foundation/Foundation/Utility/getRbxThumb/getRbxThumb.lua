local Foundation = script:FindFirstAncestor("Foundation")

local ThumbnailType = require(Foundation.Enums.ThumbnailType)
type ThumbnailType = ThumbnailType.ThumbnailType

local ThumbnailSize = require(Foundation.Enums.ThumbnailSize)
type ThumbnailSize = ThumbnailSize.ThumbnailSize

local getAssetIdAsNumeric = require(Foundation.Utility.getAssetIdAsNumeric)

type AssetId = string | number

--[[
	Type definitions for getRbxThumb function with precise size constraints for each thumbnail type.
	Each thumbnail type only accepts specific sizes as defined in the rbxthumb protocol.
]]
type AssetRbxThumb = (
	type: typeof(ThumbnailType.Asset),
	id: AssetId,
	size: (typeof(ThumbnailSize.Medium) | typeof(ThumbnailSize.Large))?
) -> string

type AvatarRbxThumb = (
	type: typeof(ThumbnailType.Avatar),
	id: AssetId,
	size: (
		typeof(ThumbnailSize.Small)
		| typeof(ThumbnailSize.Medium)
		| typeof(ThumbnailSize.Large)
		| typeof(ThumbnailSize.XLarge)
	)?
) -> string

type AvatarBustRbxThumb = (
	type: typeof(ThumbnailType.AvatarBust),
	id: AssetId,
	size: (
		typeof(ThumbnailSize.Small)
		| typeof(ThumbnailSize.Medium)
		| typeof(ThumbnailSize.Large)
		| typeof(ThumbnailSize.XLarge)
	)?
) -> string

type AvatarHeadShotRbxThumb = (
	type: typeof(ThumbnailType.AvatarHeadShot),
	id: AssetId,
	size: (
		typeof(ThumbnailSize.Small)
		| typeof(ThumbnailSize.Medium)
		| typeof(ThumbnailSize.Large)
		| typeof(ThumbnailSize.XLarge)
	)?
) -> string

type BadgeIconRbxThumb = (
	type: typeof(ThumbnailType.BadgeIcon),
	id: AssetId,
	size: typeof(ThumbnailSize.Medium)?
) -> string

type BundleThumbnailRbxThumb = (
	type: typeof(ThumbnailType.BundleThumbnail),
	id: AssetId,
	size: (typeof(ThumbnailSize.Medium) | typeof(ThumbnailSize.Large))?
) -> string

type FontFamilyRbxThumb = (
	type: typeof(ThumbnailType.FontFamily),
	id: AssetId,
	size: typeof(ThumbnailSize.Medium)?
) -> string

type GameIconRbxThumb = (
	type: typeof(ThumbnailType.GameIcon),
	id: AssetId,
	size: (typeof(ThumbnailSize.Small) | typeof(ThumbnailSize.Medium))?
) -> string

type GamePassRbxThumb = (
	type: typeof(ThumbnailType.GamePass),
	id: AssetId,
	size: typeof(ThumbnailSize.Medium)?
) -> string

type GameThumbnailRbxThumb = (
	type: typeof(ThumbnailType.GameThumbnail),
	id: AssetId,
	size: (
		typeof(ThumbnailSize.Small)
		| typeof(ThumbnailSize.Medium)
		| typeof(ThumbnailSize.Large)
		| typeof(ThumbnailSize.XLarge)
	)?
) -> string

type GroupIconRbxThumb = (
	type: typeof(ThumbnailType.GroupIcon),
	id: AssetId,
	size: (typeof(ThumbnailSize.Medium) | typeof(ThumbnailSize.Large))?
) -> string

type OutfitRbxThumb = (
	type: typeof(ThumbnailType.Outfit),
	id: AssetId,
	size: (typeof(ThumbnailSize.Medium) | typeof(ThumbnailSize.Large))?
) -> string

type GetRbxThumb =
	AssetRbxThumb
	& AvatarRbxThumb
	& AvatarBustRbxThumb
	& AvatarHeadShotRbxThumb
	& BadgeIconRbxThumb
	& BundleThumbnailRbxThumb
	& FontFamilyRbxThumb
	& GameIconRbxThumb
	& GamePassRbxThumb
	& GameThumbnailRbxThumb
	& GroupIconRbxThumb
	& OutfitRbxThumb

--[[
	Maps thumbnail types to their supported sizes and dimensions.
	Each size maps to the actual pixel dimensions for that thumbnail type.
]]
local SIZE_TO_DIMENSIONS: { [ThumbnailType]: { [ThumbnailSize]: Vector2 } } = {
	[ThumbnailType.Asset] = {
		[ThumbnailSize.Medium] = Vector2.new(150, 150),
		[ThumbnailSize.Large] = Vector2.new(420, 420),
	},
	[ThumbnailType.Avatar] = {
		[ThumbnailSize.Small] = Vector2.new(48, 48),
		[ThumbnailSize.Medium] = Vector2.new(150, 150),
		[ThumbnailSize.Large] = Vector2.new(420, 420),
		[ThumbnailSize.XLarge] = Vector2.new(720, 720),
	},
	[ThumbnailType.AvatarBust] = {
		[ThumbnailSize.Small] = Vector2.new(50, 50),
		[ThumbnailSize.Medium] = Vector2.new(150, 150),
		[ThumbnailSize.Large] = Vector2.new(420, 420),
	},
	[ThumbnailType.AvatarHeadShot] = {
		[ThumbnailSize.Small] = Vector2.new(48, 48),
		[ThumbnailSize.Medium] = Vector2.new(150, 150),
		[ThumbnailSize.Large] = Vector2.new(420, 420),
	},
	[ThumbnailType.BadgeIcon] = {
		[ThumbnailSize.Medium] = Vector2.new(150, 150),
	},
	[ThumbnailType.BundleThumbnail] = {
		[ThumbnailSize.Medium] = Vector2.new(150, 150),
		[ThumbnailSize.Large] = Vector2.new(420, 420),
	},
	[ThumbnailType.FontFamily] = {
		[ThumbnailSize.Medium] = Vector2.new(1200, 80),
	},
	[ThumbnailType.GameIcon] = {
		[ThumbnailSize.Small] = Vector2.new(50, 50),
		[ThumbnailSize.Medium] = Vector2.new(150, 150),
	},
	[ThumbnailType.GamePass] = {
		[ThumbnailSize.Medium] = Vector2.new(150, 150),
	},
	[ThumbnailType.GameThumbnail] = {
		[ThumbnailSize.Small] = Vector2.new(256, 144),
		[ThumbnailSize.Medium] = Vector2.new(384, 216),
		[ThumbnailSize.Large] = Vector2.new(480, 270),
		[ThumbnailSize.XLarge] = Vector2.new(768, 432),
	},
	[ThumbnailType.GroupIcon] = {
		[ThumbnailSize.Medium] = Vector2.new(150, 150),
		[ThumbnailSize.Large] = Vector2.new(420, 420),
	},
	[ThumbnailType.Outfit] = {
		[ThumbnailSize.Medium] = Vector2.new(150, 150),
		[ThumbnailSize.Large] = Vector2.new(420, 420),
	},
}

--[[
	Generates a rbxthumb URL for the given thumbnail type, ID, and size.
	@param type The type of thumbnail to generate
	@param id The ID of the asset/user/experience to generate a thumbnail for
	@param size The size of the thumbnail to generate (defaults to Medium)
	@return A rbxthumb URL string
]]
local getRbxThumb: GetRbxThumb = function(type: ThumbnailType, id: AssetId, size: ThumbnailSize?): string
	local dimensions = SIZE_TO_DIMENSIONS[type][size or ThumbnailSize.Medium]

	local assetId = getAssetIdAsNumeric(id)

	if not dimensions then
		warn(`Unsupported size {size} for media type: {type}, defaulting to {ThumbnailSize.Medium}`)
		dimensions = SIZE_TO_DIMENSIONS[type][ThumbnailSize.Medium]
	end

	return `rbxthumb://type={type}&id={assetId}&w={dimensions.X}&h={dimensions.Y}`
end

return getRbxThumb
