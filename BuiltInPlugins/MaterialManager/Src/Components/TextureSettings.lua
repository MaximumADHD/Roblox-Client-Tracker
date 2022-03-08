local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local HeightmapImporterService = game:GetService("HeightmapImporterService")

local LabeledElementList = require(Plugin.Src.Components.LabeledElementList)
local TextureMapSelector = require(Plugin.Src.Components.TextureMapSelector)

local Actions = Plugin.Src.Actions
local SetColorMap = require(Actions.SetColorMap)
local SetNormalMap = require(Actions.SetNormalMap)
local SetMetalnessMap = require(Actions.SetMetalnessMap)
local SetRoughnessMap = require(Actions.SetRoughnessMap)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

export type Props = {
	LayoutOrder : number?,
}

type _Props = Props & {
	Analytics : any,
	Localization : any,
	Stylizer : any,

	colorMap : _Types.TextureMap?,
	normalMap : _Types.TextureMap?,
	metalnessMap : _Types.TextureMap?,
	roughnessMap : _Types.TextureMap?,

	dispatchSetColorMap : (_Types.TextureMap) -> (),
	dispatchSetNormalMap : (_Types.TextureMap?) -> (),
	dispatchSetMetalnessMap : (_Types.TextureMap) -> (),
	dispatchSetRoughnessMap : (_Types.TextureMap?) -> (),
}

local TextureSettings = Roact.PureComponent:extend("TextureSettings")

function TextureSettings:init()
	local function textureMapFromFileImport(file : File?, errorMessage : string?) : _Types.TextureMap?
		local id
		if file then
			id = file:GetTemporaryId()
		-- TODO: warnings and errors
		else			
			-- warn(("Failed to select map: %s"):format(tostring(errorMessage)))
			-- self.setErrorMessage("FailedToLoadColormap", "FailedToSelectFile")
			return
		end

		local success, _, width, height, channels = HeightmapImporterService:IsValidColormap(id)
		
		-- TODO: warnings and errors
		if not success then
			--self.setErrorMessage("FailedToLoad" .. mapName, status)
			return
		end

		return {
			preview = id,
			file = file,
			width = width,
			height = height,
			channels = channels,
		}
	end

	self.selectColorMap = function(file, errorMessage)
		local newState = textureMapFromFileImport(file, errorMessage)
		if newState then
			self.props.dispatchSetColorMap(newState)
		end
	end

	self.selectNormalMap = function(file, errorMessage)
		local newState = textureMapFromFileImport(file, errorMessage)
		if newState then
			self.props.dispatchSetNormalMap(newState)
		end
	end

	self.selectMetalnessMap = function(file, errorMessage)
		local newState = textureMapFromFileImport(file, errorMessage)
		if newState then
			self.props.dispatchSetMetalnessMap(newState)
		end
	end

	self.selectRoughnessMap = function(file, errorMessage)
		local newState = textureMapFromFileImport(file, errorMessage)
		if newState then
			self.props.dispatchSetRoughnessMap(newState)
		end
	end

	self.clearColorMap = function()
		self.props.dispatchSetColorMap({})
	end

	self.clearNormalMap = function()
		self.props.dispatchSetNormalMap({})
	end

	self.clearMetalnessMap = function()
		self.props.dispatchSetMetalnessMap({})
	end

	self.clearRoughnessMap = function()
		self.props.dispatchSetRoughnessMap({})
	end
end

function TextureSettings:render()
	local props : _Props = self.props
	local localization = props.Localization

	-- TODO: add texture map functionality
	local items = {
		{
			Key = "ImportColorMap",
			Text = localization:getText("CreateDialog", "ImportColorMap"),
			Content = Roact.createElement(TextureMapSelector, {
				CurrentFile = props.colorMap,
				SelectFile = self.selectColorMap,
				ClearSelection = self.clearColorMap,
				PreviewTitle = localization:getText("Import", "ColorMapPreview"),
			}),
		},
		{
			Key = "ImportNormalMap",
			Text = localization:getText("CreateDialog", "ImportNormalMap"),
			Content = Roact.createElement(TextureMapSelector, {
				CurrentFile = props.normalMap,
				SelectFile = self.selectNormalMap,
				ClearSelection = self.clearNormalMap,
				PreviewTitle = localization:getText("Import", "NormalMapPreview"),
			}),
		},
		{
			Key = "ImportMetalnessMap",
			Text = localization:getText("CreateDialog", "ImportMetalnessMap"),
			Content = Roact.createElement(TextureMapSelector, {
				CurrentFile = props.metalnessMap,
				SelectFile = self.selectMetalnessMap,
				ClearSelection = self.clearMetalnessMap,
				PreviewTitle = localization:getText("Import", "MetalnessMapPreview"),
			}),
		},
		{
			Key = "ImportRoughnessMap",
			Text = localization:getText("CreateDialog", "ImportRoughnessMap"),
			Content = Roact.createElement(TextureMapSelector, {
				CurrentFile = props.roughnessMap,
				SelectFile = self.selectRoughnessMap,
				ClearSelection = self.clearRoughnessMap,
				PreviewTitle = localization:getText("Import", "RoughnessMapPreview"),
			}),
		},
	}

	return Roact.createElement(LabeledElementList, {
		Items = items,
		LayoutOrder = props.LayoutOrder,
	})
end


TextureSettings = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TextureSettings)



local function mapStateToProps(state : MainReducer.State, _)
	return {
		colorMap = state.MaterialPromptReducer.colorMap or {},
		normalMap = state.MaterialPromptReducer.normalMap or {},
		metalnessMap = state.MaterialPromptReducer.metalnessMap or {},
		roughnessMap = state.MaterialPromptReducer.roughnessMap or {},
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetColorMap = function (colorMap)
			dispatch(SetColorMap(colorMap))
		end,
		dispatchSetNormalMap = function (normalMap)
			dispatch(SetNormalMap(normalMap))
		end,
		dispatchSetMetalnessMap = function (metalnessMap)
			dispatch(SetMetalnessMap(metalnessMap))
		end,
		dispatchSetRoughnessMap = function (roughnessMap)
			dispatch(SetRoughnessMap(roughnessMap))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TextureSettings)
