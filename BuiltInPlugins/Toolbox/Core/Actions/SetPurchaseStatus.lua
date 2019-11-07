--[[
	Sets the PurchaseStatus of a Purchase flow.
]]

local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(status)
	assert(status, "SetPurchaseStatus expects a PurchaseStatus.")
	return {
		status = status,
	}
end)