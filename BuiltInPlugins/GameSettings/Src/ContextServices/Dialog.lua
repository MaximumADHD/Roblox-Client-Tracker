local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Roact)
local Framework = Plugin.Framework
local ContextItem = require(Framework.ContextServices.ContextItem)
local Provider = require(Framework.ContextServices.Provider)

local DialogProvider = ContextItem:extend("DialogProvider")

function DialogProvider.new(showDialog)
    assert(typeof(showDialog) == "function", "No showDialog function was provided.")

    local self = {
        showDialog = showDialog,
    }
    setmetatable(self, DialogProvider)
    return self
end

function DialogProvider:createProvider(root)
    return Roact.createElement(Provider, {
        ContextItem = self,
    }, {root})
end

return DialogProvider