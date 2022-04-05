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

local LabeledElementList = require(Plugin.Src.Components.LabeledElementList)
local TextureMapSelector = require(Plugin.Src.Components.TextureMapSelector)

local Actions = Plugin.Src.Actions
local SetColorMap = require(Actions.SetColorMap)
local SetNormalMap = require(Actions.SetNormalMap)
local SetMetalnessMap = require(Actions.SetMetalnessMap)
local SetRoughnessMap = require(Actions.SetRoughnessMap)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local TextureMapErrorTypes = require(Plugin.Src.Util.getTextureMapErrorTypes)
local TextureMaps = require(Plugin.Src.Util.getTextureMapNames)

export type Props = {
	LayoutOrder : number?,
}

type _Props = Props & {
	Analytics : any,
	Localization : any,
	Stylizer : any,

	ColorMap : _Types.TextureMap?,
	NormalMap : _Types.TextureMap?,
	MetalnessMap : _Types.TextureMap?,
	RoughnessMap : _Types.TextureMap?,

	dispatchSetColorMap : (_Types.TextureMap?) -> (),
	dispatchSetNormalMap : (_Types.TextureMap?) -> (),
	dispatchSetMetalnessMap : (_Types.TextureMap?) -> (),
	dispatchSetRoughnessMap : (_Types.TextureMap?) -> (),
}

local TextureSettings = Roact.PureComponent:extend("TextureSettings")

function TextureSettings:init()
	self.state = {
		errorColorMap = "",
		errorNormalMap = "",
		errorMetalnessMap = "",
		errorRoughnessMap = "",
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
			if failedError == TextureMapErrorTypes.FailedToSelectFile then
				errorMessage = localization:getText("CreateDialog", "ErrorSelectMap")
			elseif failedError == TextureMapErrorTypes.FailedUrl then
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
			end
			self:setState({
				errorColorMap = errorMessage,
			})
		elseif mapType == TextureMaps.NormalMap then
			if (not errorMessage or errorMessage == "") and newState then
				props.dispatchSetNormalMap(newState)
			end
			self:setState({
				errorNormalMap = errorMessage,
			})
		elseif mapType == TextureMaps.MetalnessMap then
			if (not errorMessage or errorMessage == "") and newState then
				props.dispatchSetMetalnessMap(newState)
			end
			self:setState({
				errorMetalnessMap = errorMessage,
			})
		elseif mapType == TextureMaps.RoughnessMap then
			if (not errorMessage or errorMessage == "") and newState then
				props.dispatchSetRoughnessMap(newState)
			end
			self:setState({
				errorRoughnessMap = errorMessage,
			})
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

	self.clearColorMap = function()
		self.props.dispatchSetColorMap(nil)
		self:setState({
			errorColorMap = "",
		})
	end

	self.clearNormalMap = function()
		self.props.dispatchSetNormalMap(nil)
		self:setState({
			errorNormalMap = "",
		})
	end

	self.clearMetalnessMap = function()
		self.props.dispatchSetMetalnessMap(nil)
		self:setState({
			errorMetalnessMap = "",
		})
	end

	self.clearRoughnessMap = function()
		self.props.dispatchSetRoughnessMap(nil)
		self:setState({
			errorRoughnessMap = "",
		})
	end

	self.renderContent = function(key: string)
		local props : _Props = self.props
		local localization = props.Localization

		-- TODO: remove key strings
		if key == "ImportColorMap" then
			return Roact.createElement(TextureMapSelector, {
				CurrentTextureMap = props.ColorMap,
				SelectTextureMap = self.selectColorMap,
				ClearSelection = self.clearColorMap,
				PreviewTitle = localization:getText("Import", "ColorMapPreview"),
			})
		elseif key == "ImportNormalMap" then
			return Roact.createElement(TextureMapSelector, {
				CurrentTextureMap = props.NormalMap,
				SelectTextureMap = self.selectNormalMap,
				ClearSelection = self.clearNormalMap,
				PreviewTitle = localization:getText("Import", "NormalMapPreview"),
			})
		elseif key == "ImportMetalnessMap" then
			return Roact.createElement(TextureMapSelector, {
				CurrentTextureMap = props.MetalnessMap,
				SelectTextureMap = self.selectMetalnessMap,
				ClearSelection = self.clearMetalnessMap,
				PreviewTitle = localization:getText("Import", "MetalnessMapPreview"),
			})
		elseif key == "ImportRoughnessMap" then
			return Roact.createElement(TextureMapSelector, {
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
		"ImportNormalMap",
		"ImportMetalnessMap",
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
		NormalMap = state.MaterialPromptReducer.NormalMap,
		MetalnessMap = state.MaterialPromptReducer.MetalnessMap,
		RoughnessMap = state.MaterialPromptReducer.RoughnessMap,
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
