local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextItem = Framework.ContextServices.ContextItem
-- TODO: When FFlagDevFrameworkUseCreateContext is retired remove this require
local Provider = Framework.ContextServices.Provider

local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")

local DialogProvider = ContextItem:extend("DialogProvider")

function DialogProvider.new(showDialog)
    assert(typeof(showDialog) == "function", "No showDialog function was provided.")

    local self = {
        showDialog = showDialog,
    }
    setmetatable(self, DialogProvider)
    return self
end

if not FFlagDevFrameworkUseCreateContext then
	function DialogProvider:createProvider(root)
		return Roact.createElement(Provider, {
			ContextItem = self,
		}, {root})
	end
end

return DialogProvider