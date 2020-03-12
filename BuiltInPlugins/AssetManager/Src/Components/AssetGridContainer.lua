--[[
    The Top Bar contains the buttons for displaying the overlay, going back and forwards, importing assets
        as well the search bar.

    Necessary Properties:
        OnOverlayActivated = callback, to display the overlay when the overlay button is clicked.
    Optional Properties:
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)


local AssetGridContainer = Roact.PureComponent:extend("AssetGridContainer")

function AssetGridContainer:render()
    local props = self.props
    local theme = props.Theme:get("Plugin")

    local size = props.Size
    local layoutOrder = props.LayoutOrder

    local searchTerm = props.SearchTerm

    local assetsTable = props.AssetsTable
    local assets = assetsTable.assets

    local assetsToDisplay = {}
    if searchTerm ~= "" then
        for _, asset in ipairs(assets) do
            if string.find(asset.name, searchTerm) then
                table.insert(assetsToDisplay, asset)
            end
        end
    else
        assetsToDisplay = assets
    end

    return Roact.createElement("Frame", {
        Size = size,
        LayoutOrder = layoutOrder,

        BackgroundTransparency = 1,
    })
end

ContextServices.mapToProps(AssetGridContainer,{
    Theme = ContextServices.Theme,
    Localization = ContextServices.Localization,
})

local function mapStateToProps(state, props)
	return {
        AssetsTable = state.AssetManagerReducer.assetsTable,
        SearchTerm = state.AssetManagerReducer.searchTerm,
	}
end

local function useDispatchForProps(dispatch)
	return {

	}
end

return RoactRodux.connect(mapStateToProps, useDispatchForProps)(AssetGridContainer)