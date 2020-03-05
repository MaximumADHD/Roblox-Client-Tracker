local Plugin = script.Parent.Parent.Parent

local SetSearchTerm = require(Plugin.Src.Actions.SetSearchTerm)

local GetAssets = require(Plugin.Src.Thunks.GetAssets)

local Screens = require(Plugin.Src.Util.Screens)

return function(apiImpl, screen)
    return function(store)
        if screen.Key ~= Screens.MAIN.Key then
            store:dispatch(GetAssets(apiImpl, screen.AssetType))
        end
        store:dispatch(SetSearchTerm(""))
    end
end