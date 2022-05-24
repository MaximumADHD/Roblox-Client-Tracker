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

local LabeledElementList = require(Plugin.Src.Components.LabeledElementList)
local TextureMapSelector = require(Plugin.Src.Components.MaterialPrompt.MaterialVariantCreator.TextureMapSelector)

local Actions = Plugin.Src.Actions
local SetColorMap = require(Actions.SetColorMap)
local SetMetalnessMap = require(Actions.SetMetalnessMap)
local SetNormalMap = require(Actions.SetNormalMap)
local SetRoughnessMap = require(Actions.SetRoughnessMap)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local getErrorTypes = require(Plugin.Src.Resources.Constants.getErrorTypes)
local getTextureMapNames = require(Plugin.Src.Resources.Constants.getTextureMapNames)
local FFlagURLbyNumberAndMaterialsBetaResponse = game:GetFastFlag("URLbyNumberAndMaterialsBetaResponse")

local ErrorTypes = getErrorTypes()
local TextureMaps = getTextureMapNames()

export type Props = {
	LayoutOrder : number?,
}

type _Props = Props & {
	Analytics : any,
	Localization : any,
	Stylizer : any,

	ColorMap : _Types.TextureMap?,
	MetalnessMap : _Types.TextureMap?,
	NormalMap : _Types.TextureMap?,
	RoughnessMap : _Types.TextureMap?,

	dispatchSetColorMap : (_Types.TextureMap?) -> (),
	dispatchSetMetalnessMap : (_Types.TextureMap?) -> (),
	dispatchSetNormalMap : (_Types.TextureMap?) -> (),
	dispatchSetRoughnessMap : (_Types.TextureMap?) -> (),
}

local TextureSettings = Roact.PureComponent:extend("TextureSettings")

function TextureSettings:init()
	self.state = {
		errorColorMap = "",
		errorMetalnessMap = "",
		errorNormalMap = "",
		errorRoughnessMap = "",
		urlColorMap = "",
		urlMetalnessMap = "",
		urlNormalMap = "",
		urlRoughnessMap = "",
	}

	local function textureMapFromFileImport(file : File?) : _Types.TextureMap?
		local id
		if file then
			id = file:GetTemporaryId()
			return {
				file = file,
				tempId = id,
			}
		end

		return nil
	end

	local function getNewState(file : File?, assetId : number?)
		local newState
		if assetId then
			newState = {
				assetId = assetId,
			}
		else
			newState = textureMapFromFileImport(file)
		end
		return newState
	end

	self.selectTextureMap = function(mapType : string, file : File?, assetId : number?, failedError : string?)
		local props : _Props = self.props
		local localization = props.Localization
		local errorMessage = ""
		local newState

		if failedError then
			if failedError == ErrorTypes.FailedToSelectFile then
				errorMessage = localization:getText("CreateDialog", "ErrorSelectMap")
			elseif failedError == ErrorTypes.FailedUrl then
				errorMessage = localization:getText("CreateDialog", "ErrorFindUrl")
			end
		else
			newState = getNewState(file, assetId)
			if not newState then
				errorMessage = localization:getText("CreateDialog", "ErrorImportMap")
			end
		end

		if mapType == TextureMaps.ColorMap then
			if (not errorMessage or errorMessage == "") and newState then
				props.dispatchSetColorMap(newState)
			elseif FFlagURLbyNumberAndMaterialsBetaResponse then
				props.dispatchSetColorMap(nil)
			end
			self:setState(function(state)
				return {
					errorColorMap = errorMessage,
					urlColorMap = if FFlagURLbyNumberAndMaterialsBetaResponse and file then "" else state.urlColorMap,
				}
			end)
		elseif mapType == TextureMaps.MetalnessMap then
			if (not errorMessage or errorMessage == "") and newState then
				props.dispatchSetMetalnessMap(newState)
			end
			self:setState(function(state)
				return {
					errorMetalnessMap = errorMessage,
					urlMetalnessMap = if FFlagURLbyNumberAndMaterialsBetaResponse and file then "" else state.urlMetalnessMap,
				}
			end)
		elseif mapType == TextureMaps.NormalMap then
			if (not errorMessage or errorMessage == "") and newState then
				props.dispatchSetNormalMap(newState)
			end
			self:setState(function(state)
				return {
					errorNormalMap = errorMessage,
					urlNormalMap = if FFlagURLbyNumberAndMaterialsBetaResponse and file then "" else state.urlNormalMap,
				}
			end)
		elseif mapType == TextureMaps.RoughnessMap then
			if (not errorMessage or errorMessage == "") and newState then
				props.dispatchSetRoughnessMap(newState)
			end
			self:setState(function(state)
				return {
					errorRoughnessMap = errorMessage,
					urlRoughnessMap = if FFlagURLbyNumberAndMaterialsBetaResponse and file then "" else state.urlRoughnessMap,
				}
			end)
		end
	end

	self.selectColorMap = function(file : File?, assetId : number?, failedError : string?)
		self.selectTextureMap(TextureMaps.ColorMap, file, assetId, failedError)
	end

	self.selectNormalMap = function(file : File?, assetId : number?, failedError : string?)
		self.selectTextureMap(TextureMaps.NormalMap, file, assetId, failedError)
	end

	self.selectMetalnessMap = function(file : File?, assetId : number?, failedError : string?)
		self.selectTextureMap(TextureMaps.MetalnessMap, file, assetId, failedError)
	end

	self.selectRoughnessMap = function(file : File?, assetId : number?, failedError : string?)
		self.selectTextureMap(TextureMaps.RoughnessMap, file, assetId, failedError)
	end

	if FFlagURLbyNumberAndMaterialsBetaResponse then
		self.urlSelectColorMap = function(searchUrl)
			self:setState({
				urlColorMap = searchUrl,
			})
		end

		self.urlSelectMetalnessMap = function(searchUrl)
			self:setState({
				urlMetalnessMap = searchUrl,
			})
		end

		self.urlSelectNormalMap = function(searchUrl)
			self:setState({
				urlNormalMap = searchUrl,
			})
		end

		self.urlSelectRoughnessMap = function(searchUrl)
			self:setState({
				urlRoughnessMap = searchUrl,
			})
		end
	end

	self.clearColorMap = function()
		self.props.dispatchSetColorMap(nil)
		if FFlagURLbyNumberAndMaterialsBetaResponse then
			self:setState({
				errorColorMap = "",
				urlColorMap = "",
			})
		else
			self:setState({
				errorColorMap = "",
			})
		end
	end

	self.clearMetalnessMap = function()
		self.props.dispatchSetMetalnessMap(nil)
		if FFlagURLbyNumberAndMaterialsBetaResponse then
			self:setState({
				errorMetalnessMap = "",
				urlMetalnessMap = "",
			})
		else
			self:setState({
				errorMetalnessMap = "",
			})
		end
	end

	self.clearNormalMap = function()
		self.props.dispatchSetNormalMap(nil)
		if FFlagURLbyNumberAndMaterialsBetaResponse then
			self:setState({
				errorNormalMap = "",
				urlNormalMap = "",
			})
		else
			self:setState({
				errorNormalMap = "",
			})
		end
	end

	self.clearRoughnessMap = function()
		self.props.dispatchSetRoughnessMap(nil)
		if FFlagURLbyNumberAndMaterialsBetaResponse then
			self:setState({
				errorRoughnessMap = "",
				urlRoughnessMap = "",
			})
		else
			self:setState({
				errorRoughnessMap = "",
			})
		end
	end

	self.renderContent = function(key: string)
		local props : _Props = self.props
		local localization = props.Localization

		-- TODO: remove key strings
		if key == "ImportColorMap" then
			return FFlagURLbyNumberAndMaterialsBetaResponse and Roact.createElement(TextureMapSelector, {
				CurrentTextureMap = props.ColorMap,
				SelectTextureMap = self.selectColorMap,
				ClearSelection = self.clearColorMap,
				PreviewTitle = localization:getText("Import", "ColorMapPreview"),
				SearchUrl = self.state.urlColorMap,
				UrlSelection = self.urlSelectColorMap,
			}) or Roact.createElement(TextureMapSelector, {
				CurrentTextureMap = props.ColorMap,
				SelectTextureMap = self.selectColorMap,
				ClearSelection = self.clearColorMap,
				PreviewTitle = localization:getText("Import", "ColorMapPreview"),
			})
		elseif key == "ImportMetalnessMap" then
			return FFlagURLbyNumberAndMaterialsBetaResponse and Roact.createElement(TextureMapSelector, {
				CurrentTextureMap = props.MetalnessMap,
				SelectTextureMap = self.selectMetalnessMap,
				ClearSelection = self.clearMetalnessMap,
				PreviewTitle = localization:getText("Import", "MetalnessMapPreview"),
				SearchUrl = self.state.urlMetalnessMap,
				UrlSelection = self.urlSelectMetalnessMap,
			}) or Roact.createElement(TextureMapSelector, {
				CurrentTextureMap = props.MetalnessMap,
				SelectTextureMap = self.selectMetalnessMap,
				ClearSelection = self.clearMetalnessMap,
				PreviewTitle = localization:getText("Import", "MetalnessMapPreview"),
			})
		elseif key == "ImportNormalMap" then
			return FFlagURLbyNumberAndMaterialsBetaResponse and Roact.createElement(TextureMapSelector, {
				CurrentTextureMap = props.NormalMap,
				SelectTextureMap = self.selectNormalMap,
				ClearSelection = self.clearNormalMap,
				PreviewTitle = localization:getText("Import", "NormalMapPreview"),
				SearchUrl = self.state.urlNormalMap,
				UrlSelection = self.state.urlSelectNormalMap,
			}) or Roact.createElement(TextureMapSelector, {
				CurrentTextureMap = props.NormalMap,
				SelectTextureMap = self.selectNormalMap,
				ClearSelection = self.clearNormalMap,
				PreviewTitle = localization:getText("Import", "NormalMapPreview"),
			})
		elseif key == "ImportRoughnessMap" then
			return FFlagURLbyNumberAndMaterialsBetaResponse and Roact.createElement(TextureMapSelector, {
				CurrentTextureMap = props.RoughnessMap,
				SelectTextureMap = self.selectRoughnessMap,
				ClearSelection = self.clearRoughnessMap,
				PreviewTitle = localization:getText("Import", "RoughnessMapPreview"),
				SearchUrl = self.state.urlRoughnessMap,
				UrlSelection = self.urlSelectRoughnessMap,
			}) or  Roact.createElement(TextureMapSelector, {
				CurrentTextureMap = props.RoughnessMap,
				SelectTextureMap = self.selectRoughnessMap,
				ClearSelection = self.clearRoughnessMap,
				PreviewTitle = localization:getText("Import", "RoughnessMapPreview"),
			})
		end

		return nil
	end

	self.getError = function(key: string)
		local state = self.state

		-- TODO: remove key strings
		if key == "ImportColorMap" then
			return state.errorColorMap
		elseif key == "ImportNormalMap" then
			return state.errorNormalMap
		elseif key == "ImportMetalnessMap" then
			return state.errorMetalnessMap
		elseif key == "ImportRoughnessMap" then
			return state.errorRoughnessMap
		end

		return nil
	end

	self.getText = function(key: string)
		local props : _Props = self.props
		local localization = props.Localization

		return localization:getText("CreateDialog", key)
	end
end

function TextureSettings:render()
	local props : _Props = self.props

	-- TODO: add texture map functionality
	local items = {
		"ImportColorMap",
		"ImportMetalnessMap",
		"ImportNormalMap",
		"ImportRoughnessMap",
	}

	return Roact.createElement(LabeledElementList, {
		GetText = self.getText,
		Items = items,
		LayoutOrder = props.LayoutOrder,
		RenderContent = self.renderContent,
		GetError = self.getError,
	})
end


TextureSettings = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TextureSettings)



local function mapStateToProps(state : MainReducer.State, _)
	return {
		ColorMap = state.MaterialPromptReducer.ColorMap,
		MetalnessMap = state.MaterialPromptReducer.MetalnessMap,
		NormalMap = state.MaterialPromptReducer.NormalMap,
		RoughnessMap = state.MaterialPromptReducer.RoughnessMap,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetColorMap = function (colorMap)
			dispatch(SetColorMap(colorMap))
		end,
		dispatchSetMetalnessMap = function (metalnessMap)
			dispatch(SetMetalnessMap(metalnessMap))
		end,
		dispatchSetNormalMap = function (normalMap)
			dispatch(SetNormalMap(normalMap))
		end,
		dispatchSetRoughnessMap = function (roughnessMap)
			dispatch(SetRoughnessMap(roughnessMap))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TextureSettings)
