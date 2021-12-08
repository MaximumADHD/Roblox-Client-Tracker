local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = require(Plugin.Src.ContextItems)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local PivotType = TerrainEnums.PivotType

local ToolParts = script.Parent.Parent
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local SingleSelectButtonGroup = require(ToolParts.SingleSelectButtonGroup)

local PivotSelector = Roact.PureComponent:extend("PivotSelector")

function PivotSelector:render()
	local localization = self.props.Localization:get()

	local layoutOrder = self.props.LayoutOrder
	local pivot = self.props.pivot
	local setPivot = self.props.setPivot

	return Roact.createElement(LabeledElementPair, {
		Size = UDim2.new(1, 0, 0, 22),
		Text = localization:getText("BrushSettings", "PivotPosition"),
		LayoutOrder = layoutOrder,
	}, {
		Roact.createElement(SingleSelectButtonGroup, {
			Size = UDim2.new(0, 141, 0, 22),
			Selected = pivot,
			Select = setPivot,

			Options = {
				{
					Text = localization:getText("BrushSettings", "BottomPivot"),
					Data = PivotType.Bottom,
				}, {
					Text = localization:getText("BrushSettings", "CenterPivot"),
					Data = PivotType.Center,
				}, {
					Text = localization:getText("BrushSettings", "TopPivot"),
					Data = PivotType.Top,
				},
			}
		}),
	})
end


PivotSelector = withContext({
	Localization = ContextItems.UILibraryLocalization,
})(PivotSelector)



return PivotSelector
