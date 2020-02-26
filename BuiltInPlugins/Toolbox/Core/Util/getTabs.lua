--[[
	get the tabs used in toolbox
]]

local Plugin = script.Parent.Parent.Parent

local Images = require(Plugin.Core.Util.Images)
local Category = require(Plugin.Core.Types.Category)
local FFlagStudioToolboxEnabledDevFramework = game:GetFastFlag("StudioToolboxEnabledDevFramework")

local getTabs = function(localizedContent)
	if FFlagStudioToolboxEnabledDevFramework then
		return {
			{Key = Category.MARKETPLACE_KEY, Text = localizedContent:getText("General", "TabMarketplace"), Image = Images.MARKETPLACE_TAB},
			{Key = Category.INVENTORY_KEY, Text = localizedContent:getText("General", "TabInventory"), Image = Images.INVENTORY_TAB},
			{Key = Category.RECENT_KEY, Text = localizedContent:getText("General", "TabRecent"), Image = Images.RECENT_TAB},
			{Key = Category.CREATIONS_KEY, Text = localizedContent:getText("General", "TabCreations"), Image = Images.CREATIONS_TAB}
		}
	else
		return {
			{Key = Category.MARKETPLACE_KEY, Text = localizedContent.Tabs.Marketplace, Image = Images.MARKETPLACE_TAB},
			{Key = Category.INVENTORY_KEY, Text = localizedContent.Tabs.Inventory, Image = Images.INVENTORY_TAB},
			{Key = Category.RECENT_KEY, Text = localizedContent.Tabs.Recent, Image = Images.RECENT_TAB},
			{Key = Category.CREATIONS_KEY, Text = localizedContent.Tabs.Creations, Image = Images.CREATIONS_TAB}
		}
	end
end

return getTabs
