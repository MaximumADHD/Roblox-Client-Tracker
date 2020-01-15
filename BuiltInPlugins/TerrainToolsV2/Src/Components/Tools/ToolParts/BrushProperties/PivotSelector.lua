local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Localizing = require(Plugin.Packages.UILibrary.Localizing)
local withLocalization = Localizing.withLocalization

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local PivotType = TerrainEnums.PivotType

local ToolParts = script.Parent.Parent
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local SingleSelectButtonGroup = require(ToolParts.SingleSelectButtonGroup)

local function PivotSelector(props)
	return withLocalization(function(localization)
		local layoutOrder = props.LayoutOrder
		local pivot = props.pivot
		local setPivot = props.setPivot

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
	end)
end

return PivotSelector
