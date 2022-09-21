local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local StudioService = game:GetService("StudioService")
local MarketplaceService = game:GetService("MarketplaceService")

local Controllers = Plugin.Src.Controllers
local ImportAssetHandler = require(Controllers.ImportAssetHandler)
local GeneralServiceController = require(Controllers.GeneralServiceController)

local LabeledElement = require(Plugin.Src.Components.MaterialBrowser.MaterialVariantEditor.LabeledElement)
local PromptSelectorWithPreview = require(Plugin.Src.Components.PromptSelectorWithPreview)

local getFFlagMaterialManagerTextureMapDiverseErrors = require(
	Plugin.Src.Flags.getFFlagMaterialManagerTextureMapDiverseErrors
)
local getFFlagDevFrameworkAssetManagerServiceToMock = require(
	Plugin.Src.Flags.getFFlagDevFrameworkAssetManagerServiceToMock
)

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

	self.clearTextureMap = function()
		local props: _Props = self.props

		local pbrMaterial = props.PBRMaterial :: any
		props.GeneralServiceController:setTextureMap(pbrMaterial, props.MapType, "")
		if not self._isMounted then
			return
		end
		self:setState({
			importAsset = {},
		})
	end

	self.uploadTextureMap = function(file: File)
		local props: _Props = self.props
		local assetHandler = props.ImportAssetHandler

		local _promise = assetHandler
			:handleAssetAsync(file, function()
				self:setState({
					uploading = true,
				})
			end)
			:andThen(function(assetId)
				local pbrMaterial = props.PBRMaterial :: any
				return props.GeneralServiceController:setTextureMap(pbrMaterial, props.MapType, assetId, file.Name)
			end)
			:andThen(function()
				props.Analytics:report("uploadTextureMap")
				self.errorMessage = nil

				if not self._isMounted then
					return
				end
				self:setState({
					uploading = false,
				})
			end)
			:catch(function(err)
				self.clearTextureMap()
				if getFFlagMaterialManagerTextureMapDiverseErrors() then
					warn("Error uploading asset, responseCode " .. tostring(err.responseCode))
					if not err or not err.responseCode or err.responseCode == -1 then
						self.errorMessage = ErrorTypes.FailedToUploadTooLarge
					else
						self.errorMessage = ErrorTypes.FailedToUploadFromFileMap
					end
				else
					self.errorMessage = ErrorTypes.FailedToUploadFromFileMap
				end

				if not self._isMounted then
					return
				end
				self:setState({
					uploading = false,
				})
			end)
	end

	self.deprecatedUploadTextureMap = function(file: File)
		local props: _Props = self.props
		local assetHandler = props.ImportAssetHandler

		local _promise = assetHandler
			:handleAssetAsync(file, function()
				self:setState({
					uploading = true,
				})
			end)
			:andThen(function(assetId)
				local pbrMaterial = props.PBRMaterial :: any
				props.GeneralServiceController:setTextureMap(pbrMaterial, props.MapType, assetId)
				props.Analytics:report("uploadTextureMap")
				self.errorMessage = nil

				if not self._isMounted then
					return
				end
				self:setState({
					uploading = false,
				})
			end)
			:catch(function(err)
				self.clearTextureMap()
				if getFFlagMaterialManagerTextureMapDiverseErrors() then
					warn("Error uploading asset, responseCode " .. tostring(err.responseCode))
					if not err or not err.responseCode or err.responseCode == -1 then
						self.errorMessage = ErrorTypes.FailedToUploadTooLarge
					else
						self.errorMessage = ErrorTypes.FailedToUploadFromFileMap
					end
				else
					self.errorMessage = ErrorTypes.FailedToUploadFromFileMap
				end

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
		local pbrMaterial = props.PBRMaterial :: any
		if assetId then
			props.GeneralServiceController:setTextureMap(pbrMaterial, props.MapType, assetId)
		elseif file then
			local tempId = file:GetTemporaryId()
			newImportState = {
				file = file,
				tempId = tempId,
			}
			if getFFlagDevFrameworkAssetManagerServiceToMock() then
				self.uploadTextureMap(file)
			else
				self.deprecatedUploadTextureMap(file)
			end
		end

		if not self._isMounted then
			return
		end
		self:setState(function(state)
			return {
				importAsset = if file and not (self.errorMessage and self.errorMessage ~= "")
					then newImportState
					else {},
			}
		end)
	end

	self.promptSelection = function()
		self.errorMessage = nil
		local formats = { "png", "jpg", "jpeg" }
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

	self.onFocusLost = function(enterPressed, rbx)
		self.errorMessage = nil
		local searchUrl = rbx.Text
		if not enterPressed then
			return
		elseif not searchUrl or searchUrl == "" then
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

			if not assetInfo or (assetInfo.AssetTypeId ~= Enum.AssetType.Image.Value) then
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
		if self.errorMessage and self.errorMessage ~= "" then
			status = Enum.PropertyStatus.Error
			errorText = localization:getText("CreateDialog", self.errorMessage)
			if self.errorMessage == ErrorTypes.FailedUrl then
				props.Analytics:report("uploadTextureMapError")
			elseif self.errorMessage == ErrorTypes.FailedToImportMap then
				props.Analytics:report("importTextureMapError")
			elseif
				not getFFlagMaterialManagerTextureMapDiverseErrors()
				and self.errorMessage == ErrorTypes.FailedToUploadFromFileMap
			then
				props.Analytics:report("uploadTextureMapFromFileError")
			elseif
				getFFlagMaterialManagerTextureMapDiverseErrors()
				and self.errorMessage == ErrorTypes.FailedToUploadTooLarge
			then
				props.Analytics:report("uploadTextureMapFromFileError")
			elseif
				getFFlagMaterialManagerTextureMapDiverseErrors()
				and self.errorMessage == ErrorTypes.FailedToUploadFromFileMap
			then
				props.Analytics:report("uploadTextureMapGeneralError")
			end
		else
			status = Enum.PropertyStatus.Ok
		end
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
