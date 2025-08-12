local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)

local useDialogVariants = require(script.Parent.Parent.useDialogVariants).useDialogVariants

export type DialogTextProps = {
	Text: Types.Bindable<string>?,
	LayoutOrder: Types.Bindable<number>?,
}

local function DialogText(props: DialogTextProps)
	local variants = useDialogVariants()

	return React.createElement(Text, {
		Text = props.Text,
		RichText = true, -- This circumvents a bug with TextLabel where it doesn't update the size in scrollview
		tag = variants.contentText.tag,
		LayoutOrder = props.LayoutOrder,
	})
end

return DialogText
