local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local ContextItem = Framework.ContextServices.ContextItem

local DialogProvider = ContextItem:extend("DialogProvider")

function DialogProvider.new(showDialog)
	assert(typeof(showDialog) == "function", "No showDialog function was provided.")

	local self = {
		showDialog = showDialog,
	}
	setmetatable(self, DialogProvider)
	return self
end

return DialogProvider
