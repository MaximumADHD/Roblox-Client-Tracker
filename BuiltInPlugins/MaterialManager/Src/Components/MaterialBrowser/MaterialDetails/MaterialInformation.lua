local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Button = UI.Button
local Image = UI.Decoration.Image
local Pane = UI.Pane
local Tooltip = UI.Tooltip
local TruncatedTextLabel = UI.TruncatedTextLabel

local GeneralServiceController = require(Plugin.Src.Controllers.GeneralServiceController)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local Actions = Plugin.Src.Actions
local ClearMaterialVariant = require(Actions.ClearMaterialVariant)
local SetBaseMaterial = require(Actions.SetBaseMaterial)
local SetFromVariantInstance = require(Actions.SetFromVariantInstance)
local SetMode = require(Actions.SetMode)

local Constants = Plugin.Src.Resources.Constants
local getFullMaterialType = require(Constants.getFullMaterialType)
local getMaterialName = require(Constants.getMaterialName)
local getSupportedMaterials = require(Constants.getSupportedMaterials)

local supportedMaterials = getSupportedMaterials()

export type Props = {
	LayoutOrder: number?,
	MaterialMock: _Types.Material?,
	OpenPrompt: (type: _Types.MaterialPromptType) -> (),
}

type _Props = Props & { 
	Analytics: any,
	dispatchClearMaterialVariant: () -> (),
	dispatchSetBaseMaterial: (baseMaterial: Enum.Material) -> (),
	dispatchSetFromVariantInstance: (materialVariant: MaterialVariant) -> (),
	dispatchSetMode: (mode: string) -> (),
	GeneralServiceController: any,
	Localization: any,
	Material: _Types.Material?,
	Stylizer: any,
}

type _Style = {
	AdditionalLabelSize: UDim2,
	AdditionalTextSize: UDim2,
	ApplyToSelection: _Types.Image,
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

local MaterialInformation = Roact.PureComponent:extend("MaterialInformation")

function MaterialInformation:init()
	self.edit = function()
		local props: _Props = self.props
		local material: _Types.Material? = props.Material

		if material and material.MaterialVariant then
			props.dispatchClearMaterialVariant()
			props.dispatchSetFromVariantInstance(material.MaterialVariant)
			props.dispatchSetMode("Edit")
			props.OpenPrompt("Edit")
		end
	end

	self.delete = function()
		local props: _Props = self.props
		local material: _Types.Material? = props.Material

		if material and material.MaterialVariant then
			props.GeneralServiceController:destroyWithUndo(material.MaterialVariant)
			props.Analytics:report("deleteMaterialVariant")
		end
	end

	self.createVariant = function()
		local props: _Props = self.props
		local material: _Types.Material? = props.Material

		if material and not material.MaterialVariant then
			props.dispatchClearMaterialVariant()
			props.dispatchSetBaseMaterial(material.Material)
			props.dispatchSetMode("Create")
			props.OpenPrompt("Create")
		end
	end

	self.applyToSelection = function()
		local props: _Props = self.props

		if props.Material then
			props.GeneralServiceController:ApplyToSelection(props.Material.Material,
				if props.Material.MaterialVariant then props.Material.MaterialVariant.Name else nil)
			props.Analytics:report("applyToSelectionButton")
		end
	end
end

function MaterialInformation:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.MaterialDetails
	local localization = props.Localization
	local material = props.Material

	if not material then
		return Roact.createElement(Pane)
	end

	local isBuiltin = not material.MaterialVariant
	local name = if isBuiltin then localization:getText("Materials", getMaterialName(material.Material)) else material.MaterialVariant.Name

	local fullMaterialType = getFullMaterialType(material, localization)
	local path = material.MaterialPath

	local localizedPathParts = {}
	for index, subPath in ipairs(path) do
		localizedPathParts[index] = localization:getText("Categories", subPath)
	end

	local pathString = table.concat(localizedPathParts, " > ")

	local numButtons = 0
	if material.MaterialVariant then
		numButtons = 3
	elseif not material.MaterialVariant and supportedMaterials[material.Material] then
		numButtons = 2
	elseif not supportedMaterials[material.Material] then
		numButtons = 1
	end
	local nameLabelSize = UDim2.new(1, -(numButtons * style.ButtonSize.X.Offset), 1, 0)

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.XY,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
		Padding = 10,
	}, {
		Title = Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = 1,
			Size = style.LabelRowSize,
		}, {
			Name = Roact.createElement(TruncatedTextLabel, {
				LayoutOrder = 1,
				Font = style.HeaderFont,
				Size = nameLabelSize,
				Text = name,
				TextSize = style.TitleTextSize,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			ApplyToSelection = Roact.createElement(Button, {
				LayoutOrder = 2,
				OnClick = self.applyToSelection,
				Size = style.ButtonSize,
				Style = style.ButtonStyle,
			}, {
				Image = Roact.createElement(Image, {
					Style = style.ApplyToSelection,
					Size = style.ImageSize,
					Position = style.ImagePosition,
				}),
				Tooltip = Roact.createElement(Tooltip, {
					Text = localization:getText("TopBar", "Apply"),
				})
			}),
			CreateVariant = if isBuiltin and supportedMaterials[material.Material] then
				Roact.createElement(Button, {
					LayoutOrder = 3,
					OnClick = self.createVariant,
					Size = style.ButtonSize,
					Style = style.ButtonStyle,
				}, {
					Image = Roact.createElement(Image, {
						Style = style.CreateVariant,
						Size = style.ImageSize,
						Position = style.ImagePosition,
					}),
					Tooltip = Roact.createElement(Tooltip, {
						Text = localization:getText("MaterialInformation", "CreateVariant")
					})
				}) else nil,
			Edit = if not isBuiltin then
				Roact.createElement(Button, {
					LayoutOrder = 3,
					OnClick = self.edit,
					Size = style.ButtonSize,
					Style = style.ButtonStyle,
				}, {
					Image = Roact.createElement(Image, {
						Style = style.Edit,
						Size = style.ImageSize,
						Position = style.ImagePosition,
					}),
					Tooltip = Roact.createElement(Tooltip, {
						Text = localization:getText("MaterialInformation", "Edit")
					})
				}) else nil,
			Delete = if not isBuiltin then
				Roact.createElement(Button, {
					LayoutOrder = 4,
					OnClick = self.delete,
					Size = style.ButtonSize,
					Style = style.ButtonStyle,
				}, {
					Image = Roact.createElement(Image, {
						Style = style.Delete,
						Size = style.ImageSize,
						Position = style.ImagePosition,
					}),
					Tooltip = Roact.createElement(Tooltip, {
						Text = localization:getText("MaterialInformation", "Delete")
					})
				}) else nil,
		}),
		MaterialType = Roact.createElement(TruncatedTextLabel, {
			LayoutOrder = 2,
			Size = style.LabelRowSize,
			Text = fullMaterialType,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Category = Roact.createElement(TruncatedTextLabel, {
			LayoutOrder = 3,
			Size = style.LabelRowSize,
			Text = pathString,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end

MaterialInformation = withContext({
	Analytics = Analytics,
	GeneralServiceController = GeneralServiceController,
	Localization = Localization,
	Stylizer = Stylizer,
})(MaterialInformation)

return RoactRodux.connect(
	function(state: MainReducer.State, props: Props)
		return {
			Material = props.MaterialMock or state.MaterialBrowserReducer.Material
		}
	end,
	function(dispatch)
		return {
			dispatchClearMaterialVariant = function()
				dispatch(ClearMaterialVariant())
			end,
			dispatchSetFromVariantInstance = function(materialVariant: MaterialVariant)
				dispatch(SetFromVariantInstance(materialVariant))
			end,
			dispatchSetBaseMaterial = function(baseMaterial: Enum.Material)
				dispatch(SetBaseMaterial(baseMaterial))
			end,
			dispatchSetMode = function(mode: string)
				dispatch(SetMode(mode))
			end,
		}
	end
)(MaterialInformation)
