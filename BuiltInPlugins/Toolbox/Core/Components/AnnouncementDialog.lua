local GuiService = game:GetService("GuiService")

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local Roact = require(Packages.Roact)

local CaptureFocus = Framework.UI.CaptureFocus
local Button = Framework.UI.Button
local Dash = Framework.Dash
local HoverArea = Framework.UI.HoverArea
local Image = Framework.UI.Decoration.Image
local LayoutOrderIterator = Framework.Util.LayoutOrderIterator
local LinkText = Framework.UI.LinkText
local Pane = Framework.UI.Pane
local TextLabel = Framework.UI.Decoration.TextLabel

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local formatLocalDateTime = Framework.Util.formatLocalDateTime

local Util = Plugin.Core.Util
local ContextGetter = require(Util.ContextGetter)
local Images = require(Util.Images)
local ToolboxUtilities = require(Util.ToolboxUtilities)

local getModal = ContextGetter.getModal

local withAbsoluteSize = Framework.Wrappers.withAbsoluteSize
local Settings = require(Plugin.Core.ContextServices.Settings)

local BUTTON_SIZE = UDim2.fromOffset(110, 30)
local BUTTON_TO_IMAGE_SPACING = 10
local CLOSE_BUTTON_SIZE = 28
local CONTENT_HORIZONTAL_PADDING = 16
local CONTENT_VERTICAL_PADDING = 20
local CONTENT_SPACING = 10
local IMAGE_SIZE = UDim2.fromOffset(264, 110)
local MAX_WIDTH = 400
local OVERLAY_PADDING = 20
local OVERLAY_SPACING = 10

type _InternalProps = {
	AbsoluteSize: Vector2?, -- From withAbsoluteSize
	Localization: any,
	Settings: any,
	Stylizer: any,
	WrapperProps: any?, -- From withAbsoluteSize
}

type _State = {
	isEnabled: boolean,
}

type AnnouncementDialogProps = _InternalProps

local AnnouncementDialog = Roact.PureComponent:extend("AnnouncementDialog")

function AnnouncementDialog:init(props: AnnouncementDialogProps)
	self.state = {
		isEnabled = true,
	}

	self.shouldShowAnnouncementDialog = function()
		local state: _State = self.state
		local props: AnnouncementDialogProps = self.props

		local settings = props.Settings:get("Plugin")
		local lastAnnouncementViewed = settings:getLastAnnouncementViewedKey()

		local announcementConfiguration = ToolboxUtilities.getAnnouncementConfiguration()
		local dateKey = announcementConfiguration.Date or ""

		return state.isEnabled and dateKey ~= "" and lastAnnouncementViewed ~= dateKey
	end

	self.onClose = function()
		local props: AnnouncementDialogProps = self.props

		local announcementConfiguration = ToolboxUtilities.getAnnouncementConfiguration()
		local dateKey = announcementConfiguration.Date or ""

		local modal = getModal(self)
		modal.onAssetPreviewToggled(false)

		local settings = props.Settings:get("Plugin")
		settings:setLastAnnouncementViewedKey(dateKey)

		self:setState(function(prevState)
			if prevState.isEnabled then
				return {
					isEnabled = false,
				}
			end
		end)
	end

	self.onClickLink = function()
		local announcementConfiguration = ToolboxUtilities.getAnnouncementConfiguration()
		local linkLocation = announcementConfiguration.LinkLocation
		GuiService:OpenBrowserWindow(linkLocation)
	end
end

function AnnouncementDialog:didMount()
	if self.shouldShowAnnouncementDialog() then
		local modal = getModal(self)
		modal.onAssetPreviewToggled(true)
	end
end

function AnnouncementDialog:render()
	if not self.shouldShowAnnouncementDialog() then
		return
	end

	local state: _State = self.state
	local isEnabled = state.isEnabled

	local orderIterator = LayoutOrderIterator.new()

	local props: AnnouncementDialogProps = self.props
	local localization = props.Localization
	local settings = props.Settings:get("Plugin")
	local theme = props.Stylizer
	local wrapperProps = props.WrapperProps

	local announcementTheme = theme.announcementDialog

	local lastAnnouncementViewed = settings:getLastAnnouncementViewedKey()

	local announcementConfiguration = ToolboxUtilities.getAnnouncementConfiguration()
	local buttonKey = announcementConfiguration.ButtonKey or "Button_Default"
	local dateKey = announcementConfiguration.Date or ""
	local descriptionKey = announcementConfiguration.DescriptionKey or ""
	local headerKey = announcementConfiguration.HeaderKey or "Header_Default"
	local imageLocation = announcementConfiguration.Image
	local linkTextKey = announcementConfiguration.LinkKey or "LinkText_Default"
	local linkLocation = announcementConfiguration.LinkLocation

	local buttonText = localization:getText("Announcement", buttonKey)
	local descriptionText = localization:getText("Announcement", descriptionKey)
	local headerText = localization:getText("Announcement", headerKey)
	local linkText = localization:getText("Announcement", linkTextKey)

	local absoluteSize = props.AbsoluteSize
	local hasExceededContentMaxWidth = absoluteSize.X > MAX_WIDTH
	local contentWidth
	if hasExceededContentMaxWidth then
		contentWidth = UDim.new(0, MAX_WIDTH)
	else
		contentWidth = UDim.new(1, 0)
	end

	return Roact.createElement(CaptureFocus, {
		OnFocusLost = function() end,
	}, {
		Overlay = Roact.createElement("Frame", {
			BackgroundColor3 = announcementTheme.overlayColor,
			BackgroundTransparency = announcementTheme.overlayTransparency,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			Contents = Roact.createElement(
				Pane,
				Dash.join({
					AutomaticSize = Enum.AutomaticSize.Y,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					Layout = Enum.FillDirection.Vertical,
					Padding = OVERLAY_PADDING,
					Size = UDim2.new(1, 0, 1, 0),
					Spacing = OVERLAY_SPACING,
					VerticalAlignment = Enum.VerticalAlignment.Top,
				}, wrapperProps),
				{

					CloseButtonContainer = Roact.createElement(Pane, {
						AutomaticSize = Enum.AutomaticSize.XY,
						HorizontalAlignment = Enum.HorizontalAlignment.Right,
						Layout = Enum.FillDirection.Horizontal,
						LayoutOrder = orderIterator:getNextOrder(),
						Size = UDim2.new(contentWidth, UDim.new(0, 0)),
					}, {
						CloseButton = Roact.createElement("ImageButton", {
							AutoButtonColor = false,
							BackgroundTransparency = 1,
							Image = Images.CLOSE_ICON,
							ImageColor3 = announcementTheme.closeIconColor,
							Size = UDim2.fromOffset(CLOSE_BUTTON_SIZE, CLOSE_BUTTON_SIZE),
							LayoutOrder = 1,
							[Roact.Event.Activated] = self.onClose,
						}, {
							HoverArea = Roact.createElement(HoverArea, {
								Cursor = "PointingHand",
							}),
						}),
					}),

					AnnouncementDialog = Roact.createElement("Frame", {
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundColor3 = announcementTheme.backgroundColor,
						LayoutOrder = orderIterator:getNextOrder(),
						Size = UDim2.new(contentWidth, UDim.new(0, 0)),
					}, {
						Contents = Roact.createElement(Pane, {
							AutomaticSize = Enum.AutomaticSize.Y,
							HorizontalAlignment = Enum.HorizontalAlignment.Right,
							Layout = Enum.FillDirection.Vertical,
							Padding = {
								Bottom = CONTENT_VERTICAL_PADDING,
								Left = CONTENT_HORIZONTAL_PADDING,
								Right = CONTENT_HORIZONTAL_PADDING,
								Top = CONTENT_VERTICAL_PADDING,
							},
							Spacing = CONTENT_SPACING,
							Size = UDim2.new(1, 0, 0, 0),
							VerticalAlignment = Enum.VerticalAlignment.Top,
						}, {
							Header = Roact.createElement(TextLabel, {
								AutomaticSize = Enum.AutomaticSize.Y,
								Font = Enum.Font.SourceSansSemibold,
								LayoutOrder = orderIterator:getNextOrder(),
								RichText = true,
								Size = UDim2.new(1, 0, 0, 0),
								Text = headerText or "",
								TextColor = announcementTheme.headerTextColor,
								TextWrapped = true,
								TextXAlignment = Enum.TextXAlignment.Left,
							}),

							Description = Roact.createElement(TextLabel, {
								AutomaticSize = Enum.AutomaticSize.Y,
								LayoutOrder = orderIterator:getNextOrder(),
								RichText = true,
								Size = UDim2.new(1, 0, 0, 0),
								Text = descriptionText or "",
								TextColor = announcementTheme.descriptionColor,
								TextWrapped = true,
								TextXAlignment = Enum.TextXAlignment.Left,
							}),

							ActionContainer = Roact.createElement(Pane, {
								AutomaticSize = Enum.AutomaticSize.XY,
								LayoutOrder = orderIterator:getNextOrder(),
								Padding = {
									Top = BUTTON_TO_IMAGE_SPACING,
								},
								Size = UDim2.new(1, 0, 0, 0),
							}, {
								LinkText = if linkLocation and linkLocation ~= ""
									then Roact.createElement(LinkText, {
										LayoutOrder = orderIterator:getNextOrder(),
										OnClick = self.onClickLink,
										Style = "Underlined",
										Text = linkText,
									})
									else nil,

								Button = Roact.createElement(Button, {
									AnchorPoint = Vector2.new(1, 0),
									Position = UDim2.new(1, 0, 0, 0),
									LayoutOrder = orderIterator:getNextOrder(),
									OnClick = self.onClose,
									Size = BUTTON_SIZE,
									Style = "RoundPrimary",
									Text = buttonText,
								}, {
									HoverArea = Roact.createElement(HoverArea, {
										Cursor = "PointingHand",
									}),
								}),
							}),

							ImageContainer = if imageLocation and imageLocation ~= ""
								then Roact.createElement(Pane, {
									AutomaticSize = Enum.AutomaticSize.Y,
									ClipsDescendants = true,
									HorizontalAlignment = Enum.HorizontalAlignment.Center,
									Layout = Enum.FillDirection.Vertical,
									LayoutOrder = orderIterator:getNextOrder(),
									Size = UDim2.new(1, 0, 0, 0),
								}, {
									Image = Roact.createElement("ImageLabel", {
										AutomaticSize = Enum.AutomaticSize.Y,
										BackgroundTransparency = 1,
										Image = imageLocation,
										Size = IMAGE_SIZE,
									}),
								})
								else nil,
						}),
					}),
				}
			),
		}),
	})
end

AnnouncementDialog = withContext({
	Localization = ContextServices.Localization,
	Settings = Settings,
	Stylizer = ContextServices.Stylizer,
})(AnnouncementDialog)

function TypedComponent(props: AnnouncementDialogProps, children: any)
	return Roact.createElement(AnnouncementDialog, props, children)
end

return withAbsoluteSize(TypedComponent)
