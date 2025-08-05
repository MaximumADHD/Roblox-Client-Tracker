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
	dialogBackdrop: {
		backgroundStyle: ColorStyleValue,
	},
	dialogShadow: {
		imageStyle: ColorStyleValue,
	},
	dialogContainer: {
		tag: string,
	},
	dialogInner: {
		tag: string,
		maxWidth: number,
	},
	dialogBody: {
		tag: string,
		maxWidth: number,
	},
	dialogCloseAffordance: {
		offset: number,
	},
	dialogHeroMediaWrapper: {
		tag: string,
	},
	dialogHeroMedia: {
		tag: string,
		offsetX: number,
	},
	dialogTitle: {
		tag: string,
	},
	dialogTitleText: {
		tag: string,
	},
	dialogContent: {
		tag: string,
	},
	dialogContentText: {
		tag: string,
	},
	dialogActionsLabel: {
		tag: string,
	},
}

local DIALOG_SIZES: { [DialogSize]: number } = {
	[DialogSize.Small] = 320,
	[DialogSize.Medium] = 480,
	[DialogSize.Large] = 640,
}

local function variantsFactory(tokens: Tokens)
	local common = {
		dialogBackdrop = {
			backgroundStyle = tokens.Color.OverMedia.OverMedia_200,
		},
		dialogShadow = {
			imageStyle = tokens.Color.Extended.Black.Black_15,
		},
		dialogContainer = {
			tag = "size-full-full col align-x-center align-y-center",
		},
		dialogInner = {
			tag = "size-full-0 auto-y shrink-1 bg-surface-100 clip",
		},
		dialogBody = {
			tag = "size-full auto-y col padding-bottom-xlarge",
		},
		dialogHeroMediaWrapper = {
			tag = "auto-y size-full-0 position-top-center",
		},
		dialogTitle = {
			tag = "size-full-0 auto-y",
		},
		dialogTitleText = {
			tag = "size-full-0 auto-y content-emphasized text-wrap text-align-x-left",
		},
		dialogContent = {
			tag = "auto-y size-full fill",
		},
		dialogContentText = {
			tag = "text-wrap text-align-x-left text-align-y-top auto-y size-full-0",
		},
		dialogActionsLabel = {
			tag = "text-align-x-left text-wrap text-align-y-top auto-y size-full-0",
		},
	}

	local size: { [DialogSize]: VariantProps } = {
		[DialogSize.Small] = {
			dialogContainer = {
				tag = "padding-large",
			},
			dialogInner = {
				maxWidth = DIALOG_SIZES[DialogSize.Small],
				tag = "radius-medium",
			},
			dialogBody = {
				tag = "padding-x-large gap-large",
			},
			dialogCloseAffordance = {
				offset = tokens.Size.Size_300,
			},
			dialogHeroMedia = {
				tag = "radius-medium",
				offsetX = tokens.Padding.Large,
			},
			dialogTitleText = {
				tag = "text-heading-small",
			},
			dialogContentText = {
				tag = "text-body-medium",
			},
			dialogActionsLabel = {
				tag = "text-label-small",
			},
		},
		[DialogSize.Medium] = {
			dialogContainer = {
				tag = "padding-xlarge",
			},
			dialogInner = {
				maxWidth = DIALOG_SIZES[DialogSize.Medium],
				tag = "radius-large",
			},
			dialogBody = {
				tag = "padding-x-xlarge gap-xlarge",
			},
			dialogCloseAffordance = {
				offset = tokens.Size.Size_400,
			},
			dialogHeroMedia = {
				tag = "radius-large",
				offsetX = tokens.Padding.XLarge,
			},
			dialogTitleText = {
				tag = "text-heading-medium",
			},
			dialogContentText = {
				tag = "text-body-medium",
			},
			dialogActionsLabel = {
				tag = "text-label-small",
			},
		},
		[DialogSize.Large] = {
			dialogContainer = {
				tag = "padding-xlarge",
			},
			dialogInner = {
				maxWidth = DIALOG_SIZES[DialogSize.Large],
				tag = "radius-large",
			},
			dialogBody = {
				tag = "padding-x-xlarge gap-xlarge",
			},
			dialogCloseAffordance = {
				offset = tokens.Size.Size_400,
			},
			dialogHeroMedia = {
				tag = "radius-large",
				offsetX = tokens.Padding.XLarge,
			},
			dialogTitleText = {
				tag = "text-heading-large",
			},
			dialogContentText = {
				tag = "text-body-large",
			},
			dialogActionsLabel = {
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
