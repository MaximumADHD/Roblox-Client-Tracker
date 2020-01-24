local Root = script.Parent.Parent

local RequestType = require(Root.Enums.RequestType)

return function(state)
	return state.promptRequest.requestType ~= RequestType.None
end