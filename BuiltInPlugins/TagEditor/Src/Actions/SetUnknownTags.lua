local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

return function(data: {string})
	return {
		type = "SetUnknownTags",
		data = data,
	}
end
