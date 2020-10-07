--[[
	Wraps a PromptSelectorWithPreview to give the user a way to select a local image and see a preview.

	Props:
		CurrentFile : File?
			The currently selected file we should render a preview of.
			Can be nil to mean no file is selected.
		SelectFile : File? -> void
			Callback to select a new file. Can be passed nil to mean clear selection.
		PreviewTitle : string
			Title to use on the expanded preview window
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local ToolParts = script.Parent
local PromptSelectorWithPreview = require(ToolParts.PromptSelectorWithPreview)

local StudioService = game:GetService("StudioService")

local LocalImageSelector = Roact.PureComponent:extend(script.Name)

function LocalImageSelector:init()
	self.promptSelection = function()
		local file
		local success, err = pcall(function()
			-- TODO MOD-110: other image formats, 16 bit etc. channels, TIFF support
			file = StudioService:PromptImportFile({"png"})
		end)
		if success then
			if file then
				self.props.SelectFile(file)
			else
				warn("Failed to select image: prompt was successful but file is nil")
			end
		else
			warn(("Failed to select image: %s"):format(tostring(err)))
		end
	end

	self.clearSelection = function()
		self.props.SelectFile(nil)
	end

	self.renderPreview = function()
		local imageId = ""
		if self.props.CurrentFile then
			imageId = self.props.CurrentFile:GetTemporaryId()
		end
		return Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Image = imageId,
			ScaleType = Enum.ScaleType.Fit,
		})
	end
end

function LocalImageSelector:render()
	local filename
	if self.props.CurrentFile then
		filename = self.props.CurrentFile.Name
	else
		filename = self.props.Localization:get():getText("LocalImageSelector", "NoImageSelected")
	end

	return Roact.createElement(PromptSelectorWithPreview, {
		SelectionName = filename,
		HasSelection = self.props.CurrentFile ~= nil,

		RenderPreview = self.renderPreview,
		PreviewTitle = self.props.PreviewTitle,

		PromptSelection = self.promptSelection,
		ClearSelection = self.clearSelection,
	})
end

ContextServices.mapToProps(LocalImageSelector, {
	Localization = ContextItems.UILibraryLocalization,
})

return LocalImageSelector
