--[[
	Used to set the horizontal zoom extents.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(scroll, zoom)
	return {
		horizontalScroll = scroll,
		horizontalZoom = zoom,
	}
end)