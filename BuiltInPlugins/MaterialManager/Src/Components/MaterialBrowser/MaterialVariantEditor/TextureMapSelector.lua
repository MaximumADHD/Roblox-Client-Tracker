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

local Controllers = Plugin.Src.Controllers
local ImportAssetHandler = require(Controllers.ImportAssetHandler)

local LabeledElement = require(Plugin.Src.Components.MaterialBrowser.MaterialVariantEditor.LabeledElement)
local PromptSelectorWithPreview = require(Plugin.Src.Components.PromptSelectorWithPreview)

local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local getErrorTypes = require(Plugin.Src.Resources.Constants.getErrorTypes)
local ErrorTypes = getErrorTypes()

export type Props = {
	LabelColumnWidth: UDim,
	LayoutOrder: number?,
	MapType: string,
	MaterialVariant: string,
	Mode: string?,
	PreviewTitle: string,
	Text: string,
	TextureMap: _Types.TextureMap?,
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
	ImportAssetHandler: any,
}

type _Style = {
	InfoTextColor: Color3,
	ItemPaddingHorizontal: UDim,
	ErrorOrWarningTextSize: number,
	ErrorOrWarningColor: Color3,
}

local TextureMapSelector = Roact.PureComponent:extend("TextureMapSelector")

function TextureMapSelector:init()
	self.state = {
		urlAsset = "",
		importAsset = {},
		errorMessage = "",
		uploading = false,
	}

	self.clearTextureMap = function()
		local props: _Props = self.props

		local materialVariant = props.MaterialVariant:: any
		materialVariant[props.MapType] = ""
		if not self._isMounted then
			return
		end
		self:setState({
			urlAsset = "",
			importAsset = {}, 
			errorMessage = "",
			uploading = false,
		})
	end

	self.uploadTextureMap = function(file: File)
		local props: _Props = self.props
		local assetHandler = props.ImportAssetHandler
		
		local errorMessage = ""
		local _promise = assetHandler:handleAssetAsync(file, function()
			self:setState({
				uploading = true,
			})
		end):andThen(function(assetId)
			local materialVariant = props.MaterialVariant:: any
			materialVariant[props.MapType] = assetId
			if props.Mode == "Create" then
				props.Analytics:report("uploadTextureMap")
			end
		end, function(err)
			errorMessage = ErrorTypes.FailedToUploadFromFileMap
			self.clearTextureMap()
			if props.Mode == "Create" then
				props.Analytics:report("uploadTextureMapError")
			end
		end):await()

		if not self._isMounted then
			return
		end

		self:setState({
			uploading = false,
		})
		return errorMessage
	end

	self.selectTextureMap = function(file: File?, assetId: number?, errorMessage: string?)
		local props: _Props = self.props
		
		local newImportState
		local materialVariant = props.MaterialVariant:: any
		if assetId then
			materialVariant[props.MapType] = assetId
		elseif file then
			local tempId = file:GetTemporaryId()
			materialVariant[props.MapType] = tempId
			newImportState = {
				file = file,
				tempId = tempId,
			}
			errorMessage = self.uploadTextureMap(file)
		end

		if not self._isMounted then
			return
		end
		self:setState(function(state)
			return {
				urlAsset = if file then "" else state.urlAsset,
				importAsset = if file then newImportState else {},
				errorMessage = errorMessage or "",
			}
		end)
	end

	self.urlSelectTextureMap = function(searchUrl)
		self:setState({
			urlAsset = searchUrl,
		})
	end

	self.promptSelection = function()
		local formats = {"png", "jpg", "jpeg"}
		local file

		local success, _err = pcall(function()
			file = StudioService:PromptImportFile(formats)
		end)

		if success then
			if file then
				self.selectTextureMap(file)
			end
		else
			self.selectTextureMap(nil, nil, ErrorTypes.FailedToImportMap)
		end
	end

	self.onFocusLost = function()
		local searchUrl = self.state.urlAsset
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

function TextureMapSelector:didMount()
	self._isMounted = true
end

function TextureMapSelector:willUnmount()
	self._isMounted = false
end

function TextureMapSelector:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.TextureMapSelector
	local state = self.state
	local localization = props.Localization

	local hasSelection = false
	local selectionName = ""
	local imageId = ""
	local materialVariant = props.MaterialVariant:: any
	if materialVariant[props.MapType] ~= "" then
		hasSelection = true
		selectionName = if state.importAsset.file then state.importAsset.file.Name else materialVariant[props.MapType]
		imageId = materialVariant[props.MapType]
	end

	local borderColorUrlBool = false
	local borderColorFileBool = false
	local errorText = ""
	local underlyingColor = style.ErrorOrWarningColor
	if state.errorMessage == ErrorTypes.FailedUrl then
		borderColorUrlBool = true
		errorText = localization:getText("CreateDialog", "ErrorFindUrl")
		props.Analytics:report("uploadTextureMapError")
	elseif state.errorMessage == ErrorTypes.FailedToImportMap then
		borderColorFileBool = true
		errorText = localization:getText("CreateDialog", "ErrorImportMap")
		props.Analytics:report("importTextureMapError")
	elseif state.errorMessage == ErrorTypes.FailedToUploadFromFileMap then
		borderColorFileBool = true
		errorText = localization:getText("CreateDialog", "ErrorUploadFromFileMapToLarge")
		props.Analytics:report("uploadTextureMapFromFileError")
	end

	local infoText
	if state.uploading == true then
		infoText = localization:getText("CreateDialog", "Uploading")
		underlyingColor = style.InfoTextColor
	else
		infoText = ""
	end

	return Roact.createElement(LabeledElement, {
		LayoutOrder = props.LayoutOrder,
		LabelColumnWidth = props.LabelColumnWidth,
		Text = props.Text,
		ErrorText = errorText,
		InfoText = infoText,
		TextSize = style.ErrorOrWarningTextSize,
		UnderlyingColor = underlyingColor,
	}, {
		Roact.createElement(PromptSelectorWithPreview, {
			SelectionName = selectionName,
			PreviewTitle = props.PreviewTitle,
			HasSelection = hasSelection,
			ImageId = imageId,
			PromptSelection = self.promptSelection,
			UrlSelection = self.urlSelectTextureMap,
			SearchUrl = state.urlAsset,
			BorderColorUrlBool = borderColorUrlBool,
			BorderColorFileBool = borderColorFileBool,
			ClearSelection = self.clearTextureMap,
			OnFocusLost = self.onFocusLost,
		})
	})
end


TextureMapSelector = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
	ImportAssetHandler = ImportAssetHandler,
})(TextureMapSelector)



return RoactRodux.connect(
	function(state: MainReducer.State, props: Props)	
		return {
			Mode = state.MaterialPromptReducer.Mode,
		}
	end
)(TextureMapSelector)
