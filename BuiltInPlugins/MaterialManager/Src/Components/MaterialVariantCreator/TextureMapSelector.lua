--[[
	Wraps a PromptSelectorWithPreview to give the user a way to select a local image and see a preview.

	Props:
		CurrentTextureMap : TextureMap?
			The currently selected file we should render a preview of.
			Can be nil to mean no file is selected.
		SelectTextureMap : (File?, string?, string?) -> void
			Callback to select a new file. If an error occurred, file is nil and 2nd param is error message
		UrlSelection : string -> ()
			Callback to select url
		ClearSelection : void -> void
			Callback to clear the current selection
		PreviewTitle : string
			Title to use on the expanded preview window
		SearchUrl : string?
			AssetId that is inserted by user
]]

local Plugin = script.Parent.Parent.Parent.Parent
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
local PromptSelectorWithPreview = require(Plugin.Src.Components.PromptSelectorWithPreview)
local getErrorTypes = require(Plugin.Src.Util.getErrorTypes)
local FFlagURLbyNumberAndMaterialsBetaResponse = game:GetFastFlag("URLbyNumberAndMaterialsBetaResponse")

local ErrorTypes = getErrorTypes()

local StudioService = game:GetService("StudioService")

export type Props = {
	CurrentTextureMap : _Types.TextureMap?,
	SelectTextureMap : (file: File?, assetId : string?, errorMessage : string?) -> (),
	UrlSelection : (string?) -> (),
	ClearSelection : () -> (),
	PreviewTitle : string?,
	SearchUrl : string?,
}

type _Props = Props & {
	Analytics : any,
	Localization : any,
	Stylizer : any,
}

local TextureMapSelector = Roact.PureComponent:extend("TextureMapSelector")

function TextureMapSelector:init()
	if not FFlagURLbyNumberAndMaterialsBetaResponse then
		self.state = {
			searchUrl = "",
		}
	end

	self.promptSelection = function()
		local formats = {"png", "jpg", "jpeg"}
		local file

		local success, _err = pcall(function()
			file = StudioService:PromptImportFile(formats)
		end)
		
		if success and file then
			self.props.SelectTextureMap(file, nil)
		elseif not success then
			self.props.SelectTextureMap(nil, nil, ErrorTypes.FailedToSelectFile)
		end
	end

	if not FFlagURLbyNumberAndMaterialsBetaResponse then
		self.urlSelection = function(searchUrl)
			self:setState({
				searchUrl = searchUrl,
			})
		end
	end

	self.onFocusLost = function()
		local searchUrl
		if FFlagURLbyNumberAndMaterialsBetaResponse then
			local props : _Props = self.props
			searchUrl = props.SearchUrl
		else
			local state = self.state
			searchUrl = state.searchUrl
		end

		if searchUrl and searchUrl == "" then
			return
		end

		local numericId 
		if FFlagURLbyNumberAndMaterialsBetaResponse then
			numericId = tonumber(searchUrl:match("://(%d+)")) or tonumber(searchUrl:match("(%d+)"))
		else
			numericId = tonumber(searchUrl:match("://(%d+)"))
		end
		if not numericId then
			self.props.SelectTextureMap(nil, nil, ErrorTypes.FailedUrl)
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
				return
			end

			if FFlagURLbyNumberAndMaterialsBetaResponse then
				self.props.SelectTextureMap(nil, "rbxassetid://" .. numericId)
			else
				self.props.SelectTextureMap(nil, searchUrl)
			end
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
	local props : _Props = self.props

	local hasSelection = false
	local filename = ""
	if props.CurrentTextureMap and props.CurrentTextureMap.file then
		hasSelection = true
		filename = props.CurrentTextureMap.file.Name
	elseif props.CurrentTextureMap and props.CurrentTextureMap.assetId then
		hasSelection = true
		filename = props.CurrentTextureMap.assetId
	end

	local newProps = FFlagURLbyNumberAndMaterialsBetaResponse and Dash.join(props, {
		CurrentTextureMap = Dash.None,
		SelectTextureMap = Dash.None,

		SelectionName = filename,
		HasSelection = hasSelection,

		PreviewTitle = props.PreviewTitle,
		RenderPreview = self.renderPreview,

		PromptSelection = self.promptSelection,
		UrlSelection = props.UrlSelection,
		SearchUrl = props.SearchUrl,
		ClearSelection = props.ClearSelection,

		OnFocusLost = self.onFocusLost,
	}) or Dash.join(props, {
		CurrentTextureMap = Dash.None,
		SelectTextureMap = Dash.None,

		SelectionName = filename,
		HasSelection = hasSelection,

		PreviewTitle = props.PreviewTitle,
		RenderPreview = self.renderPreview,

		PromptSelection = self.promptSelection,
		UrlSelection = self.urlSelection,
		SearchUrl = props.CurrentTextureMap and props.CurrentTextureMap.assetId or "",
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
