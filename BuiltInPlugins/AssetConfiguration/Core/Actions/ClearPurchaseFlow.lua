--[[
	Used to clear the purchase flow reducer to start
	a new purchase flow.
]]

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Util = require(Libs.Framework.Util)
local Action = Util.Action

return Action(script.Name, function(assetId)
	return {
		assetId = assetId,
	}
end)
