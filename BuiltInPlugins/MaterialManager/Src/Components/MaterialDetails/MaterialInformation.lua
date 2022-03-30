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
local ClearMaterialVariant = require(Actions.ClearMaterialVariant)
local SetMaterial = require(Actions.SetMaterial)
local SetBaseMaterial = require(Actions.SetBaseMaterial)
local SetFromVariantInstance = require(Actions.SetFromVariantInstance)
local SetMode = require(Actions.SetMode)

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
	dispatchClearMaterialVariant : () -> (),
	dispatchSetMaterial : (material : _Types.Material) -> (),
	dispatchSetBaseMaterial : (baseMaterial : string) -> (),
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
	DropdownSize : UDim2,
	Favorite : _Types.Image,
	HeaderBackground : Color3,
	HeaderFont : Enum.Font,
	HeaderSize : UDim2,
	ImagePosition : UDim2,
	ImageSize : UDim2,
	LabelColumnWidth : UDim,
	MoreMenu : _Types.Image,
	NameLabelSize : UDim2,
	LabelRowSize : UDim2,
	Padding : number,
	SectionHeaderTextSize : number,
	TextureLabelSize : UDim2,
	TextureRowSize : UDim2,
	TextureSize : UDim2,
	TitleTextSize : number,
}

local MaterialOptions = Roact.PureComponent:extend("MaterialInformation")

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

			local createVariant = localization:getText("MaterialInformation", "CreateVariant")
			local resetPartMaterial = localization:getText("MaterialInformation", "ResetPartMaterial")
			local resetTerrainMaterial = localization:getText("MaterialInformation", "ResetTerrainMaterial")
			local resetMaterial = localization:getText("MaterialInformation", "ResetMaterial")

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
					props.dispatchClearMaterialVariant()
					props.dispatchSetBaseMaterial(baseMaterial)
					props.dispatchSetMode("Create")
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
			local edit = localization:getText("MaterialInformation", "Edit")
			local setPartOverride = localization:getText("MaterialInformation", "SetPartOverride")
			local setTerrainOverride = localization:getText("MaterialInformation", "SetTerrainOverride")
			local setMaterialOverride = localization:getText("MaterialInformation", "SetOverride")
			local clearPartOverride = localization:getText("MaterialInformation", "ClearPartOverride")
			local clearTerrainOverride = localization:getText("MaterialInformation", "ClearTerrainOverride")
			local clearMaterialOverride = localization:getText("MaterialInformation", "ClearOverride")

			local baseMaterial = material.MaterialVariant.BaseMaterial

			local items = {
				edit,
			}

			if isPart then
				if materialController:getPartOverride(baseMaterial) == material.MaterialVariant then
					table.insert(items, clearPartOverride)
				else
					table.insert(items, setPartOverride)
				end
			end

			if isTerrain then
				if materialController:getTerrainOverride(baseMaterial) == material.MaterialVariant then
					table.insert(items, clearTerrainOverride)
				else
					table.insert(items, setTerrainOverride)
				end
			end

			if isMaterial then
				if materialController:getMaterialOverride(baseMaterial) == material.MaterialVariant.Name then
					table.insert(items, clearMaterialOverride)
				else
					table.insert(items, setMaterialOverride)
				end
			end

			local function onItemActivated(value, index)
				if value == edit then
					props.dispatchSetFromVariantInstance(material.MaterialVariant)
					props.dispatchSetMode("Edit")
					props.OpenPrompt("Edit")
				elseif value == setPartOverride then
					materialController:setPartOverride(baseMaterial, material.MaterialVariant)
				elseif value == setTerrainOverride then
					materialController:setTerrainOverride(baseMaterial, material.MaterialVariant)
				elseif value == setMaterialOverride then
					materialController:setMaterialOverride(baseMaterial, material.MaterialVariant.Name)
				elseif value == clearPartOverride then
					materialController:setPartOverride(baseMaterial)
				elseif value == clearTerrainOverride then
					materialController:setTerrainOverride(baseMaterial)
				elseif value == clearMaterialOverride then
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
				Size = style.NameLabelSize,
				Text = name,
				TextSize = style.TitleTextSize,
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
