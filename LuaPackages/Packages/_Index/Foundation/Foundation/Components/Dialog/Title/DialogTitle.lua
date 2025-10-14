local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Constants = require(Foundation.Constants)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local Types = require(Foundation.Components.Types)
local useTokens = require(Foundation.Providers.Style.useTokens)

local useDialog = require(script.Parent.Parent.useDialog)
local useDialogVariants = require(script.Parent.Parent.useDialogVariants).useDialogVariants
local getBottomSpacing = require(script.Parent.getBottomSpacing)

type Bindable<T> = Types.Bindable<T>

export type DialogTitleProps = {
	text: string,
}

local function DialogTitle(props: DialogTitleProps)
	local tokens = useTokens()
	local dialogContext = useDialog()
	local variants = useDialogVariants()

	return React.createElement(View, {
		tag = variants.title.tag,
		LayoutOrder = Constants.MIN_LAYOUT_ORDER + 1, -- Ensure Title goes 2nd after HeroMedia
		padding = {
			right = if dialogContext.hasHeroMedia
				then nil
				else UDim.new(0, variants.closeAffordance.offset + tokens.Size.Size_1000),
			top = if dialogContext.hasHeroMedia then nil else UDim.new(0, tokens.Size.Size_500),
			bottom = getBottomSpacing(tokens),
		},
		testId = `{dialogContext.testId}--title`,
	}, {
		Title = React.createElement(Text, {
			tag = variants.titleText.tag,
			Text = props.text,
		}),
	})
end

return DialogTitle
