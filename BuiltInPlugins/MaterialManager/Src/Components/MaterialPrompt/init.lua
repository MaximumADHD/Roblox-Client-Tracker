local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local _Types = require(Plugin.Src.Types)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local StudioUI = Framework.StudioUI
local StyledDialog = StudioUI.StyledDialog

local UI = Framework.UI
local Pane = UI.Pane

local Actions = Plugin.Src.Actions
local ClearMaterialVariant = require(Actions.ClearMaterialVariant)
local SetMaterial = require(Actions.SetMaterial)
local SetMaterialVariant = require(Actions.SetMaterialVariant)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local Constants = Plugin.Src.Resources.Constants
local getMaterialPath = require(Constants.getMaterialPath)
local getMaterialName = require(Constants.getMaterialName)

local Controllers = Plugin.Src.Controllers
local GeneralServiceController = require(Plugin.Src.Controllers.GeneralServiceController)
local ImportAssetHandler = require(Controllers.ImportAssetHandler)
local MaterialServiceController = require(Controllers.MaterialServiceController)

local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerRefactorMaterialVariantCreator = require(Flags.getFFlagMaterialManagerRefactorMaterialVariantCreator)
local getFFlagMaterialManagerUIGlitchFix = require(Flags.getFFlagMaterialManagerUIGlitchFix)
local getFFlagMaterialManagerStudsPerTileFix = require(Flags.getFFlagMaterialManagerStudsPerTileFix)
local getFFlagMaterialManagerAnalyticsCounter = require(Flags.getFFlagMaterialManagerAnalyticsCounter)
local FIntInfluxReportMaterialManagerHundrethPercent2 = game:GetFastInt("InfluxReportMaterialManagerHundrethPercent2")

local MaterialVariantCreator = if getFFlagMaterialManagerRefactorMaterialVariantCreator() then require(Plugin.Src.Components.MaterialPrompt.MaterialVariantCreator) else require(Plugin.Src.Components.MaterialPrompt.DEPRECATED_MaterialVariantCreator)

export type Props = {
	PromptClosed: () -> (),
	Name: string?,
	BaseMaterial: Enum.Material?,
	ColorMap: _Types.TextureMap?,
	MetalnessMap: _Types.TextureMap?,
	NormalMap: _Types.TextureMap?,	
	RoughnessMap: _Types.TextureMap?,
	StudsPerTile: number?,
	MaterialPattern: Enum.MaterialPattern,
	MaterialMock: _Types.Material?,
	Mode: string?,
	Material: _Types.Material?,
	Materials: any,
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
	GeneralServiceController: any,
	ImportAssetHandler: any,
	MaterialServiceController: any,
	dispatchClearMaterialVariant: () -> (),
	dispatchSetMaterial: (material: _Types.Material) -> (), -- Remove with FFlagMaterialManagerUIGlitchFix
	dispatchSetMaterialVariant: (materialVariant: MaterialVariant) -> (),
}

type _Style = {
	DialogWidth: number,
	DialogHeight: number,
}

local MaterialPrompt = Roact.PureComponent:extend("MaterialPrompt")

function MaterialPrompt:init()
	self:setState({
		saveAttempt = false,
		ErrorStudsPerTile = nil,
	})

	self.hasValidName = function()
		return if self.props.Name and self.props.Name ~= "" then true else false
	end

	self.getNameError = function()
		local props: _Props = self.props
		local localization = props.Localization

		local lastName = if props.Mode == "Edit" then self.materialVariant.Name else nil
		local lastBaseMaterial = if props.Mode == "Edit" then self.materialVariant.BaseMaterial else nil
	
		if not self.state.saveAttempt then
			return nil
		end

		if not self.hasValidName() then 
			return localization:getText("CreateDialog", "ErrorNoName")
		elseif lastName and lastName == props.Name and lastBaseMaterial and lastBaseMaterial == props.BaseMaterial then
			return nil
		elseif props.MaterialServiceController:checkMaterialName(props.Name, props.BaseMaterial) then
			return localization:getText("CreateDialog", "ErrorNameExists")
		end
		return nil
	end

	self.getBaseMaterialError = function()
		local props: _Props = self.props
		local localization = props.Localization
	
		if not self.state.saveAttempt then
			return nil
		end
		if not props.BaseMaterial then
			return localization:getText("CreateDialog", "ErrorBaseMaterialNotSelected")
		end
		return nil
	end

	self.clearMaterialVariantOriginal = function()
		if self.materialVariantOriginal then
			self.materialVariantOriginal:Destroy()
			self.materialVariantOriginal = nil
		end
	end

	self.clearMaterialVariant = function()
		if self.materialVariant then
			self.materialVariant:Destroy()
			self.materialVariant = nil
		end
	end

	self.createTempMaterialVariant = function()
		local props: _Props = self.props
	
		self.clearMaterialVariantOriginal()
		self.clearMaterialVariant()
	
		local tempName = "MaterialVariant"
		if props.Mode == "Create" then
			self.materialVariant = Instance.new("MaterialVariant")
			self.materialVariant.Name = tempName
			self.materialVariant.Parent = game:GetService("MaterialService")
		elseif props.Mode == "Edit" then
			local material = props.Material
			if material then
				-- self.materialVariantOriginal: has same properties as original MV, store it to be able to restore it on Cancel/Close, give it a temp name
				-- self.materialVariant: original MV, served to modify and show its preview
				self.materialVariantOriginal = material.MaterialVariant:Clone()
				self.materialVariantOriginal.Name = tempName
				self.materialVariantOriginal.Parent = game:GetService("CoreGui")

				self.materialVariant = material.MaterialVariant
			end
		end
	end

	self.setStudsPerTileError = function(error)
		self:setState({
			ErrorStudsPerTile = error or Roact.None,
		})
	end

	self.sendAnalyticsToKibanaOnSave = function()
		local props: _Props = self.props
		local baseMaterial = props.BaseMaterial
	
		if props.Mode == "Create" and baseMaterial then
			local args = {
				["BaseMaterial"] = getMaterialName(baseMaterial),
			}
			props.Analytics:report("newMaterialVariant", args, FIntInfluxReportMaterialManagerHundrethPercent2)
		elseif props.Mode == "Edit" then
			props.Analytics:report("editMaterialVariantAndSave")
		end
	end

	self.onSave = function()
		local props: _Props = self.props
		local assetHandler = props.ImportAssetHandler

		self:setState({
			saveAttempt = true,
		})

		local function handleMaps(maps: { [string]: _Types.TextureMap }, materialVariant: MaterialVariant)
			for mapType, map in pairs(maps) do
				-- Upload maps if a new asset
				if map.file then
					task.spawn(function()
						assetHandler:handleAsset(map.file, function(assetId)
							(materialVariant:: any)[mapType] = assetId
						end)
					end)
					if getFFlagMaterialManagerAnalyticsCounter() and props.Mode == "Create" then
						props.Analytics:report("importTextureMap")
					end
				-- Use already uploaded assetId
				elseif map.assetId then
					(materialVariant:: any)[mapType] = map.assetId
					if getFFlagMaterialManagerAnalyticsCounter() and props.Mode == "Create" then
						props.Analytics:report("uploadAssetIdTextureMap")
					end
				else
					(materialVariant:: any)[mapType] = ""
				end
			end
		end

		if self.getNameError() or self.getBaseMaterialError() or self.state.ErrorStudsPerTile then
			return
		end

		self.materialVariant.Name = props.Name
		self.materialVariant.BaseMaterial = props.BaseMaterial
		-- Set texture maps
		local maps = {
			ColorMap = props.ColorMap or "",
			MetalnessMap = props.MetalnessMap or "",
			NormalMap = props.NormalMap or "",
			RoughnessMap = props.RoughnessMap or ""
		}
		handleMaps(maps, self.materialVariant)
		props.GeneralServiceController:saveMaterialVariant(self.materialVariant)

		if getFFlagMaterialManagerUIGlitchFix() then
			props.dispatchSetMaterialVariant(self.materialVariant)
		else
			props.dispatchSetMaterial(props.Materials[self.materialVariant])
		end

		props.MaterialServiceController:setPath(getMaterialPath(self.materialVariant.BaseMaterial))
		if getFFlagMaterialManagerAnalyticsCounter() then
			self.sendAnalyticsToKibanaOnSave()
		end
		
		if props.Mode == "Edit" then
			self.clearMaterialVariantOriginal()
		end
		props.PromptClosed()
		props.dispatchClearMaterialVariant()
	end

	self.onClose = function()
		local props: _Props = self.props

		if props.Mode == "Edit" then
			-- return back to original MV
			local materialVariant = self.materialVariantOriginal
			materialVariant.Name = self.materialVariant.Name
			materialVariant.Parent = game:GetService("MaterialService")
			props.dispatchSetMaterialVariant(materialVariant)
		end

		if not getFFlagMaterialManagerStudsPerTileFix() then
			self.clearMaterialVariant()
		end

		props.PromptClosed()
		if getFFlagMaterialManagerStudsPerTileFix() then
			self.clearMaterialVariant()
		end
		if not getFFlagMaterialManagerUIGlitchFix() then
			props.dispatchClearMaterialVariant()
		end
	end

	self.onButtonPressed = function(key)
		if key == "Cancel" then
			self.onClose()
		elseif key == "Save" then
			self.onSave()
		end
	end
end

function MaterialPrompt:didMount()
	local props: _Props = self.props

	self.createTempMaterialVariant()
	if props.Mode == "Edit" then
		if getFFlagMaterialManagerUIGlitchFix() then
			props.MaterialServiceController:setMaterial(self.materialVariant)
		end
	end
end

function MaterialPrompt:render()
	local props: _Props = self.props
	local localization = props.Localization
	local style: _Style = props.Stylizer.MaterialPrompt

	local colorMap = props.ColorMap
	local metalnessMap = props.MetalnessMap
	local normalMap = props.NormalMap
	local roughnessMap = props.RoughnessMap
	local studsPerTile = props.StudsPerTile
	local materialPattern = props.MaterialPattern

	colorMap = if colorMap then colorMap.assetId or colorMap.tempId else nil
	metalnessMap = if metalnessMap then metalnessMap.assetId or metalnessMap.tempId else nil
	normalMap = if normalMap then normalMap.assetId or normalMap.tempId else nil
	roughnessMap = if roughnessMap then roughnessMap.assetId or roughnessMap.tempId else nil

	if not self.materialVariant then
		return Roact.createElement(Pane)
	end

	self.materialVariant.ColorMap = colorMap or ""
	self.materialVariant.MetalnessMap = metalnessMap or ""
	self.materialVariant.NormalMap = normalMap or ""
	self.materialVariant.RoughnessMap = roughnessMap or ""
	self.materialVariant.StudsPerTile = studsPerTile
	self.materialVariant.MaterialPattern = materialPattern

	local mode = if props.Mode == "Create" then "CreateVariant" else "EditVariant"

	local buttons = {
		{ 
			Key = "Cancel", 
			Text = localization:getText("CreateDialog", "CancelVariant"),
			Style = "Round",
		},
		{
			Key = "Save", 
			Text = localization:getText("CreateDialog", "SaveVariant"), 
			Style = "RoundPrimary",
		}
	}

	return Roact.createElement(StyledDialog, {
		Title = localization:getText("CreateDialog", mode),
		MinContentSize = Vector2.new(style.DialogWidth, style.DialogHeight),
		Resizable = true,
		Modal = true,
		Buttons = buttons,
		OnClose = self.onClose,
		OnButtonPressed = self.onButtonPressed,
		Style = "FullBleed",
	}, {
		MaterialVariantCreator = Roact.createElement(MaterialVariantCreator, {
			ErrorName = self.getNameError(),
			ErrorBaseMaterial = self.getBaseMaterialError(),
			ErrorStudsPerTile = self.state.ErrorStudsPerTile,
			SetStudsPerTileError = self.setStudsPerTileError,
			MaterialVariantTemp = self.materialVariant,
		})
	})
end


MaterialPrompt = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
	ImportAssetHandler = ImportAssetHandler,
	GeneralServiceController = GeneralServiceController,
	MaterialServiceController = MaterialServiceController,
})(MaterialPrompt)



local function mapStateToProps(state: MainReducer.State, props: _Props)
	return {
		Name = state.MaterialPromptReducer.Name,
		BaseMaterial = state.MaterialPromptReducer.BaseMaterial,
		ColorMap = state.MaterialPromptReducer.ColorMap,
		MetalnessMap = state.MaterialPromptReducer.MetalnessMap,
		NormalMap = state.MaterialPromptReducer.NormalMap,
		RoughnessMap = state.MaterialPromptReducer.RoughnessMap,
		StudsPerTile = state.MaterialPromptReducer.StudsPerTile,
		MaterialPattern = state.MaterialPromptReducer.MaterialPattern,
		Material = props.MaterialMock or state.MaterialBrowserReducer.Material,
		Materials = state.MaterialBrowserReducer.Materials,
		Mode = state.MaterialPromptReducer.Mode,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchClearMaterialVariant = function ()
			dispatch(ClearMaterialVariant())
		end,
		dispatchSetMaterial = function(material: _Types.Material)
			dispatch(SetMaterial(material))
		end,
		dispatchSetMaterialVariant = function(materialVariant: MaterialVariant)
			dispatch(SetMaterialVariant(materialVariant))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(MaterialPrompt)
