local Plugin = script.Parent.Parent.Parent

local SetIsFetchingAssets = require(Plugin.Src.Actions.SetIsFetchingAssets)
local SetSearchTerm = require(Plugin.Src.Actions.SetSearchTerm)

local GetAssets = require(Plugin.Src.Thunks.GetAssets)
local SetAssets = require(Plugin.Src.Actions.SetAssets)

local Screens = require(Plugin.Src.Util.Screens)

return function(apiImpl, screen)
    return function(store)
        store:dispatch(SetAssets({
            assets = {},
        }))
        store:dispatch(SetIsFetchingAssets(false))
        store:dispatch(SetSearchTerm(""))
        if screen.Key ~= Screens.MAIN.Key then
            store:dispatch(GetAssets(apiImpl, screen.AssetType))
        end
    end
end