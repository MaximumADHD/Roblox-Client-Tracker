local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withLocalization = not FFlagTerrainToolsUseDevFramework and UILibrary.Localizing.withLocalization or nil

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local PivotType = TerrainEnums.PivotType

local ToolParts = script.Parent.Parent
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local SingleSelectButtonGroup = require(ToolParts.SingleSelectButtonGroup)

local function PivotSelector_render(props, localization)
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
end

if FFlagTerrainToolsUseDevFramework then
	local PivotSelector = Roact.PureComponent:extend("PivotSelector")

	function PivotSelector:render()
		local localization = self.props.Localization:get()

		return PivotSelector_render(self.props, localization)
	end

	ContextServices.mapToProps(PivotSelector, {
		Localization = ContextItems.UILibraryLocalization,
	})

	return PivotSelector

else
	local function PivotSelector(props)
		return withLocalization(function(localization)
			return PivotSelector_render(props, localization)
		end)
	end

	return PivotSelector
end
