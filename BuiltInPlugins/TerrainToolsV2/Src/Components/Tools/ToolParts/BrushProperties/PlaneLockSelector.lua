local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = require(Plugin.Src.ContextItems)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local PlaneLockType = TerrainEnums.PlaneLockType

local ToolParts = script.Parent.Parent
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local SingleSelectButtonGroup = require(ToolParts.SingleSelectButtonGroup)

local PlaneLockSelector = Roact.PureComponent:extend("PlaneLockSelector")

function PlaneLockSelector:render()
	local localization = self.props.Localization:get()

	local layoutOrder = self.props.LayoutOrder
	local planeLock = self.props.planeLock
	local setPlaneLock = self.props.setPlaneLock

	return Roact.createElement(LabeledElementPair, {
		Size = UDim2.new(1, 0, 0, 22),
		Text = localization:getText("BrushSettings", "PlaneLock"),
		LayoutOrder = layoutOrder,
	}, {
		Roact.createElement(SingleSelectButtonGroup, {
			Size = UDim2.new(0, 141, 0, 22),
			Selected = planeLock,
			Select = setPlaneLock,
			Options = {
				{
					Text = localization:getText("BrushSettings", "Off"),
					Data = PlaneLockType.Off,
				}, {
					Text = localization:getText("BrushSettings", "Auto"),
					Data = PlaneLockType.Auto,
				}, {
					Text = localization:getText("BrushSettings", "Manual"),
					Data = PlaneLockType.Manual,
				},
			}
		}),
	})
end

PlaneLockSelector = withContext({
	Localization = ContextItems.UILibraryLocalization,
})(PlaneLockSelector)


return PlaneLockSelector
