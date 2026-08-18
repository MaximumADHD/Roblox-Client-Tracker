local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Types = require(Foundation.Components.Types)

type ItemId = Types.ItemId
type OnItemActivated = Types.OnItemActivated

local BaseMenuGroup = require(script.Parent.BaseMenuGroup)
local BaseMenuItem = require(script.Parent.BaseMenuItem)

export type LeadingAccessory = BaseMenuItem.LeadingAccessory
export type TrailingAccessory = BaseMenuItem.TrailingAccessory

export type BaseMenuItemGroup<Item> = {
	title: string?,
	items: { Item },
}

export type BaseMenuItem = {
	id: ItemId,
	icon: string?,
	leading: (string | LeadingAccessory)?,
	trailing: TrailingAccessory?,
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
		local firstHasId = Dash.get(props.items, { 1, "id" })
		if firstHasItems and not firstHasId then
			return props.items :: { BaseMenuItemGroup<BaseMenuItem> }
		else
			return { { items = props.items :: { BaseMenuItem } } }
		end
	end, { props.items })

	local groupHasLeading: { boolean } = {}
	local menuHasCheck = false
	for groupIndex, group in items do
		local groupLeading = false
		for _, item in group.items do
			if not groupLeading and (item.leading ~= nil or item.icon ~= nil) then
				groupLeading = true
			end
			if not menuHasCheck and item.isChecked == true then
				menuHasCheck = true
			end
		end
		groupHasLeading[groupIndex] = groupLeading
	end

	return React.createElement(
		React.Fragment,
		nil,
		Dash.map(items, function(group, groupIndex: number)
			local hasLeadingForGroup = groupHasLeading[groupIndex]
			return React.createElement(
				BaseMenuGroup,
				{
					key = groupIndex,
					LayoutOrder = groupIndex,
					title = group.title,
					menuHasLeading = hasLeadingForGroup,
					menuHasCheck = menuHasCheck,
				},
				Dash.map(group.items, function(item, index)
					return React.createElement(
						BaseMenuItem,
						{
							LayoutOrder = index,
							key = item.id,
							icon = item.icon,
							leading = item.leading,
							trailing = item.trailing,
							isChecked = item.isChecked,
							isDisabled = item.isDisabled,
							text = item.text,
							onActivated = item.onActivated,
							id = item.id,
							testId = if item.items then "--foundation-menu-submenu-item" else "--foundation-menu-item",
							ref = item.ref,
							menuHasLeading = hasLeadingForGroup,
							menuHasCheck = menuHasCheck,
						},
						if item.items
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
