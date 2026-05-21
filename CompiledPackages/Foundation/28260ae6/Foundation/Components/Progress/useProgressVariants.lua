local Foundation = script:FindFirstAncestor("Foundation")

local ProgressSize = require(Foundation.Enums.ProgressSize)
type ProgressSize = ProgressSize.ProgressSize

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

local function variantsFactory(tokens: Tokens)
	local sizes: { [ProgressSize]: VariantProps } = {
		[ProgressSize.Small] = {
			bar = {
				height = tokens.Size.Size_50,
			},
			circle = {
				size = tokens.Size.Size_400,
			},
		},
		[ProgressSize.Medium] = {
			bar = {
				height = tokens.Size.Size_100,
			},
			circle = {
				size = tokens.Size.Size_800,
			},
		},
		[ProgressSize.Large] = {
			bar = {
				height = tokens.Size.Size_150,
			},
			circle = {
				size = tokens.Size.Size_1300,
				labelFont = tokens.Typography.LabelMedium,
			},
		},
	}

	return { sizes = sizes }
end

return function(tokens: Tokens, size: ProgressSize)
	local props = VariantsContext.useVariants("Progress", variantsFactory, tokens)
	return composeStyleVariant(props.sizes[size])
end
