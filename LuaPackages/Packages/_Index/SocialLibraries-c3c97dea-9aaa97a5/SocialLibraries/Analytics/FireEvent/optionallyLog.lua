--!strict
local Types = require(script.Parent.Types)

return function(logger: Types.Logger?, formatter: (eventInfo: any) -> string)
	return function(eventInfo: string)
		if logger then
			logger:info(formatter(eventInfo))
		end

		return eventInfo
	end
end
