local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Controllers = Plugin.Src.Controllers
local ImportAssetHandler = require(Controllers.ImportAssetHandler)
local GeneralServiceController = require(Controllers.GeneralServiceController)

local LabeledElement = require(Plugin.Src.Components.MaterialBrowser.MaterialVariantEditor.LabeledElement)
local PromptSelectorWithPreview = require(Plugin.Src.Components.PromptSelectorWithPreview)

local getErrorTypes = require(Plugin.Src.Resources.Constants.getErrorTypes)
local ErrorTypes = getErrorTypes()

export type Props = {
	ColumnWidth: number?,
	LabelColumnWidth: UDim,
	LabelWidth: UDim?,
	LayoutOrder: number?,
	MapType: string,
	PBRMaterial: MaterialVariant | TerrainDetail,
	PreviewTitle: string,
	Text: string,
}

type _Props = Props & {
	Analytics: any,
	GeneralServiceController: any,
	Localization: any,
	ImportAssetHandler: any,
}

local TextureMapSelector = Roact.PureComponent:extend("TextureMapSelector")

function TextureMapSelector:init()
	self.state = {
		importAsset = {},
		uploading = false,
	}
	self.errorMessage = nil

	self.checkIsMounted = function()
		return self._isMounted
	end

	self.setImportAsset = function(file: File?, tempId: string?)
		if not self.checkIsMounted() then
			return
		end
		if file and tempId and not (self.errorMessage and self.errorMessage ~= "") then
			self:setState({
				importAsset = {
					file = file,
					tempId = tempId,
				},
			})
		else
			self:setState({
				importAsset = {},
			})
		end
	end

	self.clearTextureMap = function()
		local props: _Props = self.props

		local pbrMaterial = props.PBRMaterial :: any
		props.GeneralServiceController:setTextureMap(pbrMaterial, props.MapType, "")
		self.setImportAsset(nil)
	end

	self.setUploading = function(value: boolean)
		if not self.checkIsMounted() then
			return
		end
		self:setState({
			uploading = value,
		})
	end

	self.updateTextureMap = function(assetId: string, analyticsMessage: string, error: string?)
		local props: _Props = self.props

		local pbrMaterial = props.PBRMaterial :: any
		props.GeneralServiceController:setTextureMap(pbrMaterial, props.MapType, assetId)
		props.Analytics:report(analyticsMessage)
		self.errorMessage = error
		self.setImportAsset(nil)
		self.setUploading(false)
	end

	self.promptSelection = function()
		local props: _Props = self.props
		local assetHandler = props.ImportAssetHandler

		props.GeneralServiceController:setTextureMapFromFile(
			props.PBRMaterial :: any,
			props.MapType,
			assetHandler,
			self.setUploading,
			self.setImportAsset,
			self.updateTextureMap
		)
	end

	self.onFocusLost = function(enterPressed, rbx)
		local props: _Props = self.props

		local searchUrl = rbx.Text
		if not enterPressed then
			return
		elseif not searchUrl or searchUrl == "" then
			self.clearTextureMap()
			return
		end

		props.GeneralServiceController:setTextureMapFromURL(
			props.PBRMaterial :: any,
			props.MapType,
			searchUrl, 
			self.checkIsMounted,
			self.updateTextureMap
		)
	end
end

function TextureMapSelector:didMount()
	self._isMounted = true
end

function TextureMapSelector:willUnmount()
	self._isMounted = false
end

function TextureMapSelector:didUpdate(prevProps)
	if prevProps.PBRMaterial ~= self.props.PBRMaterial then
		self:setState({
			importAsset = {},
			uploading = false,
		})
		self.errorMessage = nil
	end
end

function TextureMapSelector:render()
	local props: _Props = self.props
	local state = self.state
	local localization = props.Localization

	local selectionName = ""
	local imageId = ""
	local isTempId = false
	local pbrMaterial = props.PBRMaterial

	if state.importAsset and state.importAsset.tempId or pbrMaterial[props.MapType] ~= "" then
		selectionName = if state.importAsset.file then state.importAsset.file.Name else pbrMaterial[props.MapType]
		if state.uploading == true and state.importAsset and state.importAsset.tempId then
			imageId = state.importAsset.tempId
			isTempId = true
		else
			imageId = pbrMaterial[props.MapType]
			isTempId = false
		end
	end

	local status, errorText
	if pbrMaterial[props.MapType] == "" then
		if self.errorMessage and self.errorMessage ~= "" and self.errorMessage ~= ErrorTypes.FailedToInsertAssetManager then
			status = Enum.PropertyStatus.Error
			errorText = localization:getText("CreateDialog", self.errorMessage)
		end
	elseif self.errorMessage == ErrorTypes.FailedToInsertAssetManager then
		status = Enum.PropertyStatus.Warning
		errorText = localization:getText("CreateDialog", self.errorMessage)
	else
		status = Enum.PropertyStatus.Ok
		self.errorMessage = nil
	end

	return Roact.createElement(LabeledElement, {
		FillDirection = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
		LabelColumnWidth = props.LabelColumnWidth,
		Text = props.Text,
		StatusText = errorText,
		Status = status,
	}, {
		Roact.createElement(PromptSelectorWithPreview, {
			SelectionName = selectionName,
			PreviewTitle = props.PreviewTitle,
			IsTempId = isTempId,
			ImageId = imageId,
			LabelWidth = props.LabelWidth,
			PromptSelection = self.promptSelection,
			SearchUrl = pbrMaterial[props.MapType],
			ClearSelection = self.clearTextureMap,
			OnFocusLost = self.onFocusLost,
			ColumnWidth = props.ColumnWidth,
		}),
	})
end

TextureMapSelector = withContext({
	Analytics = Analytics,
	GeneralServiceController = GeneralServiceController,
	Localization = Localization,
	ImportAssetHandler = ImportAssetHandler,
})(TextureMapSelector)

return TextureMapSelector
