--!nonstrict
local Action = require(script.Parent.Parent.Action)

return Action(script.Name, function(dumpPath: string)
	return {
		dumpPath = dumpPath,
	}
end)
