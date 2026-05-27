local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local DialogSize = require(Foundation.Enums.DialogSize)
type DialogSize = DialogSize.DialogSize

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local Flags = require(Foundation.Utility.Flags)

local useTokens = require(Foundation.Providers.Style.useTokens)

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

local useDialog = require(script.Parent.useDialog)

type DialogVariantProps = {
	backdrop: { backgroundStyle: ColorStyleValue },
	shadow: { imageStyle: ColorStyleValue, tag: string },
	container: { tag: string },
	inner: { tag: string, maxWidth: number },
	body: { tag: string, maxWidth: number },
	closeAffordance: { offset: number },
	heroMediaWrapper: { tag: string | { [string]: boolean } },
	heroMedia: { tag: string, offsetX: number },
	title: { tag: string },
	titleText: { tag: string },
	content: { tag: string },
	contentText: { tag: string },
	actionsLabel: { tag: string | { [string]: boolean } },
}

local DIALOG_SIZES: { [DialogSize]: number } = {
	[DialogSize.Small] = 320,
	[DialogSize.Medium] = 480,
	[DialogSize.Large] = 640,
}

local function variantsFactory(tokens: Tokens)
	local common = {
		-- TODO: remove backdrop when FoundationDialogAnimation is cleaned up
		backdrop = {
			backgroundStyle = tokens.Color.Common.Backdrop,
		},
		shadow = {
			tag = "auto-xy",
			imageStyle = tokens.Color.Extended.Black.Black_15,
		},
		container = {
			tag = "col align-x-center align-y-center size-full-full",
		},
		inner = {
			tag = "shrink-1 size-full-0 auto-y clip bg-surface-100",
		},
		body = {
			tag = "col size-full auto-y padding-bottom-xlarge",
		},
		heroMediaWrapper = {
			tag = "shrink position-top-center size-full-full auto-y",
		},
		title = {
			tag = "size-full-0 auto-y",
		},
		titleText = {
			tag = `size-full-0 auto-y text-wrap text-align-x-left {if Flags.FoundationDialogTitleEmphasisFix
				then "content-emphasis"
				else "content-emphasized"}`,
		},
		content = {
			tag = "fill size-full auto-y",
		},
		contentText = {
			tag = "size-full-0 auto-y text-wrap text-align-x-left text-align-y-top",
		},
		actionsLabel = {
			tag = "size-full-0 auto-y text-body-small text-wrap text-align-x-left text-align-y-top",
		},
	}

	local size: { [DialogSize]: VariantProps } = {
		[DialogSize.Small] = {
			shadow = {
				tag = "padding-large",
			},
			inner = {
				maxWidth = DIALOG_SIZES[DialogSize.Small],
				tag = "radius-medium",
			},
			body = {
				tag = "gap-large padding-x-large",
			},
			closeAffordance = {
				offset = tokens.Size.Size_300,
			},
			heroMedia = {
				tag = "radius-medium",
				offsetX = tokens.Padding.Large,
			},
			titleText = {
				tag = "text-heading-small",
			},
			contentText = {
				tag = "text-body-medium",
			},
			actionsLabel = {
				tag = "padding-top-large",
			},
		},
		[DialogSize.Medium] = {
			shadow = {
				tag = "padding-xlarge",
			},
			inner = {
				maxWidth = DIALOG_SIZES[DialogSize.Medium],
				tag = "radius-large",
			},
			body = {
				tag = "gap-xlarge padding-x-xlarge",
			},
			closeAffordance = {
				offset = tokens.Size.Size_400,
			},
			heroMedia = {
				tag = "radius-large",
				offsetX = tokens.Padding.XLarge,
			},
			titleText = {
				tag = "text-heading-medium",
			},
			contentText = {
				tag = "text-body-medium",
			},
			actionsLabel = {
				tag = "padding-top-xlarge",
			},
		},
		[DialogSize.Large] = {
			shadow = {
				tag = "padding-xlarge",
			},
			inner = {
				maxWidth = DIALOG_SIZES[DialogSize.Large],
				tag = "radius-large",
			},
			body = {
				tag = "gap-xlarge padding-x-xlarge",
			},
			closeAffordance = {
				offset = tokens.Size.Size_400,
			},
			heroMedia = {
				tag = "radius-large",
				offsetX = tokens.Padding.XLarge,
			},
			titleText = {
				tag = "text-heading-large",
			},
			contentText = {
				tag = "text-body-large",
			},
			actionsLabel = {
				tag = "padding-top-xlarge",
			},
		},
	}

	return {
		common = common,
		size = size,
	}
end

function useDialogVariants(): DialogVariantProps
	local tokens = useTokens()
	local props = VariantsContext.useVariants("Dialog", variantsFactory, tokens)
	local dialog = useDialog()

	return composeStyleVariant(props.common, props.size[dialog.responsiveSize])
end

return {
	useDialogVariants = useDialogVariants,
	DIALOG_SIZES = DIALOG_SIZES,
}
