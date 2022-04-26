local Plugin = script.Parent.Parent.Parent.Parent
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
local TruncatedTextLabel = UI.TruncatedTextLabel

local Actions = Plugin.Src.Actions
local ClearMaterialVariant = require(Actions.ClearMaterialVariant)
local SetMaterial = require(Actions.SetMaterial)
local SetBaseMaterial = require(Actions.SetBaseMaterial)
local SetFromVariantInstance = require(Actions.SetFromVariantInstance)
local SetMode = require(Actions.SetMode)

local Util = Plugin.Src.Util
local getFullMaterialType = require(Util.getFullMaterialType)
local MaterialController = require(Util.MaterialController)

export type Props = {
	LayoutOrder : number?,
	MaterialMock : _Types.Material?,
	OpenPrompt : (type : _Types.MaterialPromptType) -> (),
}

type _Props = Props & { 
	Analytics : any,
	dispatchClearMaterialVariant : () -> (),
	dispatchSetMaterial : (material : _Types.Material) -> (),
	dispatchSetBaseMaterial : (baseMaterial : Enum.Material) -> (),
	dispatchSetFromVariantInstance : (materialVariant : MaterialVariant) -> (),
	dispatchSetMode : (mode : string) -> (),
	Localization : any,
	Material : _Types.Material?,
	MaterialController : any,
	Stylizer : any,
}

type _Style = {
	ButtonPosition : UDim2,
	ButtonSize : UDim2,
	ButtonStyle : string,
	Close : _Types.Image,
	CreateVariant : _Types.Image,
	Delete : _Types.Image,
	DropdownSize : UDim2,
	Edit : _Types.Image,
	HeaderBackground : Color3,
	HeaderFont : Enum.Font,
	HeaderSize : UDim2,
	ImagePosition : UDim2,
	ImageSize : UDim2,
	NameLabelSizeBuiltIn : UDim2,
	NameLabelSizeVariant : UDim2,
	LabelRowSize : UDim2,
	OverrideSize : UDim2,
	Padding : number,
	SectionHeaderTextSize : number,
	TextureLabelSize : UDim2,
	TextureRowSize : UDim2,
	TextureSize : UDim2,
	TitleTextSize : number,
}

local changeHistoryService = game:GetService("ChangeHistoryService")

local MaterialOptions = Roact.PureComponent:extend("MaterialInformation")

function MaterialOptions:init()
	self.edit = function()
		local props : _Props = self.props
		local material : _Types.Material? = props.Material

		if material then
			props.dispatchSetFromVariantInstance(material.MaterialVariant)
			props.dispatchSetMode("Edit")
			props.OpenPrompt("Edit")
		end
	end

	self.delete = function()
		local props : _Props = self.props
		local material : _Types.Material? = props.Material

		if material then
			changeHistoryService:SetWaypoint("Delete MaterialVariant")
			material.MaterialVariant.Parent = nil
		end
	end

	self.createVariant = function()
		local props : _Props = self.props
		local material : _Types.Material? = props.Material

		if material then
			props.dispatchClearMaterialVariant()
			props.dispatchSetBaseMaterial(material.MaterialVariant.BaseMaterial)
			props.dispatchSetMode("Create")
			props.OpenPrompt("Create")
		end
	end
end

function MaterialOptions:willUnmount()
	if self.materialChangedConnection then
		self.materialChangedConnection:Disconnect()
		self.materialChangedConnection = nil
	end
end

function MaterialOptions:didMount()
	local props : _Props = self.props
	local materialController = props.MaterialController
	local dispatchSetMaterial = props.dispatchSetMaterial

	self.materialChangedConnection = materialController:getMaterialChangedSignal():Connect(function(materialVariant: MaterialVariant)
		if self.props.Material and materialVariant == self.props.Material.MaterialVariant then
			dispatchSetMaterial(materialController:getMaterial(materialVariant))
		end
	end)
end

function MaterialOptions:render()
	local props : _Props = self.props
	local style : _Style = props.Stylizer.MaterialDetails
	local localization = props.Localization
	local material = props.Material

	if not material then
		return Roact.createElement(Pane)
	end

	local name = if material.IsBuiltin then localization:getText("Materials", material.MaterialVariant.Name) else material.MaterialVariant.Name
	local fullMaterialType = getFullMaterialType(material, localization)

	local path = material.MaterialPath
	local localizedPathParts = {}

	for index, subPath in ipairs(path) do
		localizedPathParts[index] = localization:getText("Categories", subPath)
	end

	local pathString = table.concat(localizedPathParts, " > ")

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
				Size = if material.IsBuiltin then style.NameLabelSizeBuiltIn else style.NameLabelSizeVariant,
				Text = name,
				TextSize = style.TitleTextSize,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			CreateVariant = if material.IsBuiltin then
				Roact.createElement(Button, {
					LayoutOrder = 2,
					OnClick = self.createVariant,
					Size = style.ButtonSize,
					Style = style.ButtonStyle,
				}, {
					Image = Roact.createElement(Image, {
						Style = style.CreateVariant,
						Size = style.ImageSize,
						Position = style.ImagePosition,
					})
				}) else nil,
			Edit = if not material.IsBuiltin then
				Roact.createElement(Button, {
					LayoutOrder = 2,
					OnClick = self.edit,
					Size = style.ButtonSize,
					Style = style.ButtonStyle,
				}, {
					Image = Roact.createElement(Image, {
						Style = style.Edit,
						Size = style.ImageSize,
						Position = style.ImagePosition,
					})
				}) else nil,
			Delete = if not material.IsBuiltin then
				Roact.createElement(Button, {
					LayoutOrder = 3,
					OnClick = self.delete,
					Size = style.ButtonSize,
					Style = style.ButtonStyle,
				}, {
					Image = Roact.createElement(Image, {
						Style = style.Delete,
						Size = style.ImageSize,
						Position = style.ImagePosition,
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

MaterialOptions = withContext({
	Analytics = Analytics,
	Localization = Localization,
	MaterialController = MaterialController,
	Stylizer = Stylizer,
})(MaterialOptions)

return RoactRodux.connect(
	function(state, props)
		return {
			Material = props.MaterialMock or state.MaterialBrowserReducer.Material,
		}
	end,
	function(dispatch)
		return {
			dispatchClearMaterialVariant = function()
				dispatch(ClearMaterialVariant())
			end,
			dispatchSetMaterial = function(material : _Types.Material)
				dispatch(SetMaterial(material))
			end,
			dispatchSetFromVariantInstance = function(materialVariant : MaterialVariant)
				dispatch(SetFromVariantInstance(materialVariant))
			end,
			dispatchSetBaseMaterial = function(baseMaterial : Enum.Material)
				dispatch(SetBaseMaterial(baseMaterial))
			end,
			dispatchSetMode = function(mode : string)
				dispatch(SetMode(mode))
			end,
		}
	end
)(MaterialOptions)
