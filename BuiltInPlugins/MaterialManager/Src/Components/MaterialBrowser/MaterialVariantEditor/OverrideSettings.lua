local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local Stylizer = Framework.Style.Stylizer

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local UI = Framework.UI
local Pane = UI.Pane
local SimpleExpandablePane = UI.SimpleExpandablePane
local ToggleButton = UI.ToggleButton

local MaterialServiceController = require(Plugin.Src.Controllers.MaterialServiceController)
local LabeledElement = require(Plugin.Src.Components.MaterialBrowser.MaterialVariantEditor.LabeledElement)

local getSupportedMaterials = require(Plugin.Src.Resources.Constants.getSupportedMaterials)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local supportedMaterials = getSupportedMaterials()

export type Props = {
	LayoutOrder: number?,
	MaterialVariant: MaterialVariant,
	MockMaterial: _Types.Material?,
}

type _Props = Props & { 
	Analytics: any,
	Localization: any,
	Material: _Types.Material?,
	MaterialOverride: number,
	MaterialOverrides: _Types.Array<string>,
	MaterialServiceController: any,
	Stylizer: any,
}

type _Style = {
	CustomExpandablePane: any,
	LabelColumnWidth: UDim,
}

local OverrideSettings = Roact.PureComponent:extend("OverrideSettings")

function OverrideSettings:init()
	self.onOverrideToggled = function(toggled)
		local props: _Props = self.props

		if toggled then
			props.MaterialServiceController:setMaterialOverride(props.MaterialVariant.BaseMaterial)
		else
			local materialIndex = table.find(props.MaterialOverrides, props.MaterialVariant.Name)

			props.MaterialServiceController:setMaterialOverride(props.MaterialVariant.BaseMaterial, props.MaterialOverrides[materialIndex])
		end
		props.Analytics:report("setOverrideToggled")
	end
end

function OverrideSettings:render()
	local props: _Props = self.props
	local style = props.Stylizer.MaterialDetails
	local localization = props.Localization
	local materialVariant = props.MaterialVariant

	local toggled = props.MaterialOverride > 1 and props.MaterialOverrides[props.MaterialOverride] == materialVariant.Name

	return Roact.createElement(SimpleExpandablePane, {
		LayoutOrder = props.LayoutOrder,
		ContentPadding = style.ContentPadding,
		ContentSpacing = style.ItemSpacing,
		Text = localization:getText("MaterialOverrides", "Overrides"),
		Style = style.CustomExpandablePane,
	}, {
		OverridesNew = Roact.createElement(LabeledElement, {
			LabelColumnWidth = style.LabelColumnWidth,
			Text = localization:getText("MaterialOverrides", "SetOverride"),
		}, {
			Button = Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.XY,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Size = UDim2.new(0, 195, 0, 20),
				Padding = 5,
			}, {
				ToggleButton = Roact.createElement(ToggleButton, {
					OnClick = function() self.onOverrideToggled(toggled) end,
					Selected = toggled,
					Size = UDim2.fromOffset(30, 18),
				})
			})
		}),
	})
end

OverrideSettings = withContext({
	Analytics = Analytics,
	Localization = Localization,
	MaterialServiceController = MaterialServiceController,
	Stylizer = Stylizer,
})(OverrideSettings)

return RoactRodux.connect(
	function(state: MainReducer.State, props: Props)
		if props.MockMaterial then
			return {
				MaterialOverrides = state.MaterialBrowserReducer.MaterialOverrides[props.MockMaterial.Material],
				MaterialOverride = state.MaterialBrowserReducer.MaterialOverride[props.MockMaterial.Material],
			}
		elseif not state.MaterialBrowserReducer.Material or not supportedMaterials[state.MaterialBrowserReducer.Material.Material] then
			return {}
		else
			return {
				MaterialOverrides = state.MaterialBrowserReducer.MaterialOverrides[state.MaterialBrowserReducer.Material.Material],
				MaterialOverride = state.MaterialBrowserReducer.MaterialOverride[state.MaterialBrowserReducer.Material.Material],
			}
		end
	end
)(OverrideSettings)
