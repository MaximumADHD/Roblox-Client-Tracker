local Foundation = script:FindFirstAncestor("Foundation")

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local function getAvatarSize(tokens: Tokens, size: InputSize)
	return ({
		[InputSize.XSmall :: InputSize] = tokens.Size.Size_600,
		[InputSize.Small] = tokens.Size.Size_800,
		[InputSize.Medium] = tokens.Size.Size_1000,
		[InputSize.Large] = tokens.Size.Size_1200,
	})[size]
end

return getAvatarSize
