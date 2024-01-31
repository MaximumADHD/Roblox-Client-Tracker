--!strict
local Types = require(script.Parent.Types)

return function(eventList: any)
	return function(eventName: Types.Enumerate)
		local eventInfo = eventList[eventName]
		assert(eventInfo, "Invalid eventName used: " .. tostring(eventName) .. " called")

		return eventInfo
	end
end
