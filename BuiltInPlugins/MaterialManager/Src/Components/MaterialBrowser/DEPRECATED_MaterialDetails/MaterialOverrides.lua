local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local FFlagDevFrameworkRemoveFitFrame = Framework.SharedFlags.getFFlagDevFrameworkRemoveFitFrame()

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local SelectInput = UI.SelectInput
local ToggleButton = UI.ToggleButton
local TextLabel = UI.Decoration.TextLabel
local TruncatedTextLabel = UI.TruncatedTextLabel

local MaterialController = require(Plugin.Src.Controllers.MaterialController)
local SetBaseMaterial = require(Plugin.Src.Actions.SetBaseMaterial)

local Components = Plugin.Src.Components
local StatusIcon = require(Components.DEPRECATED_StatusIcon)

local Flags = Plugin.Src.Flags
local getFFlagDevFrameworkInfiniteScrollingGridBottomPadding = require(Flags.getFFlagDevFrameworkInfiniteScrollingGridBottomPadding)
local getFFlagMaterialManagerGlassNeonForceField = require(Flags.getFFlagMaterialManagerGlassNeonForceField)
local FIntInfluxReportMaterialManagerHundrethPercent2 = game:GetFastInt("InfluxReportMaterialManagerHundrethPercent2")

export type Props = {
	LayoutOrder: number?,
	MockMaterial: _Types.Material?,
}

type _Props = Props & { 
	Analytics: any,
	dispatchSetBaseMaterial: (baseMaterial: string) -> (),
	Localization: any,
	Material: _Types.Material?,
	MaterialController: any,
	Stylizer: any,
}

type _Style = {
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
	self.onMaterialVariantChanged = function(materialVariant: MaterialVariant)
		local props: _Props = self.props
		local material = props.Material

		if material.MaterialVariant then
			if materialVariant.BaseMaterial == material.MaterialVariant.BaseMaterial then
				self:setState({})

				return
			end

			for _, variant in ipairs(self.variants) do
				if materialVariant == variant then
					self:setState({})

					return
				end
			end
		end
	end

	self.onMaterialAddedRemoved = function(_, materialVariant: MaterialVariant)
		local props: _Props = self.props
		local material = props.Material
		local baseMaterial = if getFFlagMaterialManagerGlassNeonForceField() then material.Material else material.MaterialVariant.BaseMaterial

		if materialVariant.BaseMaterial == baseMaterial then
			self:setState({
				variantsListChanged = true
			})
		end
	end

	self.onOverrideChanged = function(materialEnum: Enum.Material)
		local props: _Props = self.props
		local material = props.Material
		local baseMaterial = if getFFlagMaterialManagerGlassNeonForceField() then material.Material else material.MaterialVariant.BaseMaterial

		if materialEnum == baseMaterial then
			self:setState({})
		end
	end

	self.onMaterialItemActivated = function(value, index)
		local props: _Props = self.props
		local material = props.Material
		local baseMaterial = if getFFlagMaterialManagerGlassNeonForceField() then material.Material else material.MaterialVariant.BaseMaterial

		if index == 1 then
			props.MaterialController:setMaterialOverride(baseMaterial)
		else
			props.MaterialController:setMaterialOverride(baseMaterial, self.state.items[index])
		end

		self:setState({
			index = index
		})
	end

	self.onOverrideToggled = function()
		local props : _Props = self.props
		local material = props.Material

		if material.MaterialVariant then
			local materialType = material.MaterialVariant.BaseMaterial
			local materialName = material.MaterialVariant.Name

			local materialIndex = 1
			for index, name in ipairs(self.state.items) do
				if materialName == name then
					materialIndex = index
				end
			end

			if self.state.index ~= materialIndex then
				props.MaterialController:setMaterialOverride(materialType, materialName)
			else
				materialIndex = 1
				props.MaterialController:setMaterialOverride(materialType)
			end

			self:setState({
				index = materialIndex
			})

			if FIntInfluxReportMaterialManagerHundrethPercent2 > 0 then
				props.Analytics:report("setOverrideToggled")
			end
		end
	end

	self.variants = {}
	self.state = {
		index = -1,
		items = {},
	}
end

function MaterialOverrides:willUnmount()
	if self.materialChangedConnection then
		self.materialChangedConnection:Disconnect()
		self.materialChangedConnection = nil
	end

	if self.materialAddedConnection then
		self.materialAddedConnection:Disconnect()
		self.materialAddedConnection = nil
	end

	if self.materialRemovedConnection then
		self.materialRemovedConnection:Disconnect()
		self.materialRemovedConnection = nil
	end

	if self.overrideChangedConnection then
		self.overrideChangedConnection:Disconnect()
		self.overrideChangedConnection = nil
	end

	if self.overrideStatusChangedConnection then
		self.overrideStatusChangedConnection:Disconnect()
		self.overrideStatusChangedConnection = nil
	end
end

function MaterialOverrides:didMount()
	local props: _Props = self.props
	local localization = props.Localization
	local materialController = props.MaterialController

	self.materialChangedConnection = materialController:getMaterialChangedSignal():Connect(self.onMaterialVariantChanged)
	self.materialAddedConnection = materialController:getMaterialAddedSignal():Connect(self.onMaterialAddedRemoved)
	self.materialRemovedConnection = materialController:getMaterialRemovedSignal():Connect(self.onMaterialAddedRemoved)
	self.overrideChangedConnection = materialController:getOverrideChangedSignal():Connect(self.onOverrideChanged)
	self.overrideStatusChangedConnection = materialController:getOverrideStatusChangedSignal():Connect(self.onOverrideChanged)

	if props.Material then
		-- Move into function call with FFlagMaterialManagerGlassNeonForceField
		local material
		if getFFlagMaterialManagerGlassNeonForceField() then 
			material = props.Material.Material
		elseif props.Material.MaterialVariant then
			material = props.Material.MaterialVariant.BaseMaterial
		else
			-- Remove with the FFlagMaterialManagerGlassNeonForceField check, this is here due to Luau reasons
			assert("Missing material")
			material = Enum.Material.Plastic
		end
		local items, index = materialController:getMaterialOverrides(material)
		table.insert(items, 1, localization:getText("MaterialOverrides", "None"))

		self:setState({
			items = items,
			index = index + 1
		})
	end
end

function MaterialOverrides:didUpdate(prevProps: _Props)
	local props: _Props = self.props
	local localization = props.Localization
	local materialController = props.MaterialController

	if prevProps.Material ~= props.Material or self.state.variantsListChanged then
		if props.Material then
			-- Move into function call with FFlagMaterialManagerGlassNeonForceField
			local material
			if getFFlagMaterialManagerGlassNeonForceField() then 
				material = props.Material.Material
			elseif props.Material.MaterialVariant then
				material = props.Material.MaterialVariant.BaseMaterial
			else
				-- Remove with the FFlagMaterialManagerGlassNeonForceField check, this is here due to Luau reasons
				assert("Missing material")
				material = Enum.Material.Plastic
			end
			local items, index = materialController:getMaterialOverrides(material)
			table.insert(items, 1, localization:getText("MaterialOverrides", "None"))

			self:setState({
				items = items,
				index = index + 1,
				variantsListChanged = false,
			})
		end
	end
end

function MaterialOverrides:render()
	local props: _Props = self.props
	local style = props.Stylizer.MaterialDetails
	local localization = props.Localization
	local material = props.Material
	local materialController = props.MaterialController

	-- Move into function call with FFlagMaterialManagerGlassNeonForceField
	local materialType = if getFFlagMaterialManagerGlassNeonForceField() then material.Material else material.MaterialVariant.BaseMaterial
	local override = materialController:getMaterialOverride(materialType)

	if not material then
		return Roact.createElement(Pane)
	end

	local contents = {}

	-- Move into if statement with FFlagMaterialManagerGlassNeonForceField
	local isBuiltin = if getFFlagMaterialManagerGlassNeonForceField() then not material.MaterialVariant else material.IsBuiltin

	if isBuiltin then
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
					Items = self.state.items,
					OnItemActivated = self.onMaterialItemActivated,
					PlaceholderText = override,
					SelectedIndex = self.state.index,
					Width = style.OverrideSize.X.Offset,
				})
			})
		}
	else
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
					OnClick = self.onOverrideToggled,
					Selected = self.state.index > 1 and self.state.items[self.state.index] == material.MaterialVariant.Name,
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
	MaterialController = MaterialController,
	Stylizer = Stylizer,
})(MaterialOverrides)

return RoactRodux.connect(
	function(state, props)
		return {
			Material = props.MockMaterial or state.MaterialBrowserReducer.Material,
		}
	end,
	function(dispatch)
		return {
			dispatchSetBaseMaterial = function(baseMaterial: string)
				dispatch(SetBaseMaterial(baseMaterial))
			end,
		}
	end
)(MaterialOverrides)

