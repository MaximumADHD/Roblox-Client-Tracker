--[[
	LayoutValuesConsumer will extract the LayoutValues object
	from context and pass it into the given render callback
]]
local LayoutValuesContext = require(script.Parent.LayoutValuesContext)

return LayoutValuesContext.Consumer
