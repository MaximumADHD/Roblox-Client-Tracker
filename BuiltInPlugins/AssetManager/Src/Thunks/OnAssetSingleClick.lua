local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)

local SetSelectedAssets = require(Plugin.Src.Actions.SetSelectedAssets)
local SetSelectionIndex = require(Plugin.Src.Actions.SetSelectionIndex)

return function(obj, assetData)
    return function(store)
        local selectedAssets
        local selectionIndex
        local isCtrlKeyDown = false
        local isShiftKeyDown = false
        if obj then
            isCtrlKeyDown = obj:IsModifierKeyDown(Enum.ModifierKey.Ctrl)
            isShiftKeyDown = obj:IsModifierKeyDown(Enum.ModifierKey.Shift)
        end
        local state = store:getState()
        if not isCtrlKeyDown and not isShiftKeyDown then
            selectedAssets = {}
        else
            selectedAssets = state.AssetManagerReducer.selectedAssets
        end
        if isShiftKeyDown then
            selectionIndex = state.AssetManagerReducer.selectionIndex
        end
        local isFolder = assetData.ClassName == "Folder"
        if isFolder then
            local selected
            if selectedAssets[assetData.Screen.LayoutOrder] and isCtrlKeyDown then
                selected = false
            else
                selected = true
            end
            if isShiftKeyDown then
                if selectionIndex >= assetData.Screen.LayoutOrder then
                    for index = assetData.Screen.LayoutOrder, selectionIndex do
                        selectedAssets = Cryo.Dictionary.join(selectedAssets, {
                            [index] = selected,
                        })
                    end
                else
                    for index = selectionIndex, assetData.Screen.LayoutOrder do
                        selectedAssets = Cryo.Dictionary.join(selectedAssets, {
                            [index] = selected,
                        })
                    end
                end
            else
                selectedAssets = Cryo.Dictionary.join(selectedAssets, {
                    [assetData.Screen.LayoutOrder] = selected,
                })
                store:dispatch(SetSelectionIndex(assetData.Screen.LayoutOrder))
            end
        else
            -- assets are keyed by index which is same as LayoutOrder
            local selected
            if selectedAssets[assetData.key] and isCtrlKeyDown then
                selected = false
            else
                selected = true
            end
            if isShiftKeyDown then
                if selectionIndex >= assetData.key then
                    for index = assetData.key, selectionIndex do
                        selectedAssets = Cryo.Dictionary.join(selectedAssets, {
                            [index] = selected,
                        })
                    end
                else
                    for index = selectionIndex, assetData.key do
                        selectedAssets = Cryo.Dictionary.join(selectedAssets, {
                            [index] = selected,
                        })
                    end
                end
            else
                selectedAssets = Cryo.Dictionary.join(selectedAssets, {
                    [assetData.key] = selected,
                })
                store:dispatch(SetSelectionIndex(assetData.key))
            end
        end
        store:dispatch(SetSelectedAssets(selectedAssets))
    end
end