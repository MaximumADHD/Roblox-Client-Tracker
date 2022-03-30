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
	NormalMap : _Types.TextureMap?,
	MetalnessMap : _Types.TextureMap?,
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

function MaterialPrompt:init()
	-- TODO: Save -> upload texture maps if needed
	self.onSave = function()
		local props : _Props = self.props

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

		if not (props.Name and props.BaseMaterial) then
			-- TODO: Warnings and errors
			return
		end

		if props.ColorMap or props.NormalMap or props.MetalnessMap or props.RoughnessMap then
			local materialVariant

			if props.Mode == "Create" then
				materialVariant = Instance.new("MaterialVariant")
			elseif props.Mode == "Edit" then
				local material : _Types.Material? = props.Material
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
				NormalMap = props.NormalMap or "",
				MetalnessMap = props.MetalnessMap or "",
				RoughnessMap = props.RoughnessMap or ""
			}
			handleMaps(maps, materialVariant)

			local materialController = props.MaterialController
			props.dispatchSetMaterial(materialController:getMaterial(materialVariant))
			props.dispatchSetPath(getMaterialPath(materialVariant))

		-- TODO: Warnings and errors
		-- else
		end
	end

	self.onButtonPressed = function(key)
		local props : _Props = self.props
		
		if key == "Cancel" then
			props.PromptClosed()
		elseif key == "Save" then
			self.onSave()
			props.PromptClosed()
		end

		props.dispatchClearMaterialVariant()
	end
end

function MaterialPrompt:render()
	local props : _Props = self.props
	local localization = props.Localization
	local style : _Style = props.Stylizer.MaterialPrompt

	local buttons = {
		{ 
			Key = "Cancel", 
			Text = localization:getText("CreateDialog", "CancelVariant"),
			Style = "RoundPrimary",
		},
		{
			Key = "Save", 
			Text = localization:getText("CreateDialog", "SaveVariant"), 
			Style = "RoundPrimary",
		}
	}

	return Roact.createElement(StyledDialog, {
		Title = localization:getText("CreateDialog", "CreateVariant"),
		MinContentSize = Vector2.new(style.DialogWidth, style.DialogHeight),
		Resizable = false,
		Modal = true,
		Buttons = buttons,
		OnClose = props.PromptClosed,
		OnButtonPressed = self.onButtonPressed,
		Style = "FullBleed",
	}, {
		MaterialVariantCreator = Roact.createElement(MaterialVariantCreator)
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
		NormalMap = state.MaterialPromptReducer.NormalMap,
		MetalnessMap = state.MaterialPromptReducer.MetalnessMap,
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
