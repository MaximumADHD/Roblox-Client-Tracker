local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)

local Types = require(Foundation.Components.Types)
type ItemId = Types.ItemId
type OnItemActivated = Types.OnItemActivated

local BaseMenuGroup = require(script.Parent.BaseMenuGroup)
local BaseMenuItem = require(script.Parent.BaseMenuItem)

export type BaseMenuItemGroup<Item> = {
	title: string?,
	items: { Item },
}

export type BaseMenuItem = {
	id: ItemId,
	icon: string?,
	isDisabled: boolean?,
	isChecked: boolean?,
	text: string,
	onActivated: OnItemActivated?,
	items: { BaseMenuItem | BaseMenuItemGroup<BaseMenuItem> }?,
	ref: React.Ref<GuiObject>?,
}

export type BaseMenuItems<Item = BaseMenuItem> = { Item } | { BaseMenuItemGroup<Item> }

type DeclarativeBaseMenuContentProps<Item = BaseMenuItem> = {
	items: BaseMenuItems<Item>,
}

local function DeclarativeBaseMenuContent(props: DeclarativeBaseMenuContentProps)
	local items: { BaseMenuItemGroup<BaseMenuItem> } = React.useMemo(function()
		-- Distinguish between flat items and grouped items:
		-- BaseMenuItemGroup has `items` but no `id`; BaseMenuItem has `id` (and may have `items` for submenus)
		local firstHasItems = Dash.get(props.items, { 1, "items" })
		local firstHasId = if Flags.FoundationBaseMenuSubmenuSupport then Dash.get(props.items, { 1, "id" }) else nil

		if firstHasItems and not firstHasId then
			return props.items :: { BaseMenuItemGroup<BaseMenuItem> }
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
					return React.createElement(
						BaseMenuItem,
						{
							LayoutOrder = index,
							key = item.id,
							icon = item.icon,
							isChecked = item.isChecked,
							isDisabled = item.isDisabled,
							text = item.text,
							onActivated = item.onActivated,
							id = item.id,
							testId = if item.items then "--foundation-menu-submenu-item" else "--foundation-menu-item",
							ref = item.ref,
						},
						if Flags.FoundationBaseMenuSubmenuSupport and item.items
							then React.createElement(DeclarativeBaseMenuContent, {
								items = item.items,
							})
							else nil
					)
				end)
			)
		end)
	)
end

return React.memo(DeclarativeBaseMenuContent)
