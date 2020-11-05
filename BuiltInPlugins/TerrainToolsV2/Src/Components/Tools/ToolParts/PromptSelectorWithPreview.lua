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
		PromptSelection : void -> void
			Callback to prompt the user to select an item (e.g. with StudioService:PromptImportFile())
		ClearSelection : void -> void
			Callback to clear the current selection
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local Dialog = Framework.StudioUI.Dialog

local PREVIEW_SIZE = 88
local VERT_PADDING = 4
local TEXT_HEIGHT = 16

local TOOLBAR_HEIGHT = 32
local TOOLBAR_BUTTON_SIZE = 28
local TOOLBAR_ICON_SIZE = 18

local IMPORT_ICON_SIZE = 24

-- TODO: Get sizes from design
local EXPANDED_PREVIEW_DEFAULT_SIZE = Vector2.new(200, 200)
local EXPANDED_PREVIEW_MIN_SIZE = Vector2.new(100, 100)
local EXPANDED_PREVIEW_PADDING = UDim.new(0, 16)

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
end

function PromptSelectorWithPreview:render()
	local theme = self.props.Theme:get()
	local promptSelectorWithPreviewTheme = theme.promptSelectorWithPreviewTheme

	local selectionName = self.props.SelectionName or ""
	local previewTitle = self.props.PreviewTitle or ""

	local width = PREVIEW_SIZE
	local height = PREVIEW_SIZE + VERT_PADDING + TEXT_HEIGHT

	local hasSelection = self.props.HasSelection
	local promptSelectionHovered = self.state.promptSelectionHovered
	local showingExpandedPreview = self.state.showingExpandedPreview

	local previewRenderResult
	if hasSelection and self.props.RenderPreview then
		previewRenderResult = self.props.RenderPreview()
	end

	local expandedPreviewRenderResult
	if hasSelection and showingExpandedPreview and self.props.RenderPreview then
		expandedPreviewRenderResult = self.props.RenderPreview()
	end

	local shouldShowToolbar = (hasSelection and promptSelectionHovered) and true or false

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
					BackgroundTransparency = 1,
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
		}),

		SelectionName = Roact.createElement("TextLabel", {
			LayoutOrder = 2,
			BackgroundTransparency = 1,
			Text = selectionName,
			Size = UDim2.new(1, 0, 0, TEXT_HEIGHT),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextColor3 = theme.textColor,
		}),

		ExpandedPreview = showingExpandedPreview and Roact.createElement(Dialog, {
			Title = previewTitle,

			Size = EXPANDED_PREVIEW_DEFAULT_SIZE,
			MinSize = EXPANDED_PREVIEW_MIN_SIZE,
			Resizable = true,
			Enabled = true,
			Modal = false, -- TODO: Should this be modal?
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,

			OnClose = self.closeExpandedPreview,
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

				PreviewContentContainer = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = promptSelectorWithPreviewTheme.previewBackgroundColor,
					BorderColor3 = promptSelectorWithPreviewTheme.previewBorderColor,
				}, {
					PreviewContent = expandedPreviewRenderResult,
				}),

				-- TODO MOD-180: Add metadata
			}),
		}),
	}

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, width, 0, height),
	}, content)
end

ContextServices.mapToProps(PromptSelectorWithPreview, {
	Theme = ContextItems.UILibraryTheme,
})

return PromptSelectorWithPreview