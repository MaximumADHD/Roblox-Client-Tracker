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
	local function textureMapFromFileImport(file : File?, errorMessage : string?) : _Types.TextureMap?
		
		local id
		if file then
			id = file:GetTemporaryId()
		-- TODO: warnings and errors
		else
			-- warn(("Failed to select map: %s"):format(tostring(errorMessage)))
			-- self.setErrorMessage("FailedToLoadColormap", "FailedToSelectTextureMap")
			return
		end

		return {
			file = file,
			tempId = id,
		}
	end

	local function getNewState(file, assetId, errorMessage)
		local newState
		if assetId then
			newState = {
				assetId = assetId,
			}
		else
			newState = textureMapFromFileImport(file, errorMessage)
		end
		return newState
	end

	self.selectColorMap = function(file, assetId, errorMessage)
		local newState = getNewState(file, assetId, errorMessage)
		if newState then
			self.props.dispatchSetColorMap(newState)
		end
	end

	self.selectNormalMap = function(file, assetId, errorMessage)
		local newState = getNewState(file, assetId, errorMessage)
		if newState then
			self.props.dispatchSetNormalMap(newState)
		end
	end

	self.selectMetalnessMap = function(file, assetId, errorMessage)
		local newState = getNewState(file, assetId, errorMessage)
		if newState then
			self.props.dispatchSetMetalnessMap(newState)
		end
	end

	self.selectRoughnessMap = function(file, assetId, errorMessage)
		local newState = getNewState(file, assetId, errorMessage)
		if newState then
			self.props.dispatchSetRoughnessMap(newState)
		end
	end

	self.clearColorMap = function()
		self.props.dispatchSetColorMap(nil)
	end

	self.clearNormalMap = function()
		self.props.dispatchSetNormalMap(nil)
	end

	self.clearMetalnessMap = function()
		self.props.dispatchSetMetalnessMap(nil)
	end

	self.clearRoughnessMap = function()
		self.props.dispatchSetRoughnessMap(nil)
	end

	self.renderContent = function(key: string)
		local props : _Props = self.props
		local localization = props.Localization

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
