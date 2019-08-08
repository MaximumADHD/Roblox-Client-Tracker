--[[
	get the tabs used in toolbox
]]

local Plugin = script.Parent.Parent.Parent

local Images = require(Plugin.Core.Util.Images)
local Category = require(Plugin.Core.Types.Category)

local getTabs = function(localizedContent)
	return {
		{Key = Category.MARKETPLACE_KEY, Text = localizedContent.Tabs.Marketplace, Image = Images.MARKETPLACE_TAB},
		{Key = Category.INVENTORY_KEY, Text = localizedContent.Tabs.Inventory, Image = Images.INVENTORY_TAB},
		{Key = Category.RECENT_KEY, Text = localizedContent.Tabs.Recent, Image = Images.RECENT_TAB},
		{Key = Category.CREATIONS_KEY, Text = localizedContent.Tabs.Creations, Image = Images.CREATIONS_TAB}
	}
end

return getTabs
