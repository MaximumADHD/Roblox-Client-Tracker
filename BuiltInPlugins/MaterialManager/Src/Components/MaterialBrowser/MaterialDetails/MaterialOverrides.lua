local FFlagDevFrameworkRemoveFitFrame = game:GetFastFlag("DevFrameworkRemoveFitFrame")

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
local SelectInput = UI.SelectInput
local ToggleButton = UI.ToggleButton
local TextLabel = UI.Decoration.TextLabel
local TruncatedTextLabel = UI.TruncatedTextLabel

local getFFlagDevFrameworkInfiniteScrollingGridBottomPadding = require(Plugin.Src.Flags.getFFlagDevFrameworkInfiniteScrollingGridBottomPadding)
local getSupportedMaterials = require(Plugin.Src.Resources.Constants.getSupportedMaterials)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local MaterialServiceController = require(Plugin.Src.Util.MaterialServiceController)
local SetBaseMaterial = require(Plugin.Src.Actions.SetBaseMaterial)
local StatusIcon = require(Plugin.Src.Components.StatusIcon)

local supportedMaterials = getSupportedMaterials()

export type Props = {
	LayoutOrder: number?,
	MockMaterial: _Types.Material?,
}

type _Props = Props & { 
	Analytics: any,
	dispatchSetBaseMaterial: (baseMaterial: string) -> (),
	Localization: any,
	Material: _Types.Material?,
	MaterialOverride: number,
	MaterialOverrides: _Types.Array<string>,
	MaterialServiceController: any,
	Stylizer: any,
}

type _Style = {
	AdditionalLabelSize: UDim2,
	AdditionalTextSize: UDim2,
	ButtonPosition: UDim2,
	ButtonSize: UDim2,
	ButtonStyle: string,
	Close: _Types.Image,
	CreateVariant: _Types.Image,
	Delete: _Types.Image,
	DropdownSize: UDim2,
	Edit: _Types.Image,
	HeaderBackground: Color3,
	HeaderFont: Enum.Font,
	HeaderSize: UDim2,
	ImagePosition: UDim2,
	ImageSize: UDim2,
	NameLabelSizeBuiltIn: UDim2,
	NameLabelSizeVariant: UDim2,
	NoTexture: string,
	LabelRowSize: UDim2,
	OverrideSize: UDim2,
	Padding: number,
	SectionHeaderTextSize: number,
	TextureLabelSize: UDim2,
	TextureRowSize: UDim2,
	TextureSize: UDim2,
	TitleTextSize: number,
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

	self.onOverrideToggled = function(toggled)
		local props: _Props = self.props

		if props.Material and props.Material.MaterialVariant then
			if toggled then
				props.MaterialServiceController:setMaterialOverride(props.Material.Material)
			else
				local materialIndex = table.find(props.MaterialOverrides, props.Material.MaterialVariant.Name)

				props.MaterialServiceController:setMaterialOverride(props.Material.Material, props.MaterialOverrides[materialIndex])
			end
		end
	end
end

function MaterialOverrides:render()
	local props: _Props = self.props
	local style = props.Stylizer.MaterialDetails
	local localization = props.Localization
	local material = props.Material

	if not material then
		return Roact.createElement(Pane)
	end

	local contents = {}

	if not material.MaterialVariant then
		contents = {
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
					Material = material,
					Size = style.ImageSize,
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
				})
			})
		}
	else
		local toggled = props.MaterialOverride > 1 and props.MaterialOverrides[props.MaterialOverride] == material.MaterialVariant.Name
		contents = {
			Label = Roact.createElement(TextLabel, {
				LayoutOrder = 1,
				Text = localization:getText("MaterialOverrides", "SetOverride"),
				TextXAlignment = Enum.TextXAlignment.Left,
				Size = UDim2.new(0, 80, 0, 20),
			}),
			Button = Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 2,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Size = UDim2.new(0, 195, 0, 20),
				Padding = if getFFlagDevFrameworkInfiniteScrollingGridBottomPadding() then 5 else nil,
			}, {
				ToggleButton = Roact.createElement(ToggleButton, {
					OnClick = function() self.onOverrideToggled(toggled) end,
					Selected = toggled,
					Size = if getFFlagDevFrameworkInfiniteScrollingGridBottomPadding() then UDim2.fromOffset(30, 18) else UDim2.fromOffset(40, 24),
				})
			})
		}
	end

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
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
		OverridesNew = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = 2,
		}, contents)
	})
end

MaterialOverrides = withContext({
	Analytics = Analytics,
	Localization = Localization,
	MaterialServiceController = MaterialServiceController,
	Stylizer = Stylizer,
})(MaterialOverrides)

return RoactRodux.connect(
	function(state: MainReducer.State, props: _Props)
		if props.MockMaterial then
			return {
				Material = props.MockMaterial,
			}
		elseif not state.MaterialBrowserReducer.Material or not supportedMaterials[state.MaterialBrowserReducer.Material.Material] then
			return {}
		else
			return {
				Material = state.MaterialBrowserReducer.Material,
				MaterialOverrides = state.MaterialBrowserReducer.MaterialOverrides[state.MaterialBrowserReducer.Material.Material],
				MaterialOverride = state.MaterialBrowserReducer.MaterialOverride[state.MaterialBrowserReducer.Material.Material],
			}
		end
	end,
	function(dispatch)
		return {
			dispatchSetBaseMaterial = function(baseMaterial: string)
				dispatch(SetBaseMaterial(baseMaterial))
			end,
		}
	end
)(MaterialOverrides)

