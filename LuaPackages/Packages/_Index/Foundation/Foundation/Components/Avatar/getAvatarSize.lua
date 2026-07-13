local Foundation = script:FindFirstAncestor("Foundation")

local AvatarSize = require(Foundation.Enums.AvatarSize)
type AvatarSize = AvatarSize.AvatarSize

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local function getAvatarSize(tokens: Tokens, size: AvatarSize, isIconSize: boolean): number
	if isIconSize then
		local iconSizes: { [AvatarSize]: number } = {
			[AvatarSize.XSmall] = tokens.Size.Size_300,
			[AvatarSize.Small] = tokens.Size.Size_400,
			[AvatarSize.Medium] = tokens.Size.Size_500,
			[AvatarSize.Large] = tokens.Size.Size_600,
			[AvatarSize.XLarge] = tokens.Size.Size_600,
		}
		return iconSizes[size]
	else
		local avatarSizes: { [AvatarSize]: number } = {
			[AvatarSize.XSmall] = tokens.Size.Size_600, -- Deprecated
			[AvatarSize.Small] = tokens.Size.Size_800,
			[AvatarSize.Medium] = tokens.Size.Size_1000,
			[AvatarSize.Large] = tokens.Size.Size_1200,
			[AvatarSize.XLarge] = tokens.Size.Size_1400,
			[AvatarSize.Pictogram] = tokens.Size.Size_2400,
		}
		return avatarSizes[size :: AvatarSize]
	end
end

return getAvatarSize
