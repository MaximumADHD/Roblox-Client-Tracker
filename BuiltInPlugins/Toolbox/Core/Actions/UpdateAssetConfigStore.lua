-- Use this action to put state from assetConfig into the store.
local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Util = require(Libs.Framework).Util
local Action = Util.Action

return Action(script.Name, function(storeData)
	assert(type(storeData) == "table", "storeData has to be a table.")
	assert(next(storeData) ~= nil, "storeData can't be an empty table.")

	return {
		storeData = storeData,
	}
end)
