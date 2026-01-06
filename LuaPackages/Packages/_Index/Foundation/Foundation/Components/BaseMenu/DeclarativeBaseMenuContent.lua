local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Types = require(Foundation.Components.Types)
type ItemId = Types.ItemId
type OnItemActivated = Types.OnItemActivated

local BaseMenuItem = require(script.Parent.BaseMenuItem)
local BaseMenuGroup = require(script.Parent.BaseMenuGroup)

export type BaseMenuItem = {
	id: ItemId,
	icon: string?,
	isDisabled: boolean?,
	isChecked: boolean?,
	text: string,
	onActivated: OnItemActivated?,
}

export type BaseMenuItemGroup<Item = BaseMenuItem> = {
	title: string?,
	items: { Item },
}

export type BaseMenuItems<Item = BaseMenuItem> = { Item } | { BaseMenuItemGroup<Item> }

type DeclarativeBaseMenuContentProps<Item = BaseMenuItem> = {
	items: BaseMenuItems<Item>,
}

local function DeclarativeBaseMenuContent(props: DeclarativeBaseMenuContentProps)
	local items: { BaseMenuItemGroup } = React.useMemo(function()
		if Dash.get(props.items :: { BaseMenuItemGroup }, { 1, "items" } :: { unknown }) then
			return props.items :: { BaseMenuItemGroup }
		else
			return { { items = props.items :: { BaseMenuItem } } }
		end
	end, { props.items })

	return React.createElement(
		React.Fragment,
		nil,
		Dash.map(items, function(group, groupIndex: number)
			return React.createElement(
				BaseMenuGroup,
				{
					key = groupIndex,
					LayoutOrder = groupIndex,
					title = group.title,
				},
				Dash.map(group.items, function(item, index)
					return React.createElement(BaseMenuItem, {
						LayoutOrder = index,
						key = item.id,
						icon = item.icon,
						isChecked = item.isChecked,
						isDisabled = item.isDisabled,
						text = item.text,
						onActivated = item.onActivated,
						id = item.id,
						testId = "--foundation-menu-item",
					})
				end)
			)
		end)
	)
end

return React.memo(DeclarativeBaseMenuContent)
