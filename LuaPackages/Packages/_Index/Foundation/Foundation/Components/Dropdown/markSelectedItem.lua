local Foundation = script:FindFirstAncestor("Foundation")

local BaseMenu = require(Foundation.Components.BaseMenu)
local Types = require(Foundation.Components.Types)

type BaseMenuItem = BaseMenu.BaseMenuItem
type BaseMenuItems<Item> = BaseMenu.BaseMenuItems<Item>
type BaseMenuItemGroup<Item> = BaseMenu.BaseMenuItemGroup<Item>

local function markSelectedItem<Item>(items: BaseMenuItems<Item>, value: Types.ItemId?): (BaseMenuItems<Item>, Item?)
	if value == nil then
		return items, nil
	end
	local newItems: BaseMenuItems<Item> = {}
	local selectedItem: Item?
	for _, item in items :: { any } do
		-- Should be an Item, but we don't have a way to say Item extends BaseMenuItem :(
		if (item :: BaseMenuItem).id then
			local newItem = item
			if item.id == value then
				newItem = table.clone(item)
				newItem.isChecked = true
				selectedItem = newItem
			end
			table.insert(newItems, newItem)
		elseif (item :: BaseMenuItemGroup<Item>).items then
			local nestedItems, nestedFound = markSelectedItem((item :: BaseMenuItemGroup<Item>).items, value)
			table.insert(newItems, { title = item.title, items = nestedItems :: { Item } })
			selectedItem = selectedItem or nestedFound
		end
	end
	return newItems, selectedItem
end

return markSelectedItem
