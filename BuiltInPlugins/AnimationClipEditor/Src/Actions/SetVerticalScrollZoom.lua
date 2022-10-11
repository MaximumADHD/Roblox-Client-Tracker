--[[
	Used to set the vertical zoom extents.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(scroll, zoom)
	return {
		verticalScroll = scroll,
		verticalZoom = zoom,
	}
end)
