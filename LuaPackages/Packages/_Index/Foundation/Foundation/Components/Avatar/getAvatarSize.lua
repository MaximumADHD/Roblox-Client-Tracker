local Foundation = script:FindFirstAncestor("Foundation")

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local function getAvatarSize(tokens: Tokens, size: InputSize, isIconSize: boolean): number
	if isIconSize then
		return ({
			[InputSize.XSmall :: InputSize] = tokens.Size.Size_300,
			[InputSize.Small] = tokens.Size.Size_400,
			[InputSize.Medium] = tokens.Size.Size_500,
			[InputSize.Large] = tokens.Size.Size_600,
		})[size]
	else
		return ({
			[InputSize.XSmall :: InputSize] = tokens.Size.Size_600,
			[InputSize.Small] = tokens.Size.Size_800,
			[InputSize.Medium] = tokens.Size.Size_1000,
			[InputSize.Large] = tokens.Size.Size_1200,
		})[size]
	end
end

return getAvatarSize
