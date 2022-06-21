--[[
	Wraps a PromptSelectorWithPreview to give the user a way to select a local image and see a preview.

	Props:
		CurrentTextureMap: TextureMap?
			The currently selected file we should render a preview of.
			Can be nil to mean no file is selected.
		SelectTextureMap: (File?, string?, string?) -> void
			Callback to select a new file. If an error occurred, file is nil and 2nd param is error message
		UrlSelection: string -> ()
			Callback to select url
		ClearSelection: void -> void
			Callback to clear the current selection
		PreviewTitle: string
			Title to use on the expanded preview window
		SearchUrl: string?
			AssetId that is inserted by user
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local Dash = Framework.Dash

local MarketplaceService = game:GetService("MarketplaceService")

local LoadingImage = require(Plugin.Src.Components.LoadingImage)
local getFFlagMaterialManagerRefactorPromptSelectorWithPreview = require(Plugin.Src.Flags.getFFlagMaterialManagerRefactorPromptSelectorWithPreview)
local PromptSelectorWithPreview = if getFFlagMaterialManagerRefactorPromptSelectorWithPreview() then require(Plugin.Src.Components.PromptSelectorWithPreview) else require(Plugin.Src.Components.DEPRECATED_PromptSelectorWithPreview)
local getErrorTypes = require(Plugin.Src.Resources.Constants.getErrorTypes)

local ErrorTypes = getErrorTypes()

local StudioService = game:GetService("StudioService")

export type Props = {
	CurrentTextureMap: _Types.TextureMap?,
	SelectTextureMap: (file: File?, assetId: string?, errorMessage: string?) -> (),
	UrlSelection: (string?) -> (),
	ClearSelection: () -> (),
	PreviewTitle: string?,
	SearchUrl: string?,
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

local TextureMapSelector = Roact.PureComponent:extend("TextureMapSelector")

function TextureMapSelector:init()
	self.state = {
		errorUrl = false,
		errorFile = false,
	}

	self.promptSelection = function()
		local formats = {"png", "jpg", "jpeg"}
		local file

		local success, _err = pcall(function()
			file = StudioService:PromptImportFile(formats)
		end)

		if success and file then
			self.props.SelectTextureMap(file, nil)
			self:setState({
				errorUrl = false,
				errorFile = false,
			})
		elseif not success then
			self.props.SelectTextureMap(nil, nil, ErrorTypes.FailedToSelectFile)
			self:setState({
				errorUrl = false,
				errorFile = true,
			})
		end
	end

	self.onFocusLost = function()
		local props: _Props = self.props
		
		local searchUrl = props.SearchUrl
		if searchUrl and searchUrl == "" then
			return
		end

		local numericId = tonumber(searchUrl:match("://(%d+)")) or tonumber(searchUrl:match("(%d+)"))
		if not numericId then
			self.props.SelectTextureMap(nil, nil, ErrorTypes.FailedUrl)
			self:setState({
				errorUrl = true,
				errorFile = false,
			})
			return
		end

		local assetInfo
		spawn(function()
			if not self._isMounted then
				return
			end

			assetInfo = MarketplaceService:GetProductInfo(numericId)

			if not self._isMounted then
				return
			end

			-- AssetTypeId = 1 is Image, AssetTypeId = 13 is Decal
			if not assetInfo or (assetInfo.AssetTypeId ~= 1 and assetInfo.AssetTypeId ~= 13) then				
				self.props.SelectTextureMap(nil, nil, ErrorTypes.FailedUrl)
				self:setState({
					errorUrl = true,
					errorFile = false,
				})
				return
			end

			self.props.SelectTextureMap(nil, "rbxassetid://" .. numericId)
			self:setState({
				errorUrl = false,
				errorFile = false,
			})
		end)
	end

	self.renderPreview = function()
		local currentTextureMap = self.props.CurrentTextureMap
		if not currentTextureMap or (not currentTextureMap.file and not currentTextureMap.assetId) then
			-- Nothing selected
			return nil
		end

		local imageId = if currentTextureMap.file then currentTextureMap.tempId else currentTextureMap.assetId

		return Roact.createElement(LoadingImage, {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Image = imageId,
			ScaleType = Enum.ScaleType.Fit,
		})
	end
end

function TextureMapSelector:render()
	local props: _Props = self.props

	local hasSelection = false
	local filename = ""
	if props.CurrentTextureMap and props.CurrentTextureMap.file then
		hasSelection = true
		filename = props.CurrentTextureMap.file.Name
	elseif props.CurrentTextureMap and props.CurrentTextureMap.assetId then
		hasSelection = true
		filename = props.CurrentTextureMap.assetId
	end

	local newProps = Dash.join(props, {
		CurrentTextureMap = Dash.None,
		SelectTextureMap = Dash.None,

		SelectionName = filename,
		HasSelection = hasSelection,

		PreviewTitle = props.PreviewTitle,
		RenderPreview = self.renderPreview,

		PromptSelection = self.promptSelection,
		UrlSelection = props.UrlSelection,
		SearchUrl = props.SearchUrl,
		BorderColorUrlBool = self.state.errorUrl,
		BorderColorFileBool = self.state.errorFile,
		ClearSelection = props.ClearSelection,

		OnFocusLost = self.onFocusLost,
	})

	return Roact.createElement(PromptSelectorWithPreview, newProps)
end

function TextureMapSelector:didMount()
	self._isMounted = true
end

function TextureMapSelector:willUnmount()
	self._isMounted = false
end

TextureMapSelector = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TextureMapSelector)


return TextureMapSelector
