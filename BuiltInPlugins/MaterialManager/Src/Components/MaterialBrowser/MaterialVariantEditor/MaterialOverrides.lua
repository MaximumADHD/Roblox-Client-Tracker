local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local FFlagDevFrameworkRemoveFitFrame = Framework.SharedFlags.getFFlagDevFrameworkRemoveFitFrame()

local Stylizer = Framework.Style.Stylizer

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local UI = Framework.UI
local Pane = UI.Pane
local SelectInput = UI.SelectInput
local TextLabel = UI.Decoration.TextLabel
local TruncatedTextLabel = UI.TruncatedTextLabel

local MaterialServiceController = require(Plugin.Src.Controllers.MaterialServiceController)

local getSupportedMaterials = require(Plugin.Src.Resources.Constants.getSupportedMaterials)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local StatusIcon = require(Plugin.Src.Components.StatusIcon)

local supportedMaterials = getSupportedMaterials()

export type Props = {
	LayoutOrder: number?,
	MockMaterial: _Types.Material?,
}

type _Props = Props & { 
	Analytics: any,
	Localization: any,
	Material: _Types.Material?,
	MaterialOverride: number,
	MaterialOverrides: _Types.Array<string>,
	MaterialServiceController: any,
	MaterialStatus: Enum.PropertyStatus,
	Stylizer: any,
}

type _Style = {
	HeaderFont: Enum.Font,
	ImageSize: UDim2,
	LabelRowSize: UDim2,
	OverrideSize: UDim2,
	Padding: number,
	SectionHeaderTextSize: number,
}

local MaterialOverrides = Roact.PureComponent:extend("MaterialOverrides")

function MaterialOverrides:init()
	self.onMaterialItemActivated = function(value, index)
		local props: _Props = self.props
		local baseMaterial = if props.Material then props.Material.Material else Enum.Material.Plastic

		if index == 1 then
			props.MaterialServiceController:setMaterialOverride(baseMaterial)
		else
			props.MaterialServiceController:setMaterialOverride(baseMaterial, props.MaterialOverrides[index])
		end
	end
end

function MaterialOverrides:render()
	local props: _Props = self.props
	local style = props.Stylizer.MaterialDetails
	local localization = props.Localization

	local material = props.Material
	local materialStatus = props.MaterialStatus
	local statusText = ""
	if materialStatus == Enum.PropertyStatus.Error then
		statusText = localization:getText("MaterialStatus", "MissingMaterial")
	elseif materialStatus == Enum.PropertyStatus.Warning then
		statusText = localization:getText("MaterialStatus", "DuplicateMaterial")
	end

	if not material then
		return Roact.createElement(Pane)
	end

	local overridesPanel
	if supportedMaterials[material.Material] then
		overridesPanel = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = 2,
		}, {
			Label = Roact.createElement(Pane, {
				LayoutOrder = 1,
				Layout = Enum.FillDirection.Horizontal,
				Size = style.OverrideSize,
				Spacing = 5,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
			}, {
				Status = Roact.createElement(StatusIcon, {
					LayoutOrder = 1,
					Size = style.ImageSize,
					StatusText = statusText,
					Status = materialStatus,
				}),
				Label = Roact.createElement(TextLabel, {
					FitWidth = if FFlagDevFrameworkRemoveFitFrame then nil else true,
					AutomaticSize = if FFlagDevFrameworkRemoveFitFrame then Enum.AutomaticSize.XY else nil,
					LayoutOrder = 2,
					Text = localization:getText("MaterialOverrides", "MaterialOverride"),
				}),
			}),
			SelectInputWrapper = Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 2,
				Size = style.OverrideSize,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}, {
				SelectInput = Roact.createElement(SelectInput, {
					Items = props.MaterialOverrides,
					OnItemActivated = self.onMaterialItemActivated,
					PlaceholderText = props.MaterialOverrides[props.MaterialOverride],
					SelectedIndex = props.MaterialOverride,
					Width = style.OverrideSize.X.Offset,
				}),
			}),
		})
	else
		overridesPanel = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.XY,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			LayoutOrder = 2,
		}, {
			TextLabel = Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = style.OverrideSize,
				Text = localization:getText("MaterialOverrides", "OverrideUnavailable"),
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
		})
	end

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
		Spacing = style.Padding,
		Padding = style.Padding,
	}, {
		Name = Roact.createElement(TruncatedTextLabel, {
			LayoutOrder = 1,
			Font = style.HeaderFont,
			Size = style.LabelRowSize,
			Text = localization:getText("MaterialOverrides", "MaterialOverrides"),
			TextSize = style.SectionHeaderTextSize,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		OverridesPanel = overridesPanel,
	})
end

MaterialOverrides = withContext({
	Analytics = Analytics,
	Localization = Localization,
	MaterialServiceController = MaterialServiceController,
	Stylizer = Stylizer,
})(MaterialOverrides)

return RoactRodux.connect(
	function(state: MainReducer.State, props: Props)
		if props.MockMaterial then
			return {
				Material = props.MockMaterial,
				MaterialOverrides = state.MaterialBrowserReducer.MaterialOverrides[props.MockMaterial.Material],
				MaterialOverride = state.MaterialBrowserReducer.MaterialOverride[props.MockMaterial.Material],
				MaterialStatus = if not props.MockMaterial.MaterialVariant
					then state.MaterialBrowserReducer.MaterialStatus[props.MockMaterial.Material]
					else nil,
			}
		elseif not state.MaterialBrowserReducer.Material or not supportedMaterials[state.MaterialBrowserReducer.Material.Material] then
			return {
				Material = state.MaterialBrowserReducer.Material,
			}
		else
			return {
				Material = state.MaterialBrowserReducer.Material,
				MaterialOverrides = state.MaterialBrowserReducer.MaterialOverrides[state.MaterialBrowserReducer.Material.Material],
				MaterialOverride = state.MaterialBrowserReducer.MaterialOverride[state.MaterialBrowserReducer.Material.Material],
				MaterialStatus = if not state.MaterialBrowserReducer.Material.MaterialVariant then
					state.MaterialBrowserReducer.MaterialStatus[state.MaterialBrowserReducer.Material.Material]
					else
					nil
			}
		end
	end
)(MaterialOverrides)
