local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)

local SetSelectedAssets = require(Plugin.Src.Actions.SetSelectedAssets)

return function(isCtrlKeyDown, assetData)
    return function(store)
        local selectedAssets
        if not isCtrlKeyDown then
            selectedAssets = {}
        else
            local state = store:getState()
            selectedAssets = state.AssetManagerReducer.selectedAssets
        end
        local isFolder = assetData.ClassName == "Folder"
        if isFolder then
            local selected
            if selectedAssets[assetData.Screen.Key] and isCtrlKeyDown then
                selected = false
            else
                selected = true
            end
            selectedAssets = Cryo.Dictionary.join(selectedAssets, {
                [assetData.Screen.Key] = selected,
            })
        else
            -- assets are keyed by index which is same as LayoutOrder
            local selected
            if selectedAssets[assetData.key] and isCtrlKeyDown then
                selected = false
            else
                selected = true
            end
            selectedAssets = Cryo.Dictionary.join(selectedAssets, {
                [assetData.key] = selected,
            })
        end
        store:dispatch(SetSelectedAssets(selectedAssets))
    end
end