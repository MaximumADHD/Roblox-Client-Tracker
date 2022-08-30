--[[
	Generic component for "user selects something that can be previewed".
	Implement PromptSelection to define how the user selects an item

	Props
		SelectionName: string
			Text to display below the preview
		PreviewTitle: string
			Title to use on the expanded preview window
		ImageId: string
			Image id to render preview
		PromptSelection: void -> void
			Callback to prompt the user to select an item (e.g. with StudioService:PromptImportFile())
		UrlSelection: string -> void
			Callback to select already uploaded item (by URL)
		ClearSelection: void -> void
			Callback to clear the current selection
		SearchUrl: string
			AssetId that is inserted by user
		OnFocusLost: void -> void
			Callback to process asset url inserted by user
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization
local withContext = ContextServices.withContext

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local IconButton = UI.IconButton
local TextInput2 = UI.TextInput2

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator
local Components = Plugin.Src.Components
local PreviewDialog = require(Components.PromptSelectorWithPreview.PreviewDialog)
local PreviewImage = require(Components.PromptSelectorWithPreview.PreviewImage)

local getFFlagMaterialManagerVariantCreatorOverhaul = require(Plugin.Src.Flags.getFFlagMaterialManagerVariantCreatorOverhaul)

export type Props = {
	SelectionName: string?,
	PreviewTitle: string?,
	HasSelection: boolean?,   -- Remove wih FFlagMaterialManagerVariantCreatorOverhaul
	ImageId: string,
	IsTempId: boolean,
	PromptSelection: () -> (),
	UrlSelection: (string) -> (),
	BorderColorUrlBool: boolean,
	SearchUrl: string?,
	ClearSelection: () -> (),
	OnFocusLost: () -> (),
}

type _Props = Props & {
	Stylizer: any,
	Localization: any,
}

type _Style = {
	ExpandIcon: string,
	ClearIcon: string,
	ImportIcon: string,

	PreviewBorderColor: Color3,

	ButtonColor: Color3,
	ButtonHeight: number,
	IconImportPaddingLeft: number,
	IconImportPaddingRight: number,

	ImportIconColor: Color3,
	ImportImageBackground: Color3,
	ButtonIconColor: Color3,
	BorderColorError: Color3,

	ColumnWidth: number,
	LabelColumnWidth: UDim,
	PreviewSize: number,

	PaddingVertical: number,
	PaddingHorizontal: number,
}

local PromptSelectorWithPreview = Roact.PureComponent:extend("PromptSelectorWithPreview")

function PromptSelectorWithPreview:init()
	self.state = {
		showingExpandedPreview = false,
	}

	self.openExpandedPreview = function()
		self:setState({
			showingExpandedPreview = true,
		})
	end

	self.closeExpandedPreview = function()
		self:setState({
			showingExpandedPreview = false,
		})
	end
end

function PromptSelectorWithPreview:render()
	local props: _Props = self.props
	local localization = props.Localization
	local state = self.state
	local style: _Style = props.Stylizer.PromptSelectorWithPreview
	local layoutOrderIterator = LayoutOrderIterator.new()

	local selectionName = props.SelectionName or ""
	local previewTitle = props.PreviewTitle or ""

	local columnWidth = style.ColumnWidth
	local totalWidth = columnWidth + style.LabelColumnWidth.Offset
	local previewSize = style.PreviewSize
	local height = previewSize
	local buttonHeight = style.ButtonHeight

	local showingExpandedPreview = state.showingExpandedPreview

	local metadata
	if showingExpandedPreview then
		metadata = {selectionName}
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, totalWidth, 0, height + style.PaddingVertical),
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, style.PaddingVertical),
		}),

		TwoColumn = Roact.createElement(Pane, {
				Layout = Enum.FillDirection.Horizontal,
				Size = UDim2.new(1, 0, 0, height),
				Spacing = style.PaddingHorizontal,
			}, {
			PreviewColumn = Roact.createElement(Pane, {
				LayoutOrder = 1,
				Size = UDim2.new(0, previewSize, 1, 0),
			}, {
				PreviewImage = Roact.createElement(PreviewImage, {
					HasSelection = if getFFlagMaterialManagerVariantCreatorOverhaul() then nil else props.HasSelection,
					ImageId = props.ImageId,
					IsTempId = props.IsTempId,
					ClearSelection = props.ClearSelection,
					OpenExpandedPreview = self.openExpandedPreview,
					LayoutOrder = layoutOrderIterator:getNextOrder(),
				}),

				ExpandedPreview = showingExpandedPreview and Roact.createElement(PreviewDialog, {
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					PreviewTitle = previewTitle,
					ImageId = props.ImageId,
					IsTempId = props.IsTempId,
					Metadata = metadata,
					OnClose = self.closeExpandedPreview,
				}),
			}),

			ImportColumn = Roact.createElement(Pane, {
				Size = UDim2.new(0, columnWidth, 1, 0),
				Style = "RoundBox",
				Spacing = 10,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Layout = Enum.FillDirection.Vertical,
				LayoutOrder = 2,
			}, {
				UrlImport = Roact.createElement(TextInput2, {
					PlaceholderText = localization:getText("CreateDialog", "InsertAssetURL"),
					Text = props.SearchUrl,
					OnTextChanged = props.UrlSelection,
					Size = UDim2.new(1, 0, 0, buttonHeight),
					OnFocusLost = props.OnFocusLost,
					BorderColor = if props.BorderColorUrlBool then style.BorderColorError else nil,
				}),

				IconImport = Roact.createElement(IconButton, {
					Size = UDim2.new(1, 0, 0, buttonHeight),
					Text = localization:getText("CreateDialog", "Import"),
					TextXAlignment = Enum.TextXAlignment.Left,
					LeftIcon = style.ImportIcon,
					IconColor = style.ImportIconColor,
					BackgroundColor = style.ButtonColor,
					OnClick = props.PromptSelection,
					Padding = {
						Left = style.IconImportPaddingLeft,
						Right = style.IconImportPaddingRight,
					},
				}),
			}),
		}),
	})
end

PromptSelectorWithPreview = withContext({
	Stylizer = Stylizer,
	Localization = Localization,
})(PromptSelectorWithPreview)

return PromptSelectorWithPreview
