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

local StudioService = game:GetService("StudioService")
local MarketplaceService = game:GetService("MarketplaceService")

local LabeledElement = require(Plugin.Src.Components.MaterialPrompt.MaterialVariantCreator.LabeledElement)
local PromptSelectorWithPreview = require(Plugin.Src.Components.PromptSelectorWithPreview)

local Actions = Plugin.Src.Actions
local SetColorMap = require(Actions.SetColorMap)
local SetMetalnessMap = require(Actions.SetMetalnessMap)
local SetNormalMap = require(Actions.SetNormalMap)
local SetRoughnessMap = require(Actions.SetRoughnessMap)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local getTextureMapNames = require(Plugin.Src.Resources.Constants.getTextureMapNames)
local getErrorTypes = require(Plugin.Src.Resources.Constants.getErrorTypes)

local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerAnalyticsCounter = require(Flags.getFFlagMaterialManagerAnalyticsCounter)

local TextureMaps = getTextureMapNames()
local ErrorTypes = getErrorTypes()

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
		urlMap = "",
		errorMessage = "",
	}

	self.selectTextureMap = function(file: File?, assetId: number?, errorMessage: string?)
		local props: _Props = self.props
		
		local newState
		if assetId then
			newState = {
				assetId = assetId,
			}
		elseif file then
			local tempId = file:GetTemporaryId()
			newState = {
				file = file,
				tempId = tempId,
			}
		end

		props.dispatchSetTextureMap(newState, props.MapType)
		self:setState(function(state)
			return {
				urlMap = if file then "" else state.urlMap,
				errorMessage = errorMessage or "",
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
			urlMap = "",
			errorMessage = "",
		})
	end

	self.promptSelection = function()
		local formats = {"png", "jpg", "jpeg"}
		local file

		local success, _err = pcall(function()
			file = StudioService:PromptImportFile(formats)
		end)

		if success and file then
			self.selectTextureMap(file)
		elseif not success then
			self.selectTextureMap(nil, nil, ErrorTypes.FailedToSelectFile)
		else
			self.selectTextureMap(nil, nil, ErrorTypes.FailedToImportMap)
		end
	end

	self.onFocusLost = function()
		local searchUrl = self.state.urlMap
		if not searchUrl or searchUrl == "" then
			self.selectTextureMap(nil, nil, nil)
			return
		end

		local numericId = tonumber(searchUrl:match("://(%d+)")) or tonumber(searchUrl:match("(%d+)"))
		if not numericId then
			self.selectTextureMap(nil, nil, ErrorTypes.FailedUrl)
			return
		end

		local assetInfo
		spawn(function()
			if not self._isMounted then
				return
			end

			local success, _ = pcall(function()
				assetInfo = MarketplaceService:GetProductInfo(numericId)
			end)
			if not success then
				self.selectTextureMap(nil, nil, ErrorTypes.FailedUrl)
				return
			end

			if not self._isMounted then
				return
			end

			-- AssetTypeId = 1 is Image, AssetTypeId = 13 is Decal
			if not assetInfo or (assetInfo.AssetTypeId ~= 1 and assetInfo.AssetTypeId ~= 13) then	
				self.selectTextureMap(nil, nil, ErrorTypes.FailedUrl)
				return
			end
			self.selectTextureMap(nil, "rbxassetid://" .. numericId)
		end)
	end
end

function LabeledTextureElement:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.LabeledTextureElement
	local state = self.state
	local localization = props.Localization

	local hasSelection = false
	local selectionName = ""
	local imageId = ""
	if props.TextureMap then
		hasSelection = true
		selectionName = if props.TextureMap.file then props.TextureMap.file.Name else props.TextureMap.assetId
		imageId = if props.TextureMap.file then props.TextureMap.tempId else props.TextureMap.assetId
	end

	local borderColorUrlBool = false
	local borderColorFileBool = false
	local errorText = ""
	if state.errorMessage == ErrorTypes.FailedUrl then
		borderColorUrlBool = true
		errorText = localization:getText("CreateDialog", "ErrorFindUrl")
		if getFFlagMaterialManagerAnalyticsCounter() then
			props.Analytics:report("uploadTextureMapError")
		end
	elseif state.errorMessage == ErrorTypes.FailedToSelectFile then 
		borderColorFileBool = true
		errorText = localization:getText("CreateDialog", "ErrorSelectMap")
		if getFFlagMaterialManagerAnalyticsCounter() then
			props.Analytics:report("selectFileTextureMapError")
		end
	elseif state.errorMessage == ErrorTypes.FailedToImportMap then
		borderColorFileBool = true
		errorText = localization:getText("CreateDialog", "ErrorImportMap")
		if getFFlagMaterialManagerAnalyticsCounter() then
			props.Analytics:report("importTextureMapError")
		end
	end

	return Roact.createElement(LabeledElement, {
			LayoutOrder = props.LayoutOrder,
			LabelColumnWidth = props.LabelColumnWidth,
			Spacing = style.ItemPaddingHorizontal,
			Text = props.Text,
			ErrorText = errorText,
			TextSize = style.ErrorOrWarningTextSize,
			TextErrorOrWarningColor = style.ErrorOrWarningColor,
			VerticalSpacing = style.VerticalSpacing,
		}, {
			Roact.createElement(PromptSelectorWithPreview, {
				SelectionName = selectionName,
				PreviewTitle = props.PreviewTitle,
				HasSelection = hasSelection,
				ImageId = imageId,
				PromptSelection = self.promptSelection,
				UrlSelection = self.urlSelectTextureMap,
				SearchUrl = state.urlMap,
				BorderColorUrlBool = borderColorUrlBool,
				BorderColorFileBool = borderColorFileBool,
				ClearSelection = self.clearTextureMap,
				OnFocusLost = self.onFocusLost,
			})
		})
end

function LabeledTextureElement:didMount()
	self._isMounted = true
end

function LabeledTextureElement:willUnmount()
	self._isMounted = false
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
