--[[
	Generic component for "user selects something that can be previewed".
	Implement PromptSelection and RenderPreview to define how the user selects an item, and how this component should
	display that item.

	Props
		SelectionName : string
			Text to display below the preview
		HasSelection : bool
			Whether something is currently selected
		PreviewTitle : string
			Title to use on the expanded preview window

		RenderPreview : void -> Roact element
			Function to render a preview of the current item
		GetMetadata : void -> [String]
			Return an array of strings of metadata about the current item. Each item in the array is rendered as a separate row
		PromptSelection : void -> void
			Callback to prompt the user to select an item (e.g. with StudioService:PromptImportFile())
		ClearSelection : void -> void
			Callback to clear the current selection
]]

local FFlagTerrainEditorUpdateFontToSourceSans = game:GetFastFlag("TerrainEditorUpdateFontToSourceSans")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local UI = Framework.UI
local Container = UI.Container
local Tooltip = UI.Tooltip

local Decoration = UI.Decoration
local TextLabel = Decoration.TextLabel

local StudioUI = Framework.StudioUI
local Dialog = StudioUI.Dialog

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator

local StatusIcon = require(Plugin.Src.Components.StatusIcon)

local Constants = require(Plugin.Src.Util.Constants)
local ellipsizeMiddle = require(Plugin.Src.Util.ellipsizeMiddle)

local PREVIEW_SIZE = 88
local VERT_PADDING = 4
local TEXT_HEIGHT = 16

local TOOLBAR_HEIGHT = 32
local TOOLBAR_BUTTON_SIZE = 28
local TOOLBAR_ICON_SIZE = 18

local IMPORT_ICON_SIZE = 24

local EXPANDED_PREVIEW_DEFAULT_SIZE = Vector2.new(400, 400)
local EXPANDED_PREVIEW_MIN_SIZE = Vector2.new(100, 100)
local EXPANDED_PREVIEW_PADDING = UDim.new(0, 16)

local TextService = game:GetService("TextService")

-- Button used in the toolbar shown on hover in PromptSelectorWithPreview
local PreviewToolbarButton = Roact.PureComponent:extend("PreviewToolbarButton")

function PreviewToolbarButton:init()
	self.state = {
		isHovered = false,
	}

	self.onHovered = function()
		self:setState({
			isHovered = true,
		})
	end

	self.onHoverEnded = function()
		self:setState({
			isHovered = false,
		})
	end
end

function PreviewToolbarButton:render()
	local theme = self.props.Theme:get()
	local promptSelectorWithPreviewTheme = theme.promptSelectorWithPreviewTheme

	local newProps = Cryo.Dictionary.join(self.props, {
		Size = UDim2.new(1, 0, 1, 0),
		SizeConstraint = Enum.SizeConstraint.RelativeYY,
		ZIndex = 5,

		BackgroundTransparency = 1,
		BorderSizePixel = 0,

		[Roact.Event.MouseEnter] = self.onHovered,
		[Roact.Event.MouseLeave] = self.onHoverEnded,

		Image = "",
		Icon = Cryo.None,
		Theme = Cryo.None,
	})

	return Roact.createElement("ImageButton", newProps, {
		Background = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, TOOLBAR_BUTTON_SIZE, 0, TOOLBAR_BUTTON_SIZE),

			BackgroundTransparency = self.state.isHovered and 0 or 1,
			BorderSizePixel = 0,
			BackgroundColor3 = promptSelectorWithPreviewTheme.toolbarButtonBackgroundColor,
		}, {
			Icon = Roact.createElement("ImageLabel", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(0, TOOLBAR_ICON_SIZE, 0, TOOLBAR_ICON_SIZE),
				ZIndex = 6,

				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				Image = self.props.Icon,
				ImageColor3 = self.state.isHovered
					and promptSelectorWithPreviewTheme.buttonIconHoveredColor
					or promptSelectorWithPreviewTheme.buttonIconColor,
			}),
		}),
	})
end

ContextServices.mapToProps(PreviewToolbarButton, {
	Theme = ContextItems.UILibraryTheme,
})

local PreviewDialog = Roact.PureComponent:extend("PreviewDialog")

function PreviewDialog:render()
	local theme = self.props.Theme:get()
	local promptSelectorWithPreviewTheme = theme.promptSelectorWithPreviewTheme

	local previewTitle = self.props.PreviewTitle or ""

	local previewRenderResult
	if self.props.RenderPreview then
		previewRenderResult = self.props.RenderPreview()
	end

	local metadata = self.props.Metadata or {}

	local textRowHeight = 16
	local padding = 4

	local imageInset = #metadata > 0 and (padding + ((padding + textRowHeight) * #metadata)) or 0

	local layoutOrderIterator = LayoutOrderIterator.new()

	local contents = {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, padding),
		}),

		PreviewContentContainer = Roact.createElement("Frame", {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(1, 0, 1, -imageInset),
			BackgroundColor3 = promptSelectorWithPreviewTheme.previewBackgroundColor,
			BorderColor3 = promptSelectorWithPreviewTheme.previewBorderColor,
		}, {
			PreviewContent = previewRenderResult,
		}),

		-- Double the padding between the preview and filename
		EmptyRow = Roact.createElement(Container, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(1, 0, 0, 0),
		}),
	}

	for index, text in ipairs(metadata) do
		contents["Metadata_" .. tostring(index)] = Roact.createElement(TextLabel, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(1, 0, 0, 16),

			Text = text,
			TextSize = 16,
			TextXAlignment = Enum.TextXAlignment.Left,
		})
	end

	return Roact.createElement(Dialog, {
		Title = previewTitle,

		Size = EXPANDED_PREVIEW_DEFAULT_SIZE,
		MinSize = EXPANDED_PREVIEW_MIN_SIZE,
		Resizable = true,
		Enabled = true,
		Modal = false,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,

		OnClose = self.props.OnClose,
	}, {
		Background = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = theme.backgroundColor,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingTop = EXPANDED_PREVIEW_PADDING,
				PaddingBottom = EXPANDED_PREVIEW_PADDING,
				PaddingLeft = EXPANDED_PREVIEW_PADDING,
				PaddingRight = EXPANDED_PREVIEW_PADDING,
			}),

			Container = Roact.createElement(Container, {}, contents),
		}),
	})
end

ContextServices.mapToProps(PreviewDialog, {
	Theme = ContextItems.UILibraryTheme,
})

local PromptSelectorWithPreview = Roact.PureComponent:extend(script.Name)

function PromptSelectorWithPreview:init()
	self.state = {
		promptSelectionHovered = false,
		showingExpandedPreview = false,
	}

	self.onPromptSelectionHover = function()
		self:setState({
			promptSelectionHovered = true,
		})
	end

	self.onPromptSelectionHoverEnd = function()
		self:setState({
			promptSelectionHovered = false,
		})
	end

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

	self.selectionNameRef = Roact.createRef()

	self.getSelectionNameWidth = function(text)
		local selectionNameInstance = self.selectionNameRef.current
		if not selectionNameInstance then
			return 0
		end

		return TextService:GetTextSize(text, selectionNameInstance.TextSize, selectionNameInstance.Font,
			Vector2.new(math.huge, math.huge)).x
	end

	self.lastSelectionName = ""
	self.lastSelectionNameWidth = 0

	self.updateSelectionNameText = function()
		local selectionNameInstance = self.selectionNameRef.current
		if not selectionNameInstance then
			return
		end

		local maxWidth = selectionNameInstance.AbsoluteSize.x
		local selectionName = self.props.SelectionName or ""

		-- Only calculate the truncation if we need to
		if selectionName ~= self.lastSelectionName or maxWidth ~= self.lastSelectionNameWidth then
			selectionNameInstance.Text = ellipsizeMiddle(selectionName, maxWidth,
				self.getSelectionNameWidth, Constants.FILENAME_ELLIPSIZE_MIDDLE_SUFFIX_LENGTH)
			self.lastSelectionName = selectionName
			self.lastSelectionNameWidth = maxWidth
		end
	end
end

function PromptSelectorWithPreview:didMount()
	self.updateSelectionNameText()
end

function PromptSelectorWithPreview:didUpdate()
	self.updateSelectionNameText()
end

function PromptSelectorWithPreview:render()
	local theme = self.props.Theme:get()
	local promptSelectorWithPreviewTheme = theme.promptSelectorWithPreviewTheme

	local selectionName = self.props.SelectionName or ""
	local previewTitle = self.props.PreviewTitle or ""

	local height = PREVIEW_SIZE + VERT_PADDING + TEXT_HEIGHT

	local hasSelection = self.props.HasSelection
	local promptSelectionHovered = self.state.promptSelectionHovered
	local showingExpandedPreview = self.state.showingExpandedPreview

	local previewRenderResult
	if hasSelection and self.props.RenderPreview then
		previewRenderResult = self.props.RenderPreview()
	end

	local shouldShowToolbar = (hasSelection and promptSelectionHovered) and true or false

	local metadata
	if showingExpandedPreview then
		if self.props.GetMetadata then
			metadata = Cryo.List.join({selectionName}, self.props.GetMetadata())
		else
			metadata = {selectionName}
		end
	end

	local content = {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, VERT_PADDING),
		}),

		PreviewRow = Roact.createElement("Frame", {
			LayoutOrder = 1,
			Size = UDim2.new(0, PREVIEW_SIZE, 0, PREVIEW_SIZE),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			-- Import new asset button goes underneath the preview+toolbar
			-- If we have a preview, block clicking through to this button
			-- To import something new, require users to click "clear" first

			ImportButton = Roact.createElement("ImageButton", {
				ZIndex = 1,
				Size = UDim2.new(1, 0, 1, 0),

				BackgroundTransparency = 0,
				BorderSizePixel = 1,
				BackgroundColor3 = promptSelectionHovered
					and promptSelectorWithPreviewTheme.previewHoveredBackgroundColor
					or promptSelectorWithPreviewTheme.previewBackgroundColor,
				BorderColor3 = promptSelectorWithPreviewTheme.previewBorderColor,
				Image = "",
				AutoButtonColor = false,

				[Roact.Event.Activated] = self.props.PromptSelection,
				[Roact.Event.MouseEnter] = self.onPromptSelectionHover,
				[Roact.Event.MouseLeave] = self.onPromptSelectionHoverEnd,
			}, {
				Icon = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, IMPORT_ICON_SIZE, 0, IMPORT_ICON_SIZE),

					BackgroundTransparency = 1,
					Image = promptSelectorWithPreviewTheme.importIcon,
					ImageColor3 = promptSelectionHovered
						and promptSelectorWithPreviewTheme.buttonIconHoveredColor
						or promptSelectorWithPreviewTheme.buttonIconColor,
				})
			}),

			ClickBlocker = hasSelection and Roact.createElement("ImageButton", {
				ZIndex = 2,
				Size = UDim2.new(1, 0, 1, 0),

				Image = "",
				AutoButtonColor = false,

				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}, {
				PreviewContentContainer = Roact.createElement("Frame", {
					ZIndex = 3,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = theme.backgroundColor,
					BorderSizePixel = 0,
				}, {
					PreviewContent = previewRenderResult,
				}),

				Toolbar = Roact.createElement("Frame", {
					ZIndex = 4,

					AnchorPoint = Vector2.new(0, 1),
					Position = UDim2.new(0, 0, 1, 0),
					Size = UDim2.new(1, 0, 0, TOOLBAR_HEIGHT),
					Visible = shouldShowToolbar,

					BackgroundTransparency = promptSelectorWithPreviewTheme.toolbarTransparency,
					BorderSizePixel = 0,
					BackgroundColor3 = promptSelectorWithPreviewTheme.toolbarBackgroundColor,
				}, {
					ExpandPreview = Roact.createElement(PreviewToolbarButton, {
						Icon = promptSelectorWithPreviewTheme.expandIcon,
						[Roact.Event.Activated] = self.openExpandedPreview,
					}),

					ClearButton = Roact.createElement(PreviewToolbarButton, {
						AnchorPoint = Vector2.new(1, 0),
						Position = UDim2.new(1, 0, 0, 0),
						Icon = promptSelectorWithPreviewTheme.clearIcon,
						[Roact.Event.Activated] = self.props.ClearSelection,
					}),
				}),
			}),

			-- This doesn't need to worry about layering as it's off to the side
			StatusIcon = Roact.createElement(StatusIcon, {
				Position = UDim2.new(0, PREVIEW_SIZE + 8, 0, 0),
				ErrorMessage = self.props.ErrorMessage,
				WarningMessage = self.props.WarningMessage,
				InfoMessage = self.props.InfoMessage,
			}),
		}),

		SelectionName = Roact.createElement("TextLabel", {
			LayoutOrder = 2,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, TEXT_HEIGHT),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextColor3 = theme.textColor,
			Font = FFlagTerrainEditorUpdateFontToSourceSans and theme.font or nil,
			TextSize = FFlagTerrainEditorUpdateFontToSourceSans and theme.textSize or nil,
			-- Note that the text isn't set here, it's controlled by updateSelectionNameText as we need to handle truncation
			[Roact.Ref] = self.selectionNameRef,
			[Roact.Change.AbsoluteSize] = self.updateSelectionNameText,
		}, {
			Tooltip = Roact.createElement(Tooltip, {
				Text = selectionName,
				Enabled = hasSelection,
			}),
		}),

		ExpandedPreview = showingExpandedPreview and Roact.createElement(PreviewDialog, {
			PreviewTitle = previewTitle,
			RenderPreview = self.props.RenderPreview,
			Metadata = metadata,
			OnClose = self.closeExpandedPreview,
		}),
	}

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, Constants.SECOND_COLUMN_WIDTH, 0, height),
	}, content)
end

ContextServices.mapToProps(PromptSelectorWithPreview, {
	Theme = ContextItems.UILibraryTheme,
})

return PromptSelectorWithPreview
