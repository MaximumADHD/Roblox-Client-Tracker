local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

return function(data: _Types.Table<string, boolean>)
	return {
		type = "SetUIGroupCollapseState",
		data = data,
	}
end
