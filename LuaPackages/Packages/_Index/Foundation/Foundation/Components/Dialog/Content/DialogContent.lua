local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
local ScrollView = require(Foundation.Components.ScrollView)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local useScrollBarPadding = require(script.Parent.useScrollBarPadding)
local useDialogVariants = require(script.Parent.Parent.useDialogVariants).useDialogVariants

export type DialogContentProps = {
	children: React.ReactNode,
} & Types.CommonProps

local function DialogContent(props: DialogContentProps)
	local scrollBarPadding, updateScrollBarPadding = useScrollBarPadding()
	local variants = useDialogVariants()

	return React.createElement(
		ScrollView,
		withCommonProps(props, {
			scroll = {
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				CanvasSize = UDim2.new(0, 0, 0, 0),
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
