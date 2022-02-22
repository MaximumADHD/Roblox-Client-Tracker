--[[
	Sets the PurchaseStatus of a Purchase flow.
]]

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(status)
	assert(status, "SetPurchaseStatus expects a PurchaseStatus.")
	return {
		status = status,
	}
end)
