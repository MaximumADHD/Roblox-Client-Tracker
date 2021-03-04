--[[
	Enumeration of types of items that can be purchased.
]]
local createEnum = require(script.Parent.createEnum)

local ItemType = createEnum("ItemType", {
	"Asset",
	"GamePass",
	"Product",
	"Bundle",
})

return ItemType