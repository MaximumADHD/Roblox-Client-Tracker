local Foundation = script:FindFirstAncestor("Foundation")

local AccessoryType = require(Foundation.Enums.AccessoryType)
type AccessoryType = AccessoryType.AccessoryType

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

local function variantsFactory(tokens: Tokens)
	local accessorySize: { [AccessoryType]: { [InputSize]: number } } = {
		[AccessoryType.Icon] = {
			[InputSize.XSmall :: InputSize] = tokens.Size.Size_400,
			[InputSize.Small] = tokens.Size.Size_500,
			[InputSize.Medium] = tokens.Size.Size_600,
			[InputSize.Large] = tokens.Size.Size_600,
		},
		[AccessoryType.Media] = {
			[InputSize.XSmall :: InputSize] = tokens.Size.Size_600,
			[InputSize.Small] = tokens.Size.Size_800,
			[InputSize.Medium] = tokens.Size.Size_1000,
			[InputSize.Large] = tokens.Size.Size_1400,
		},
		[AccessoryType.Avatar] = {
			[InputSize.XSmall :: InputSize] = tokens.Size.Size_600,
			[InputSize.Small] = tokens.Size.Size_800,
			[InputSize.Medium] = tokens.Size.Size_1000,
			[InputSize.Large] = tokens.Size.Size_1400,
		},
	}

	local containerSize = {
		[InputSize.XSmall :: InputSize] = tokens.Size.Size_600,
		[InputSize.Small] = tokens.Size.Size_800,
		[InputSize.Medium] = tokens.Size.Size_1000,
		[InputSize.Large] = tokens.Size.Size_1400,
	}

	local cornerRadius = {
		[InputSize.XSmall :: InputSize] = tokens.Radius.Small,
		[InputSize.Small] = tokens.Radius.Medium,
		[InputSize.Medium] = tokens.Radius.Medium,
		[InputSize.Large] = tokens.Radius.Medium,
	}

	return {
		accessorySize = accessorySize,
		containerSize = containerSize,
		cornerRadius = cornerRadius,
	}
end

return function(tokens: Tokens, size: InputSize, accessoryType: AccessoryType)
	local props = VariantsContext.useVariants("ListAccessory", variantsFactory, tokens)

	return composeStyleVariant({
		accessory = {
			Size = UDim2.fromOffset(props.accessorySize[accessoryType][size], props.accessorySize[accessoryType][size]),
			cornerRadius = UDim.new(0, props.cornerRadius[size]),
		},
		container = {
			Size = UDim2.fromOffset(props.containerSize[size], props.containerSize[size]),
		},
	})
end
