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

local LabeledElement = require(Plugin.Src.Components.MaterialPrompt.MaterialVariantCreator.LabeledElement)
local TextureMapSelector = require(Plugin.Src.Components.MaterialPrompt.MaterialVariantCreator.TextureMapSelector)

local Actions = Plugin.Src.Actions
local SetColorMap = require(Actions.SetColorMap)
local SetMetalnessMap = require(Actions.SetMetalnessMap)
local SetNormalMap = require(Actions.SetNormalMap)
local SetRoughnessMap = require(Actions.SetRoughnessMap)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local getTextureMapNames = require(Plugin.Src.Resources.Constants.getTextureMapNames)
local selectTextureMap = require(Plugin.Src.Util.SelectTextureMap)

local TextureMaps = getTextureMapNames()

export type Props = {
	LabelColumnWidth: UDim,
	LayoutOrder: number?,
	MapType: string,
	PreviewTitle: string,
	Text: string,
}

type _Props = Props & {
	Analytics: any,
	dispatchSetTextureMap: (_Types.TextureMap?, string) -> (),
	Localization: any,
	Stylizer: any,
	TextureMap: _Types.TextureMap?,
}

type _Style = {
	VerticalSpacing: number,
	ItemPaddingHorizontal: UDim,
	ErrorOrWarningTextSize: number,
	ErrorOrWarningColor: Color3,
}

local LabeledTextureElement = Roact.PureComponent:extend("LabeledTextureElement")

function LabeledTextureElement:init()
	self.state = {
		error = "",
		urlMap = "",
	}

	self.selectTextureMap = function(file: File?, assetId: number?, failedError: string?)
		local props: _Props = self.props
		
		local newState, errorMessage = selectTextureMap(file, assetId, failedError, props.Localization)
		props.dispatchSetTextureMap(newState, props.MapType)

		self:setState(function(state)
			return {
				error = errorMessage,
				urlMap = if file then "" else state.urlMap,
			}
		end)
	end

	self.urlSelectTextureMap = function(searchUrl)
		self:setState({
			urlMap = searchUrl,
		})
	end

	self.clearTextureMap = function()
		local props: _Props = self.props

		props.dispatchSetTextureMap(nil, props.MapType)
		self:setState({
			error = "",
			urlMap = "",
		})
	end
end

function LabeledTextureElement:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.LabeledTextureElement
	local state = self.state

	return Roact.createElement(LabeledElement, {
			LayoutOrder = props.LayoutOrder,
			LabelColumnWidth = props.LabelColumnWidth,
			Spacing = style.ItemPaddingHorizontal,
			Text = props.Text,
			ErrorText = state.error,
			TextSize = style.ErrorOrWarningTextSize,
			TextErrorOrWarningColor = style.ErrorOrWarningColor,
			VerticalSpacing = style.VerticalSpacing,
		}, {
			Roact.createElement(TextureMapSelector, {
				CurrentTextureMap = props.TextureMap,
				SelectTextureMap = self.selectTextureMap,
				ClearSelection = self.clearTextureMap,
				PreviewTitle = props.PreviewTitle,
				SearchUrl = state.urlMap,
				UrlSelection = self.urlSelectTextureMap,
			})
		})
end

LabeledTextureElement = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(LabeledTextureElement)



local function mapStateToProps(state: MainReducer.State, props: Props)
	if props.MapType == TextureMaps.ColorMap then
		return {
			TextureMap = state.MaterialPromptReducer.ColorMap
		}
	elseif props.MapType == TextureMaps.NormalMap then
		return {
			TextureMap = state.MaterialPromptReducer.NormalMap
		}
	elseif props.MapType == TextureMaps.MetalnessMap then
		return {
			TextureMap = state.MaterialPromptReducer.MetalnessMap
		}
	elseif props.MapType == TextureMaps.RoughnessMap then
		return {
			TextureMap = state.MaterialPromptReducer.RoughnessMap
		}
	end
	return nil
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetTextureMap = function (textureMap, mapType)
			if mapType == TextureMaps.ColorMap then
				dispatch(SetColorMap(textureMap))
			elseif mapType == TextureMaps.NormalMap then
				dispatch(SetNormalMap(textureMap))
			elseif mapType == TextureMaps.MetalnessMap then
				dispatch(SetMetalnessMap(textureMap))
			elseif mapType == TextureMaps.RoughnessMap then
				dispatch(SetRoughnessMap(textureMap))
			end
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(LabeledTextureElement)
