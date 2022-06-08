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

local Actions = Plugin.Src.Actions
local ClearMaterialVariant = require(Actions.ClearMaterialVariant)
local SetMaterial = require(Actions.SetMaterial)
local SetPath = require(Actions.SetPath)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local Constants = Plugin.Src.Resources.Constants
local getMaterialPath = require(Constants.getMaterialPath)
local getMaterialName = require(Constants.getMaterialName)

local ImportAssetHandler = require(Plugin.Src.Components.ImportAssetHandler)
local MaterialVariantCreator = require(Plugin.Src.Components.MaterialPrompt.MaterialVariantCreator)

local MaterialController = require(Plugin.Src.Util.MaterialController)

local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerGlassNeonForceField = require(Flags.getFFlagMaterialManagerGlassNeonForceField)

local FIntInfluxReportMaterialManagerHundrethPercent = game:GetFastInt("InfluxReportMaterialManagerHundrethPercent")

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
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
	ImportAssetHandler: any,
	MaterialController: any,
	dispatchClearMaterialVariant: () -> (),
	dispatchSetMaterial: (material: _Types.Material) -> (),
	dispatchSetPath: (path: _Types.Path) -> (),
}

type _Style = {
	DialogWidth: number,
	DialogHeight: number,
}

local MaterialPrompt = Roact.PureComponent:extend("MaterialPrompt")

function MaterialPrompt:hasValidName()
	return if self.props.Name and self.props.Name ~= "" then true else false
end

function MaterialPrompt:getNameError()
	local props: _Props = self.props
	local localization = props.Localization
	local materialController = props.MaterialController

	if not self.state.saveAttempt then
		return nil
	end

	if not self:hasValidName() then 
		return localization:getText("CreateDialog", "ErrorNoName")
	elseif self.lastName and self.lastName == props.Name and self.lastBaseMaterial and self.lastBaseMaterial == props.BaseMaterial then
		return nil
	elseif materialController:ifMaterialNameExists(props.Name, props.BaseMaterial) then
		return localization:getText("CreateDialog", "ErrorNameExists")
	end
	return nil
end

function MaterialPrompt:getBaseMaterialError()
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

function MaterialPrompt:sendAnalyticsToKibana()
	local props: _Props = self.props
	local baseMaterial = props.BaseMaterial

	if props.Mode == "Create" and baseMaterial then
		local args = {
			["BaseMaterial"] = getMaterialName(baseMaterial),
		}
		props.Analytics:report("newMaterialVariant", args, FIntInfluxReportMaterialManagerHundrethPercent)
	end
end

function MaterialPrompt:createTempMaterialVariant()
	local props: _Props = self.props

	if self.materialVariant then 
		self.materialVariant:Destroy() 
	end
	if self.materialVariantTemp then 
		self.materialVariantTemp:Destroy() 
	end

	self.materialVariantTemp = Instance.new("MaterialVariant")
	local tempName = "TempMaterialVariant-" .. game:GetService("HttpService"):GenerateGUID()
	if props.Mode == "Create" then
		self.materialVariantTemp.Name = tempName
		self.materialVariantTemp.Parent = game:GetService("MaterialService")
	elseif props.Mode == "Edit" then
		local material = props.Material
		if material and (getFFlagMaterialManagerGlassNeonForceField() or material.MaterialVariant) then
			-- self.materialVariant: original MV, store it to be able to restore it on Cancel/Close, give it a temp name
			-- self.materialVariantTemp: temp MV, store it under MS to modify and show its preview, give it a name and baseMaterial of original
			self.materialVariant = material.MaterialVariant
			self.materialVariant.Parent = nil
			self.materialVariantTemp.Name = material.MaterialVariant.Name
			self.materialVariantTemp.BaseMaterial = material.MaterialVariant.BaseMaterial
			self.materialVariant.Name = tempName
			self.materialVariantTemp.Parent = game:GetService("MaterialService")

			if getFFlagMaterialManagerGlassNeonForceField() then
				props.dispatchSetPath(getMaterialPath(self.materialVariantTemp.BaseMaterial))
			else
				props.dispatchSetPath(getMaterialPath(self.materialVariantTemp))
			end
		end
	end
end

function MaterialPrompt:init()
	self:setState({
		saveAttempt = false,
		ErrorStudsPerTile = nil,
	})
	self.lastName = nil
	self.lastBaseMaterial = nil
	self.materialVariant = nil
	self.materialVariantTemp = nil
	self:createTempMaterialVariant()

	self.setStudsPerTileError = function(error)
		self:setState({
			ErrorStudsPerTile = error or Roact.None,
		})
	end

	self.clearMaterialVariantTemp = function()
		if self.materialVariantTemp then
			self.materialVariantTemp:Destroy()
			self.materialVariantTemp = nil
		end
	end

	self.onSave = function()
		local props: _Props = self.props
		local materialController = props.MaterialController
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
					-- Use already uploaded assetId
				elseif map.assetId then
					(materialVariant:: any)[mapType] = map.assetId
				else
					(materialVariant:: any)[mapType] = ""
				end
			end
		end

		if props.Mode == "Edit" then
			local material = props.Material
			if material and (getFFlagMaterialManagerGlassNeonForceField() or material.MaterialVariant) then
				self.lastName = material.MaterialVariant.Name
				self.lastBaseMaterial = material.MaterialVariant.BaseMaterial
			end
		end

		if self:getNameError() or self:getBaseMaterialError() or self.state.ErrorStudsPerTile then
			return
		end

		-- TODO: move into separate method "finalizeMaterialVariant()"
		local materialVariant = self.materialVariantTemp
		if props.Mode == "Edit" then
			self.materialVariantTemp = self.materialVariant
		end

		materialVariant.Name = props.Name
		materialVariant.BaseMaterial = props.BaseMaterial
		materialVariant.StudsPerTile = props.StudsPerTile
		materialVariant.MaterialPattern = props.MaterialPattern
		materialVariant.Parent = game:GetService("MaterialService")

		-- Set texture maps
		local maps = {
			ColorMap = props.ColorMap or "",
			MetalnessMap = props.MetalnessMap or "",
			NormalMap = props.NormalMap or "",
			RoughnessMap = props.RoughnessMap or ""
		}
		handleMaps(maps, materialVariant)

		props.dispatchSetMaterial(materialController:getMaterial(materialVariant))
		if getFFlagMaterialManagerGlassNeonForceField() then
			props.dispatchSetPath(getMaterialPath(materialVariant.BaseMaterial))
		else
			props.dispatchSetPath(getMaterialPath(materialVariant))
		end

		if FIntInfluxReportMaterialManagerHundrethPercent > 0 then
			self:sendAnalyticsToKibana()
		end
		
		if props.Mode == "Edit" then
			self.clearMaterialVariantTemp()
		end
		props.PromptClosed()
		props.dispatchClearMaterialVariant()
	end

	self.onClose = function()
		local props: _Props = self.props

		if props.Mode == "Edit" then
			-- return back to original MV
			local materialVariant = self.materialVariant
			materialVariant.Name = self.materialVariantTemp.Name
			materialVariant.Parent = game:GetService("MaterialService")
		end

		self.clearMaterialVariantTemp()
		props.PromptClosed()
		props.dispatchClearMaterialVariant()
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

	if props.Mode == "Edit" then
		local materialController = props.MaterialController
		props.dispatchSetMaterial(materialController:getMaterial(self.materialVariantTemp))
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

	self.materialVariantTemp.ColorMap = colorMap or ""
	self.materialVariantTemp.MetalnessMap = metalnessMap or ""
	self.materialVariantTemp.NormalMap = normalMap or ""
	self.materialVariantTemp.RoughnessMap = roughnessMap or ""
	self.materialVariantTemp.StudsPerTile = studsPerTile
	self.materialVariantTemp.MaterialPattern = materialPattern

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
			ErrorName = self:getNameError(),
			ErrorBaseMaterial = self:getBaseMaterialError(),
			ErrorStudsPerTile = self.state.ErrorStudsPerTile,
			SetStudsPerTileError = self.setStudsPerTileError,
			MaterialVariantTemp = self.materialVariantTemp,
		})
	})
end


MaterialPrompt = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
	ImportAssetHandler = ImportAssetHandler,
	MaterialController = MaterialController,
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
		dispatchSetPath = function(path)
			dispatch(SetPath(path))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(MaterialPrompt)
