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

local ImportAssetHandler = require(Plugin.Src.Util.ImportAssetHandler)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local MaterialVariantCreator = require(Plugin.Src.Components.MaterialVariantCreator)

export type Props = {
	PromptClosed : () -> (),
	name: string?,
	baseMaterial: Enum.Material?,
	colorMap : _Types.TextureMap?,
	normalMap : _Types.TextureMap?,
	metalnessMap : _Types.TextureMap?,
	roughnessMap : _Types.TextureMap?,
}

type _Props = Props & {
	Analytics : any,
	Localization : any,
	Stylizer : any,
	ImportAssetHandler : any,
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

		local function handleMaps(maps : { _Types.TextureMap })
			for _, map in pairs(maps) do
				if map and map.file then
					task.spawn(function()
						assetHandler:handleAsset(map.file)
					end)
				end
			end
		end

		if not props.name or not props.baseMaterial then
			-- TODO: Warnings and errors
			return
		end

		if props.colorMap or props.normalMap or props.metalnessMap or props.roughnessMap then
			-- TODO:
			-- create Material Variant

			local maps = {
				props.colorMap, 
				props.normalMap, 
				props.metalnessMap, 
				props.roughnessMap
			}
			handleMaps(maps)

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
		Resizable = true,
		Modal = true,
		Buttons = buttons,
		OnClose = props.PromptClosed,
		OnButtonPressed = self.onButtonPressed,
	}, {
		MaterialVariantCreator = Roact.createElement(MaterialVariantCreator)
	})
end


MaterialPrompt = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
	ImportAssetHandler = ImportAssetHandler,
})(MaterialPrompt)



local function mapStateToProps(state : MainReducer.State, _)
	return {
		name = state.MaterialPromptReducer.name or nil,
		baseMaterial = state.MaterialPromptReducer.baseMaterial or nil,
		colorMap = state.MaterialPromptReducer.colorMap or {},
		normalMap = state.MaterialPromptReducer.normalMap or {},
		metalnessMap = state.MaterialPromptReducer.metalnessMap or {},
		roughnessMap = state.MaterialPromptReducer.roughnessMap or {},
	}
end

return RoactRodux.connect(mapStateToProps, nil)(MaterialPrompt)
