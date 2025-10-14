local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local BaseMenuTitleItem = require(script.Parent.BaseMenuTitleItem)
local BaseMenuDivider = require(script.Parent.BaseMenuDivider)
local BaseMenuContext = require(script.Parent.BaseMenuContext)
type BaseMenuContextType = BaseMenuContext.BaseMenuContextType

local SIZE_TO_PADDING: { [any]: string } = {
	["XSmall"] = "padding-xsmall",
	["Small"] = "padding-small",
	["Medium"] = "padding-small",
	["Large"] = "padding-small",
}

export type BaseMenuGroupProps = {
	title: string?,
	children: React.ReactNode,
	LayoutOrder: number,
}

local function BaseMenuGroup(props: BaseMenuGroupProps)
	local context: BaseMenuContextType = React.useContext(BaseMenuContext)
	local groupIndex = props.LayoutOrder
	return React.createElement(React.Fragment, nil, {
		Divider = if groupIndex ~= 1
			then React.createElement(BaseMenuDivider, { LayoutOrder = groupIndex * 2 - 1 })
			else nil,
		Group = React.createElement(View, {
			LayoutOrder = groupIndex * 2,
			tag = `auto-y size-full-0 col gap-xxsmall {SIZE_TO_PADDING[context.size]}`,
		}, {
			Title = if props.title
				then React.createElement(BaseMenuTitleItem, { text = props.title, size = context.size })
				else nil,
			Items = React.createElement(React.Fragment, nil, props.children),
		}),
	})
end

return BaseMenuGroup
