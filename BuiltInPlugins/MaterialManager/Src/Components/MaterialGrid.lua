
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane

local MaterialGrid = Roact.PureComponent:extend("MaterialGrid")

export type Props = {
    LayoutOrder : number?,
    Size : UDim2?,
}

type _Props = Props & {
    Analytics : any,
    Localization : any,
    Stylizer : any,
}

function MaterialGrid:render()
    local props : _Props = self.props

    local layoutOrder = props.LayoutOrder
    local size = props.Size

    return Roact.createElement(Pane, {
        Layout = Enum.FillDirection.Vertical,
        LayoutOrder = layoutOrder,
        Size = size,
    })
end

MaterialGrid = withContext({
    Analytics = Analytics,
    Localization = Localization,
    Stylizer = Stylizer,
})(MaterialGrid)

return MaterialGrid
