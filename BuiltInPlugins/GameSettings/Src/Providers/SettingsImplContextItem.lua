local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Roact)
local Framework = Plugin.Framework
local ContextItem = require(Framework.ContextServices.ContextItem)
local Provider = require(Framework.ContextServices.Provider)

local SettingsImplProvider = ContextItem:extend("SettingsImplProvider")

function SettingsImplProvider.new(settingsImpl)
    assert(settingsImpl, "Error initializing SettingsImplProvider. Expected an `settingsImpl`.")

    local self = {
        settingsImpl = settingsImpl,
    }
    setmetatable(self, SettingsImplProvider)
    return self
end

function SettingsImplProvider:get()
    return self.settingsImpl
end

function SettingsImplProvider:createProvider(root)
    return Roact.createElement(Provider, {
        ContextItem = self,
    }, {root})
end

return SettingsImplProvider