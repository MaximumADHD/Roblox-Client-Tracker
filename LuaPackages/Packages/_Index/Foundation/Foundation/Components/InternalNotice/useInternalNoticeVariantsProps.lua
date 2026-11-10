local Foundation = script:FindFirstAncestor("Foundation")

local IconSize = require(Foundation.Enums.IconSize)
local InputSize = require(Foundation.Enums.InputSize)
local Types = require(Foundation.Components.Types)
local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)

type ColorStyle = Types.ColorStyle
type ColorStyleValue = Types.ColorStyleValue
type IconSize = IconSize.IconSize
type InputSize = InputSize.InputSize
type Padding = Types.Padding
type VariantProps = composeStyleVariant.VariantProps
type SlotProps = { [string]: any }

export type InternalNoticeVariantProps = {
	container: {
		tag: string?,
		backgroundStyle: ColorStyleValue?,
	}?,
	content: {
		gap: string,
		tag: string?,
		padding: Padding?,
	},
	-- Icon-to-message gap; also the content-row gap when stacked (leading is unmounted).
	leading: {
		gap: string,
		tag: string?,
	},
	stack: {
		gap: string,
		tag: string?,
	},
	icon: {
		style: ColorStyle,
		size: IconSize,
	},
	message: {
		tag: string,
		padding: Padding?,
	},
	link: {
		tag: string,
		padding: Padding?,
		size: InputSize?,
	},
	linkContainer: {
		tag: string,
	}?,
	border: {
		Size: UDim2,
		backgroundStyle: ColorStyleValue,
	}?,
}

-- Structure is fixed here; consumers vary gaps, icon-slot height, and typography.
local textAlign: SlotProps = { tag = "text-align-x-left" }
local common: VariantProps = {
	container = { tag = "col size-full-0 auto-y" },
	content = { tag = "row align-y-top size-full-0 auto-y" },
	leading = { tag = "row align-y-top fill auto-y" },
	stack = { tag = "col fill auto-y" },
	message = textAlign,
	link = textAlign,
}

local fullWidth: SlotProps = { tag = "size-full-0 auto-y" }
local stacked: { [boolean]: VariantProps } = {
	[false] = {
		message = { tag = "fill auto-y" },
		link = { tag = "auto-xy" },
		linkContainer = { tag = "auto-xy" },
	},
	[true] = {
		message = fullWidth,
		-- First-line padding aligns the inline link with the icon slot; stacked, drop it.
		link = {
			tag = fullWidth.tag,
			padding = {},
		},
		linkContainer = fullWidth,
	},
}

local function useInternalNoticeVariantsProps(
	variantProps: InternalNoticeVariantProps,
	isStacked: boolean,
	isTruncated: boolean
): InternalNoticeVariantProps
	local overflow: SlotProps = { tag = if isTruncated then "text-truncate-end" else "text-wrap" }
	-- `gap` stays a separate field so stacked content can take leading's gap without merging both.
	local leadingGap: SlotProps = { tag = variantProps.leading.gap }
	local stackGap: SlotProps = { tag = variantProps.stack.gap }
	local gaps: VariantProps = if isStacked
		then {
			content = leadingGap,
			stack = stackGap,
		}
		else {
			content = { tag = variantProps.content.gap },
			leading = leadingGap,
			stack = stackGap,
		}

	return composeStyleVariant(
			common,
			variantProps :: VariantProps,
			gaps,
			stacked[isStacked],
			{
				message = overflow,
				link = overflow,
			}
		) :: InternalNoticeVariantProps
end

return useInternalNoticeVariantsProps
