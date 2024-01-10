--!nonstrict
local Action = require(script.Parent.Parent.Action)

return Action(script.Name, function(useClientView: boolean)
	return {
		isClientView = useClientView,
	}
end)
