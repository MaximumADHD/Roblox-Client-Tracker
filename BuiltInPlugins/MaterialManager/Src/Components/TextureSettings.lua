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

	colorMap : _Types.TextureMap?,
	normalMap : _Types.TextureMap?,
	metalnessMap : _Types.TextureMap?,
	roughnessMap : _Types.TextureMap?,

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
				CurrentTextureMap = props.colorMap,
				SelectTextureMap = self.selectColorMap,
				ClearSelection = self.clearColorMap,
				PreviewTitle = localization:getText("Import", "ColorMapPreview"),
			}),
		},
		{
			Key = "ImportNormalMap",
			Text = localization:getText("CreateDialog", "ImportNormalMap"),
			Content = Roact.createElement(TextureMapSelector, {
				CurrentTextureMap = props.normalMap,
				SelectTextureMap = self.selectNormalMap,
				ClearSelection = self.clearNormalMap,
				PreviewTitle = localization:getText("Import", "NormalMapPreview"),
			}),
		},
		{
			Key = "ImportMetalnessMap",
			Text = localization:getText("CreateDialog", "ImportMetalnessMap"),
			Content = Roact.createElement(TextureMapSelector, {
				CurrentTextureMap = props.metalnessMap,
				SelectTextureMap = self.selectMetalnessMap,
				ClearSelection = self.clearMetalnessMap,
				PreviewTitle = localization:getText("Import", "MetalnessMapPreview"),
			}),
		},
		{
			Key = "ImportRoughnessMap",
			Text = localization:getText("CreateDialog", "ImportRoughnessMap"),
			Content = Roact.createElement(TextureMapSelector, {
				CurrentTextureMap = props.roughnessMap,
				SelectTextureMap = self.selectRoughnessMap,
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
		colorMap = state.MaterialPromptReducer.colorMap,
		normalMap = state.MaterialPromptReducer.normalMap,
		metalnessMap = state.MaterialPromptReducer.metalnessMap,
		roughnessMap = state.MaterialPromptReducer.roughnessMap,
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
