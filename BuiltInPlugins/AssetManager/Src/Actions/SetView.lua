
local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework).Util.Action
local View = require(Plugin.Src.Util.View)

return Action(script.Name, function(view)
	assert(typeof(view) == "table", string.format("SetView requires a table, not %s", typeof(view)))
	assert(View[view.Key] ~= nil, string.format("Invalid SetView: %s does not exist", view.Key))

	return {
		view = view
	}
end)
