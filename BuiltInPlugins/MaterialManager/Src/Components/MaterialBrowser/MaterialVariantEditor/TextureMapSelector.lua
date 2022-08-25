local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

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
local GeneralServiceController = require(Controllers.GeneralServiceController)

local LabeledElement = require(Plugin.Src.Components.MaterialBrowser.MaterialVariantEditor.LabeledElement)
local PromptSelectorWithPreview = require(Plugin.Src.Components.PromptSelectorWithPreview)

local getErrorTypes = require(Plugin.Src.Resources.Constants.getErrorTypes)
local ErrorTypes = getErrorTypes()

export type Props = {
	LabelColumnWidth: UDim,
	LayoutOrder: number?,
	MapType: string,
	MaterialVariant: string,
	PreviewTitle: string,
	Text: string,
}

type _Props = Props & {
	Analytics: any,
	GeneralServiceController: any,
	Localization: any,
	Stylizer: any,
	ImportAssetHandler: any,
}

local TextureMapSelector = Roact.PureComponent:extend("TextureMapSelector")

function TextureMapSelector:init()
	self.state = {
		urlAsset = "",
		importAsset = {},
		uploading = false,
	}
	self.errorMessage = nil

	self.clearTextureMap = function()
		local props: _Props = self.props

		local materialVariant = props.MaterialVariant:: any
		props.GeneralServiceController:setTextureMap(materialVariant, props.MapType, "")
		if not self._isMounted then
			return
		end
		self:setState({
			urlAsset = "",
			importAsset = {}, 
		})
	end

	self.uploadTextureMap = function(file: File)
		local props: _Props = self.props
		local assetHandler = props.ImportAssetHandler
		
		local _promise = assetHandler:handleAssetAsync(file, function()
			self:setState({
				uploading = true,
			})
		end):andThen(function(assetId)
			local materialVariant = props.MaterialVariant:: any
			props.GeneralServiceController:setTextureMap(materialVariant, props.MapType, assetId)
			props.Analytics:report("uploadTextureMap")
			self.errorMessage = nil

			if not self._isMounted then
				return
			end
			self:setState({
				uploading = false,
			})
		end, function(err)
			self.clearTextureMap()
			self.errorMessage = ErrorTypes.FailedToUploadFromFileMap

			if not self._isMounted then
				return
			end
			self:setState({
				uploading = false,
			})
		end)
	end

	self.selectTextureMap = function(file: File?, assetId: string?)
		local props: _Props = self.props
		
		local newImportState
		local materialVariant = props.MaterialVariant:: any
		if assetId then
			props.GeneralServiceController:setTextureMap(materialVariant, props.MapType, assetId)
		elseif file then
			local tempId = file:GetTemporaryId()
			newImportState = {
				file = file,
				tempId = tempId,
			}
			self.uploadTextureMap(file)
		end

		if not self._isMounted then
			return
		end
		self:setState(function(state)
			return {
				urlAsset = if file then "" else state.urlAsset,
				importAsset = if file and not (self.errorMessage and self.errorMessage ~= "") then newImportState else {},
			}
		end)
	end

	self.urlSelectTextureMap = function(searchUrl)
		self:setState({
			urlAsset = searchUrl,
		})
	end

	self.promptSelection = function()
		self.errorMessage = nil
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
			self.errorMessage = ErrorTypes.FailedToImportMap
			self.clearTextureMap()
		end
	end

	self.onFocusLost = function()
		self.errorMessage = nil
		local searchUrl = self.state.urlAsset
		if not searchUrl or searchUrl == "" then
			self.clearTextureMap()
			return
		end

		local numericId = tonumber(searchUrl:match("://(%d+)")) or tonumber(searchUrl:match("(%d+)"))
		if not numericId then
			self.errorMessage = ErrorTypes.FailedUrl
			self.clearTextureMap()
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
				self.errorMessage = ErrorTypes.FailedUrl
				self.clearTextureMap()
				return
			end

			if not self._isMounted then
				return
			end

			-- AssetTypeId = 1 is Image
			if not assetInfo or (assetInfo.AssetTypeId ~= 1) then	
				self.errorMessage = ErrorTypes.FailedUrl
				self.clearTextureMap()
				return
			end
			self.selectTextureMap(nil, "rbxassetid://" .. tostring(numericId))
		end)
	end
end

function TextureMapSelector:didMount()
	self._isMounted = true
end

function TextureMapSelector:willUnmount()
	self._isMounted = false
end

function TextureMapSelector:didUpdate(prevProps)
	if prevProps.MaterialVariant ~= self.props.MaterialVariant then
		self:setState({
			urlAsset = "",
			importAsset = {},
			uploading = false,
		})
	end
end

function TextureMapSelector:render()
	local props: _Props = self.props
	local state = self.state
	local localization = props.Localization

	local hasSelection = false
	local selectionName = ""
	local imageId = ""
	local isTempId = false
	local materialVariant = props.MaterialVariant

	if state.importAsset and state.importAsset.tempId or materialVariant[props.MapType] ~= "" then
		hasSelection = true
		selectionName = if state.importAsset.file then state.importAsset.file.Name else materialVariant[props.MapType]
		if state.uploading == true and state.importAsset and state.importAsset.tempId then
			imageId = state.importAsset.tempId 
			isTempId = true
		else
			imageId = materialVariant[props.MapType]
			isTempId = false
		end
	end

	local status, errorText
	if materialVariant[props.MapType] == "" then
		if self.errorMessage and self.errorMessage ~= "" then
			status = Enum.PropertyStatus.Error
			errorText = localization:getText("CreateDialog", self.errorMessage)
			if self.errorMessage == ErrorTypes.FailedUrl then
				props.Analytics:report("uploadTextureMapError")
			elseif self.errorMessage == ErrorTypes.FailedToImportMap then
				props.Analytics:report("importTextureMapError")
			elseif self.errorMessage == ErrorTypes.FailedToUploadFromFileMap then 
				props.Analytics:report("uploadTextureMapFromFileError")
			end
		else
			status = Enum.PropertyStatus.Ok
		end
	else
		status = Enum.PropertyStatus.Ok
		self.errorMessage = nil
	end

	return Roact.createElement(LabeledElement, {
		LayoutOrder = props.LayoutOrder,
		LabelColumnWidth = props.LabelColumnWidth,
		Text = props.Text,
		StatusText = errorText,
		Status = status,
	}, {
		Roact.createElement(PromptSelectorWithPreview, {
			SelectionName = selectionName,
			PreviewTitle = props.PreviewTitle,
			HasSelection = hasSelection,
			IsTempId = isTempId,
			ImageId = imageId,
			PromptSelection = self.promptSelection,
			UrlSelection = self.urlSelectTextureMap,
			SearchUrl = state.urlAsset,
			BorderColorUrlBool = if self.errorMessage == ErrorTypes.FailedUrl then true else false,
			ClearSelection = self.clearTextureMap,
			OnFocusLost = self.onFocusLost,
		})
	})
end

TextureMapSelector = withContext({
	Analytics = Analytics,
	GeneralServiceController = GeneralServiceController,
	Localization = Localization,
	Stylizer = Stylizer,
	ImportAssetHandler = ImportAssetHandler,
})(TextureMapSelector)

return TextureMapSelector
