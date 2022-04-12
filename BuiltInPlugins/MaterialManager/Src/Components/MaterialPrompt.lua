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

local Util = Plugin.Src.Util
local getMaterialPath = require(Util.getMaterialPath)

local ImportAssetHandler = require(Plugin.Src.Util.ImportAssetHandler)
local MaterialVariantCreator = require(Plugin.Src.Components.MaterialVariantCreator)

local MaterialController = require(Plugin.Src.Util.MaterialController)

export type Props = {
	PromptClosed : () -> (),
	Name: string?,
	BaseMaterial: Enum.Material?,
	ColorMap : _Types.TextureMap?,
	MetalnessMap : _Types.TextureMap?,
	NormalMap : _Types.TextureMap?,	
	RoughnessMap : _Types.TextureMap?,
	MaterialMock : _Types.Material?,
	Mode : string?,
	Material : _Types.Material?,
}

type _Props = Props & {
	Analytics : any,
	Localization : any,
	Stylizer : any,
	ImportAssetHandler : any,
	MaterialController : any,
	dispatchClearMaterialVariant : () -> (),
	dispatchSetMaterial : (material : _Types.Material) -> (),
	dispatchSetPath : (path : _Types.Path) -> (),
}

type _Style = {
	DialogWidth : number,
	DialogHeight : number,
}

local MaterialPrompt = Roact.PureComponent:extend("MaterialPrompt")

function MaterialPrompt:hasValidName()
	return if self.props.Name and self.props.Name ~= "" then true else false
end

function MaterialPrompt:getNameError()
	local props : _Props = self.props
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
	local props : _Props = self.props
	local localization = props.Localization

	if not self.state.saveAttempt then
		return nil
	end

	if not props.BaseMaterial then
		return localization:getText("CreateDialog", "ErrorBaseMaterialNotSelected")
	end
	return nil
end

function MaterialPrompt:init()
	self:setState({
		saveAttempt = false,
	})
	self.lastName = nil
	self.lastBaseMaterial = nil

	self.onSave = function()
		local props : _Props = self.props

		self:setState({
			saveAttempt = true,
		})

		local assetHandler = props.ImportAssetHandler

		local function handleMaps(maps : { [string] : _Types.TextureMap }, materialVariant : MaterialVariant)
			for mapType, map in pairs(maps) do
				-- Upload maps if a new asset
				if map.file then
					task.spawn(function()
						assetHandler:handleAsset(map.file, function(assetId)
							(materialVariant :: any)[mapType] = assetId
						end)
					end)
				-- Use already uploaded assetId
				elseif map.assetId then
					(materialVariant :: any)[mapType] = map.assetId
				else
					(materialVariant :: any)[mapType] = ""
				end
			end
		end

		if props.Mode == "Edit" then
			local material = props.Material
			if material then
				self.lastName = material.MaterialVariant.Name
				self.lastBaseMaterial = material.MaterialVariant.BaseMaterial
			end
		end

		if self:getNameError() or self:getBaseMaterialError() then
			return
		end

		local materialVariant

		if props.Mode == "Create" then
			materialVariant = Instance.new("MaterialVariant")
		elseif props.Mode == "Edit" then
			local material = props.Material
			if material then
				materialVariant = material.MaterialVariant
			end
		end

		materialVariant.Name = props.Name
		materialVariant.BaseMaterial = props.BaseMaterial
		materialVariant.Parent = game:GetService("MaterialService")

		-- Set texture maps
		local maps = {
			ColorMap = props.ColorMap or "",
			MetalnessMap = props.MetalnessMap or "",
			NormalMap = props.NormalMap or "",
			RoughnessMap = props.RoughnessMap or ""
		}
		handleMaps(maps, materialVariant)

		local materialController = props.MaterialController
		props.dispatchSetMaterial(materialController:getMaterial(materialVariant))
		props.dispatchSetPath(getMaterialPath(materialVariant))

		props.PromptClosed()
		props.dispatchClearMaterialVariant()
	end

	self.onButtonPressed = function(key)
		local props : _Props = self.props
		
		if key == "Cancel" then
			props.PromptClosed()
			props.dispatchClearMaterialVariant()
		elseif key == "Save" then
			self.onSave()
		end
	end
end

function MaterialPrompt:render()
	local props : _Props = self.props
	local localization = props.Localization
	local style : _Style = props.Stylizer.MaterialPrompt

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
		Resizable = false,
		Modal = true,
		Buttons = buttons,
		OnClose = props.PromptClosed,
		OnButtonPressed = self.onButtonPressed,
		Style = "FullBleed",
	}, {
		MaterialVariantCreator = Roact.createElement(MaterialVariantCreator, {
			ErrorName = self:getNameError(),
			ErrorBaseMaterial = self:getBaseMaterialError(),
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



local function mapStateToProps(state : MainReducer.State, props : _Props)
	return {
		Name = state.MaterialPromptReducer.Name,
		BaseMaterial = state.MaterialPromptReducer.BaseMaterial,
		ColorMap = state.MaterialPromptReducer.ColorMap,
		MetalnessMap = state.MaterialPromptReducer.MetalnessMap,
		NormalMap = state.MaterialPromptReducer.NormalMap,
		RoughnessMap = state.MaterialPromptReducer.RoughnessMap,
		Material = props.MaterialMock or state.MaterialBrowserReducer.Material,
		Mode = state.MaterialPromptReducer.Mode,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchClearMaterialVariant = function ()
			dispatch(ClearMaterialVariant())
		end,
		dispatchSetMaterial = function(material : _Types.Material)
			dispatch(SetMaterial(material))
		end,
		dispatchSetPath = function(path)
			dispatch(SetPath(path))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(MaterialPrompt)
