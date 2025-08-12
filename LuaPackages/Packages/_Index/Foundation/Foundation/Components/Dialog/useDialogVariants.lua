local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local DialogSize = require(Foundation.Enums.DialogSize)
type DialogSize = DialogSize.DialogSize

local composeStyleVariant = require(Foundation.Utility.composeStyleVariant)
type VariantProps = composeStyleVariant.VariantProps

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local useTokens = require(Foundation.Providers.Style.useTokens)

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

local useDialogLayout = require(script.Parent.useDialogLayout)

type DialogVariantProps = {
	backdrop: { backgroundStyle: ColorStyleValue },
	shadow: { imageStyle: ColorStyleValue },
	container: { tag: string },
	inner: { tag: string, maxWidth: number },
	body: { tag: string, maxWidth: number },
	closeAffordance: { offset: number },
	heroMediaWrapper: { tag: string },
	heroMedia: { tag: string, offsetX: number },
	title: { tag: string },
	titleText: { tag: string },
	content: { tag: string },
	contentText: { tag: string },
	actionsLabel: { tag: string },
}

local DIALOG_SIZES: { [DialogSize]: number } = {
	[DialogSize.Small] = 320,
	[DialogSize.Medium] = 480,
	[DialogSize.Large] = 640,
}

local function variantsFactory(tokens: Tokens)
	local common = {
		backdrop = {
			backgroundStyle = tokens.Color.OverMedia.OverMedia_200,
		},
		shadow = {
			imageStyle = tokens.Color.Extended.Black.Black_15,
		},
		container = {
			tag = "size-full-full col align-x-center align-y-center",
		},
		inner = {
			tag = "size-full-0 auto-y shrink-1 bg-surface-100 clip",
		},
		body = {
			tag = "size-full auto-y col padding-bottom-xlarge",
		},
		heroMediaWrapper = {
			tag = "auto-y size-full-full position-top-center",
		},
		title = {
			tag = "size-full-0 auto-y",
		},
		titleText = {
			tag = "size-full-0 auto-y content-emphasized text-wrap text-align-x-left",
		},
		content = {
			tag = "auto-y size-full fill",
		},
		contentText = {
			tag = "text-wrap text-align-x-left text-align-y-top auto-y size-full-0",
		},
		actionsLabel = {
			tag = "text-align-x-left text-wrap text-align-y-top auto-y size-full-0",
		},
	}

	local size: { [DialogSize]: VariantProps } = {
		[DialogSize.Small] = {
			container = {
				tag = "padding-large",
			},
			inner = {
				maxWidth = DIALOG_SIZES[DialogSize.Small],
				tag = "radius-medium",
			},
			body = {
				tag = "padding-x-large gap-large",
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
				tag = "text-label-small",
			},
		},
		[DialogSize.Medium] = {
			container = {
				tag = "padding-xlarge",
			},
			inner = {
				maxWidth = DIALOG_SIZES[DialogSize.Medium],
				tag = "radius-large",
			},
			body = {
				tag = "padding-x-xlarge gap-xlarge",
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
				tag = "text-label-small",
			},
		},
		[DialogSize.Large] = {
			container = {
				tag = "padding-xlarge",
			},
			inner = {
				maxWidth = DIALOG_SIZES[DialogSize.Large],
				tag = "radius-large",
			},
			body = {
				tag = "padding-x-xlarge gap-xlarge",
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
				tag = "text-label-small",
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
	local layout = useDialogLayout()

	return composeStyleVariant(props.common, props.size[layout.responsiveSize])
end

return {
	useDialogVariants = useDialogVariants,
	DIALOG_SIZES = DIALOG_SIZES,
}
