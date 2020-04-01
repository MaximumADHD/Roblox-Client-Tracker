local Plugin = script.Parent.Parent.Parent

local SetAssets = require(Plugin.Src.Actions.SetAssets)
local SetIsFetchingAssets = require(Plugin.Src.Actions.SetIsFetchingAssets)
local SetEditingAssets = require(Plugin.Src.Actions.SetEditingAssets)
local SetSelectedAssets = require(Plugin.Src.Actions.SetSelectedAssets)
local SetSearchTerm = require(Plugin.Src.Actions.SetSearchTerm)

local GetAssets = require(Plugin.Src.Thunks.GetAssets)

local Screens = require(Plugin.Src.Util.Screens)

return function(apiImpl, screen)
    return function(store)
        store:dispatch(SetAssets({
            assets = {},
        }))
        store:dispatch(SetIsFetchingAssets(false))
        store:dispatch(SetEditingAssets({}))
        store:dispatch(SetSelectedAssets({}))
        store:dispatch(SetSearchTerm(""))
        if screen.Key ~= Screens.MAIN.Key then
            store:dispatch(GetAssets(apiImpl, screen.AssetType))
        end
    end
end