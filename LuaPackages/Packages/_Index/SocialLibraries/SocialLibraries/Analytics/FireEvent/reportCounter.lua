--!strict
local Types = require(script.Parent.Types)

return function(diagImp: { reportCounter: (any, string, number) -> () })
	return function(event: Types.DiagEventAction)
		diagImp:reportCounter(event.name, event.count or 1)

		return event
	end
end
