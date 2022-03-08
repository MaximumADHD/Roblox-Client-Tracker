--[[
	Wraps a PromptSelectorWithPreview to give the user a way to select a local image and see a preview.

	Props:
		CurrentFile : File?
			The currently selected file we should render a preview of.
			Can be nil to mean no file is selected.
		SelectFile : (File?, string?) -> void
			Callback to select a new file. If an error occurred, file is nil and 2nd param is error message
		ClearSelection : void -> void
			Callback to clear the current selection
		PreviewTitle : string
			Title to use on the expanded preview window
]]

local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local Dash = Framework.Dash

local LoadingImage = require(Plugin.Src.Util.LoadingImage)
local PromptSelectorWithPreview = require(Plugin.Src.Util.PromptSelectorWithPreview)

local StudioService = game:GetService("StudioService")

type Props = {
	CurrentFile : _Types.TextureMap?,
	SelectFile : (File?, errorMessage : string?) -> (),
	ClearSelection : () -> (),
	PreviewTitle : string?,
}

type _Props = Props & {
	Analytics : any,
	Localization : any,
	Stylizer : any,
}

local TextureMapSelector = Roact.PureComponent:extend("TextureMapSelector")

function TextureMapSelector:init()
	self.promptSelection = function()
		local formats = {"png", "jpg", "jpeg"}
		local file
		local success, err = pcall(function()
			file = StudioService:PromptImportFile(formats)
		end)
		if success then
			if file then
				self.props.SelectFile(file)
			end
		else
			self.props.SelectFile(nil, err)
		end
	end

	self.renderPreview = function()
		local currentFile = self.props.CurrentFile
		if not currentFile or not currentFile.file then
			-- Nothing selected
			return nil
		end

		local imageId = self.props.CurrentFile.preview

		return Roact.createElement(LoadingImage, {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),

			Image = imageId,
			ScaleType = Enum.ScaleType.Fit,
		})
	end

	self.getMetadata = function()
		local currentFile = self.props.CurrentFile
		if not currentFile or not currentFile.file then
			return {}
		end
		return {
			-- TODO: Add 8/16 bit info here once supported
			("%ix%ipx"):format(currentFile.width, currentFile.height),
		}
	end
end

function TextureMapSelector:render()
	local props : _Props = self.props
	local localization = props.Localization

	local hasSelection = false
	local filename
	if props.CurrentFile and props.CurrentFile.file then
		hasSelection = true
		filename = props.CurrentFile.file.Name
	-- TODO: warnings and errors
	else
		filename = localization:getText("LocalImageSelector", "NoImageSelected")
	end

	local newProps = Dash.join(props, {
		CurrentFile = Dash.None,
		SelectFile = Dash.None,

		SelectionName = filename,
		HasSelection = hasSelection,

		PreviewTitle = props.PreviewTitle,
		RenderPreview = self.renderPreview,
		GetMetadata = self.getMetadata,

		PromptSelection = self.promptSelection,
		ClearSelection = props.ClearSelection,
	})

	return Roact.createElement(PromptSelectorWithPreview, newProps)
end

TextureMapSelector = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TextureMapSelector)


return TextureMapSelector
