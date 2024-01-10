--!nonstrict
local Action = require(script.Parent.Parent.Action)

local LuauHeapTypes = require(script.Parent.Parent.Components.LuauHeap.LuauHeapTypes)

return Action(
	script.Name,
	function(
		isClientState: boolean,
		sessionState: LuauHeapTypes.SessionState?
	)
		return {
			isClientState = isClientState,
			sessionState = sessionState,
		}
	end
)
