local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)

local useDialogVariants = require(script.Parent.Parent.useDialogVariants).useDialogVariants
local useDialog = require(script.Parent.Parent.useDialog)

export type DialogTextProps = {
	-- Body text. Drawn with dialog content typography, and rich text is always enabled.
	Text: Types.Bindable<string>?,
	-- **Engine**: Order of this text among dialog content siblings.
	LayoutOrder: Types.Bindable<number>?,
}

local function DialogText(props: DialogTextProps)
	local variants = useDialogVariants()
	local dialogContext = useDialog()

	return React.createElement(Text, {
		Text = props.Text,
		RichText = true, -- This circumvents a bug with TextLabel where it doesn't update the size in scrollview
		tag = variants.contentText.tag,
		LayoutOrder = props.LayoutOrder,
		testId = `{dialogContext.testId}--text`,
	})
end

return DialogText
