--[[
	Sets the PurchaseStatus of a Purchase flow.
]]

local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Util = require(Libs.Framework).Util
local Action = Util.Action

return Action(script.Name, function(status)
	assert(status, "SetPurchaseStatus expects a PurchaseStatus.")
	return {
		status = status,
	}
end)
