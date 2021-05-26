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

local FFlagTerrainImportGreyscale2 = game:GetFastFlag("TerrainImportGreyscale2")
local FFlagTerrainToolsHeightmapUseLoadingImage = game:GetFastFlag("TerrainToolsHeightmapUseLoadingImage")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local LoadingImage = require(Plugin.Src.Components.LoadingImage)

local ToolParts = script.Parent
local PromptSelectorWithPreview = require(ToolParts.PromptSelectorWithPreview)

local StudioService = game:GetService("StudioService")

local LocalImageSelector = Roact.PureComponent:extend(script.Name)

function LocalImageSelector:init()
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
		if FFlagTerrainToolsHeightmapUseLoadingImage then
			local f = self.props.CurrentFile
			if not f or not f.file then
				-- Nothing selected
				return nil
			end

			local imageId
			if FFlagTerrainImportGreyscale2 then
				imageId = self.props.CurrentFile.preview
			else
				imageId = self.props.CurrentFile.file:GetTemporaryId()
			end

			return Roact.createElement(LoadingImage, {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),

				Image = imageId,
				ScaleType = Enum.ScaleType.Fit,
			})
		else
			local imageId = ""
			if self.props.CurrentFile and self.props.CurrentFile.file then
				if FFlagTerrainImportGreyscale2 then
					imageId = self.props.CurrentFile.preview
				else
					imageId = self.props.CurrentFile.file:GetTemporaryId()
				end
			end
			return Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Image = imageId,
				ScaleType = Enum.ScaleType.Fit,
			})
		end
	end

	self.getMetadata = function()
		local cf = self.props.CurrentFile
		if not cf or not cf.file then
			return {}
		end
		return {
			-- TODO: Add 8/16 bit info here once supported
			("%ix%ipx"):format(cf.width, cf.height),
		}
	end
end

function LocalImageSelector:render()
	local hasSelection = false
	local filename
	if self.props.CurrentFile and self.props.CurrentFile.file then
		hasSelection = true
		filename = self.props.CurrentFile.file.Name
	else
		filename = self.props.Localization:get():getText("LocalImageSelector", "NoImageSelected")
	end

	local newProps = Cryo.Dictionary.join(self.props, {
		CurrentFile = Cryo.None,
		SelectFile = Cryo.None,

		SelectionName = filename,
		HasSelection = hasSelection,

		PreviewTitle = self.props.PreviewTitle,
		RenderPreview = self.renderPreview,
		GetMetadata = self.getMetadata,

		PromptSelection = self.promptSelection,
		ClearSelection = self.props.ClearSelection,
	})

	return Roact.createElement(PromptSelectorWithPreview, newProps)
end

ContextServices.mapToProps(LocalImageSelector, {
	Localization = ContextItems.UILibraryLocalization,
})

return LocalImageSelector
