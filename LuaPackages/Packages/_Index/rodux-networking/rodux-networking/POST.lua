local root = script.Parent
local makeRequestApi = require(root.makeRequestApi)
local Cryo = require(root.Cryo)

return function(options)
	return makeRequestApi(Cryo.Dictionary.join(options, {
		methodType = "POST",
	}))
end
