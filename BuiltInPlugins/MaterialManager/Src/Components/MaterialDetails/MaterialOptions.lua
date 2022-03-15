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
local DropdownMenu = UI.DropdownMenu
local Image = UI.Decoration.Image
local Pane = UI.Pane
local TruncatedTextLabel = UI.TruncatedTextLabel

local Actions = Plugin.Src.Actions
local SetMaterial = require(Actions.SetMaterial)
local SetBaseMaterial = require(Actions.SetBaseMaterial)
local SetFromVariantInstance = require(Actions.SetFromVariantInstance)

local Flags = Plugin.Src.Flags
local getFFlagMaterialServiceStringOverride = require(Flags.getFFlagMaterialServiceStringOverride)

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
	dispatchSetMaterial : (material : _Types.Material) -> (),
	dispatchSetBaseMaterial : (baseMaterial : string) -> (),
	dispatchSetFromVariantInstance : (materialVariant : MaterialVariant) -> (),
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
	DropdownSize : UDim2,
	Favorite : _Types.Image,
	HeaderBackground : Color3,
	HeaderSize : UDim2,
	ImagePosition : UDim2,
	ImageSize : UDim2,
	LabelColumnWidth : UDim,
	MoreMenu : _Types.Image,
	NameLabelSize : UDim2,
	LabelRowSize : UDim2,
	Padding : number,
	TextureLabelSize : UDim2,
	TextureRowSize : UDim2,
	TextureSize : UDim2,
}

local MaterialOptions = Roact.PureComponent:extend("MaterialOptions")

function MaterialOptions:init()
	self.toggleFavorite = function()
		-- TODO : Add favorites
	end

	self.openMenu = function()
		self:setState({
			menu = true
		})
	end

	self.closeMenu = function()
		self:setState({
			menu = false
		})
	end

	self.builtinMaterialMenu = function(isPart, isTerrain, isMaterial)
		local props : _Props = self.props
		local localization = props.Localization
		local material : _Types.Material? = props.Material
		local materialController = props.MaterialController

		if material then
			local baseMaterial = material.MaterialVariant.BaseMaterial

			local createVariant = localization:getText("MaterialOptions", "CreateVariant")
			local resetPartMaterial = localization:getText("MaterialOptions", "ResetPartMaterial")
			local resetTerrainMaterial = localization:getText("MaterialOptions", "ResetTerrainMaterial")
			local resetMaterial = localization:getText("MaterialOptions", "ResetMaterial")

			local items = {
				createVariant
			}

			if isPart then
				table.insert(items, resetPartMaterial)
			end

			if isTerrain then
				table.insert(items, resetTerrainMaterial)
			end

			if isMaterial then
				table.insert(items, resetMaterial)
			end

			local function onItemActivated(value, index)
				if value == createVariant then
					props.dispatchSetBaseMaterial(baseMaterial)
					props.OpenPrompt("Create")
				elseif value == resetPartMaterial then
					materialController:setPartOverride(baseMaterial)
				elseif value == resetTerrainMaterial then
					materialController:setTerrainOverride(baseMaterial)
				elseif value == resetMaterial then
					materialController:setMaterialOverride(baseMaterial)
				end
			end

			return Roact.createElement(DropdownMenu, {
				Hide = not self.state.menu,
				Items = items,
				OnItemActivated = onItemActivated,
				OnFocusLost = self.closeMenu
			})
		end

		return nil
	end

	self.variantMaterialMenu = function(isPart, isTerrain, isMaterial)
		local props : _Props = self.props
		local localization = props.Localization
		local material : _Types.Material? = props.Material
		local materialController = props.MaterialController

		if material then
			local edit = localization:getText("MaterialOptions", "Edit")
			local setPartOverride = localization:getText("MaterialOptions", "SetPartOverride")
			local setTerrainOverride = localization:getText("MaterialOptions", "SetTerrainOverride")
			local setMaterialOverride = localization:getText("MaterialOptions", "SetOverride")

			local baseMaterial = material.MaterialVariant.BaseMaterial

			local items = {
				edit,
			}

			if isPart then
				table.insert(items, setPartOverride)
			end

			if isTerrain then
				table.insert(items, setTerrainOverride)
			end

			if isMaterial then
				table.insert(items, setMaterialOverride)
			end

			local function onItemActivated(value, index)
				if value == edit then
					props.dispatchSetFromVariantInstance(material.MaterialVariant)
					props.OpenPrompt("Edit")
				elseif value == setPartOverride then
					materialController:setPartOverride(baseMaterial, material.MaterialVariant)
				elseif value == setTerrainOverride then
					materialController:setTerrainOverride(baseMaterial, material.MaterialVariant)
				elseif value == setMaterialOverride then
					materialController:setMaterialOverride(baseMaterial, material.MaterialVariant.Name)
				end
			end

			return Roact.createElement(DropdownMenu, {
				Hide = not self.state.menu,
				Items = items,
				OnItemActivated = onItemActivated,
				OnFocusLost = self.closeMenu
			})
		end

		return nil
	end

	self.buildMoreMenu = function()
		local props : _Props = self.props
		local material : _Types.Material? = props.Material

		local isMaterial = getFFlagMaterialServiceStringOverride()

		if material then
			local base = material.MaterialType == "Base"
			local isPart = not isMaterial and (material.MaterialType == "Part" or base)
			local isTerrain = not isMaterial and (material.MaterialType == "Terrain" or base)

			if material.IsBuiltin then
				return self.builtinMaterialMenu(isPart, isTerrain, isMaterial)
			else
				return self.variantMaterialMenu(isPart, isTerrain, isMaterial)
			end
		end

		return nil
	end

	self.state = {
		menu = false
	}
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

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.XY,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
		Padding = 10,
	}, {
		Top = Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = 1,
			Size = style.LabelRowSize,
		}, {
			Name = Roact.createElement(TruncatedTextLabel, {
				LayoutOrder = 1,
				Size = style.NameLabelSize,
				Text = name,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			Favorite = Roact.createElement(Button, {
				LayoutOrder = 2,
				OnClick = self.toggleFavorite,
				Size = style.ButtonSize,
				Style = style.ButtonStyle,
			}, {
				Image = Roact.createElement(Image, {
					Style = style.Favorite,
					Size = style.ImageSize,
					Position = style.ImagePosition,
				})
			}),
			Menu = Roact.createElement(Button, {
				LayoutOrder = 3,
				OnClick = self.openMenu,
				Size = style.ButtonSize,
				Style = style.ButtonStyle,
			}, {
				Image = Roact.createElement(Image, {
					Style = style.MoreMenu,
					Size = style.ImageSize,
					Position = style.ImagePosition,
				}),
				DropdownMenu = self.buildMoreMenu()
			}),
		}),
		Bottom = Roact.createElement(TruncatedTextLabel, {
			LayoutOrder = 2,
			Size = style.LabelRowSize,
			Text = fullMaterialType,
			TextXAlignment = Enum.TextXAlignment.Left,
		})
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
			dispatchSetMaterial = function(material : _Types.Material)
				dispatch(SetMaterial(material))
			end,
			dispatchSetFromVariantInstance = function(materialVariant : MaterialVariant)
				dispatch(SetFromVariantInstance(materialVariant))
			end,
			dispatchSetBaseMaterial = function(baseMaterial : Enum.Material)
				dispatch(SetBaseMaterial(baseMaterial))
			end,
		}
	end
)(MaterialOptions)
