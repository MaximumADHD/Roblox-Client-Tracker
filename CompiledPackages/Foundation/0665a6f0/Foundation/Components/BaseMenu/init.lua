local BaseMenu = require(script.BaseMenu)

local BaseMenuContext = require(script.BaseMenuContext)
local BaseMenuGroup = require(script.BaseMenuGroup)
local BaseMenuItem = require(script.BaseMenuItem)

export type BaseMenuProps<Item = BaseMenuItem> = BaseMenu.BaseMenuProps<Item>
export type BaseMenuItem = BaseMenu.BaseMenuItem
export type BaseMenuItems<Item = BaseMenuItem> = BaseMenu.BaseMenuItems<Item>
export type BaseMenuItemGroup<Item = BaseMenuItem> = BaseMenu.BaseMenuItemGroup<Item>
export type LeadingAccessory = BaseMenuItem.LeadingAccessory
export type TrailingAccessory = BaseMenuItem.TrailingAccessory

return {
	Root = BaseMenu,
	Item = BaseMenuItem,
	Context = BaseMenuContext,
	Group = BaseMenuGroup,
}
