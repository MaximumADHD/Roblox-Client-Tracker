local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local ScrollView = require(Foundation.Components.ScrollView)
local Types = require(Foundation.Components.Types)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local useScrollBarPadding = require(script.Parent.useScrollBarPadding)
local useDialogVariants = require(script.Parent.Parent.useDialogVariants).useDialogVariants
local useDialog = require(script.Parent.Parent.useDialog)

export type DialogContentProps = {
	children: React.ReactNode,
} & Types.CommonProps & Types.SelectionProps

local function DialogContent(props: DialogContentProps)
	local hasOverflowY, scrollBarPadding, updateScrollBarPadding = useScrollBarPadding()
	local variants = useDialogVariants()
	local dialogContext = useDialog()

	props.testId = `{dialogContext.testId}--content`

	local isSelectableEnabled = if props.Selectable == nil then true else props.Selectable
	local selectable = isSelectableEnabled and hasOverflowY

	return React.createElement(
		ScrollView,
		withCommonProps(props, {
			scroll = {
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				CanvasSize = UDim2.new(0, 0, 0, 0),
			},
			selection = {
				Selectable = selectable,
				NextSelectionUp = props.NextSelectionUp,
				NextSelectionDown = props.NextSelectionDown,
				NextSelectionLeft = props.NextSelectionLeft,
				NextSelectionRight = props.NextSelectionRight,
			},
			onAbsoluteCanvasSizeChanged = updateScrollBarPadding,
			onAbsoluteWindowSizeChanged = updateScrollBarPadding,
			tag = variants.content.tag,
		}),
		{
			ScrollPadding = React.createElement("UIPadding", {
				PaddingRight = UDim.new(0, scrollBarPadding),
			}),
			ScrollContent = React.createElement(React.Fragment, nil, props.children),
		}
	)
end

return DialogContent
