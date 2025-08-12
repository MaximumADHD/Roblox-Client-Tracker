local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Constants = require(Foundation.Constants)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local Types = require(Foundation.Components.Types)
local useTokens = require(Foundation.Providers.Style.useTokens)

local useDialogLayout = require(script.Parent.Parent.useDialogLayout)
local useDialogVariants = require(script.Parent.Parent.useDialogVariants).useDialogVariants

type Bindable<T> = Types.Bindable<T>

export type DialogTitleProps = {
	text: string,
}

local function DialogTitle(props: DialogTitleProps)
	local tokens = useTokens()
	local layout = useDialogLayout()
	local variants = useDialogVariants()

	return React.createElement(View, {
		tag = variants.title.tag,
		LayoutOrder = Constants.MIN_LAYOUT_ORDER + 1, -- Ensure Title goes 2nd after HeroMedia
		padding = {
			right = if layout.hasHeroMedia
				then nil
				else UDim.new(0, variants.closeAffordance.offset + tokens.Size.Size_1000),
			top = if layout.hasHeroMedia then nil else UDim.new(0, tokens.Size.Size_500),
		},
		testId = "--foundation-dialog-title",
	}, {
		Title = React.createElement(Text, {
			tag = variants.titleText.tag,
			Text = props.text,
		}),
	})
end

return DialogTitle
