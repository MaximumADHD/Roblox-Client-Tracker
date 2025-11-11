local Foundation = script:FindFirstAncestor("Foundation")

local Flags = require(Foundation.Utility.Flags)
local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
type Padding = Types.Padding

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

type InputVariantProps = {
	container: { tag: string, padding: UDim },
	input: { style: ColorStyleValue, stroke: {
		style: ColorStyleValue,
		thickness: number,
	} },
	label: { style: ColorStyleValue },
}

local function variantsFactory(tokens: Tokens)
	local strokeThickness = math.ceil(tokens.Stroke.Standard)
	local common = {
		container = {
			tag = "row auto-xy align-x-left align-y-center",
			padding = UDim.new(0, strokeThickness),
		},
		input = { stroke = { thickness = strokeThickness } },
	}

	local sizes: { [InputSize]: VariantProps }
	-- TODO: Remove sizes and move gap to common when we remove the flag FoundationInternalInputSelectedStylesAndSpacing
	if Flags.FoundationInternalInputSelectedStylesAndSpacing then
		sizes = {
			[InputSize.XSmall] = { container = { tag = "gap-medium" } },
			[InputSize.Small] = { container = { tag = "gap-medium" } },
			[InputSize.Medium] = { container = { tag = "gap-medium" } },
			[InputSize.Large] = { container = { tag = "gap-medium" } },
		}
	else
		sizes = {
			[InputSize.XSmall] = { container = { tag = "gap-small" } },
			[InputSize.Small] = { container = { tag = "gap-small" } },
			[InputSize.Medium] = { container = { tag = "gap-medium" } },
			[InputSize.Large] = { container = { tag = "gap-large" } },
		}
	end

	-- remove when Flags.FoundationToggleEndPlacementJustifyContent is removed
	local justifyContent: { [boolean]: VariantProps } = {
		[true] = { container = { tag = "flex-x-between size-full-0" } },
	}

	return { common = common, sizes = sizes, justifyContent = justifyContent }
end

return function(tokens: Tokens, size: InputSize, justifyContent: boolean?): InputVariantProps
	local props = VariantsContext.useVariants("InternalInput", variantsFactory, tokens)
	return composeStyleVariant(props.common, props.sizes[size], props.justifyContent[justifyContent or false])
end
