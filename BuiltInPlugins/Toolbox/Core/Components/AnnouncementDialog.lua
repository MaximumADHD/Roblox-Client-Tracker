local FFlagToolboxHideAnnouncementFromNewUsersAndAfterMonth =
	game:GetFastFlag("ToolboxHideAnnouncementFromNewUsersAndAfterMonth")
local FFlagToolboxFixVerifyAndAnnouncementBugs = game:GetFastFlag("ToolboxFixVerifyAndAnnouncementBugs")
local FFlagToolboxAddAnnouncementAnalytics = game:GetFastFlag("ToolboxAddAnnouncementAnalytics")

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
local Analytics = require(Util.Analytics.Analytics)
local ContextGetter = require(Util.ContextGetter)
local Images = require(Util.Images)
local ToolboxUtilities = require(Util.ToolboxUtilities)
local getUserId = require(Util.getUserId)

local getModal = ContextGetter.getModal

local withAbsoluteSize = Framework.Wrappers.withAbsoluteSize
local Settings = require(Plugin.Core.ContextServices.Settings)

local BUTTON_SIZE = UDim2.fromOffset(110, 30)
local BUTTON_TO_IMAGE_SPACING = 10
local CLOSE_BUTTON_SIZE = 28
local CONTENT_HORIZONTAL_PADDING = 16
local CONTENT_VERTICAL_PADDING = 20
local CONTENT_SPACING = 10
local MAX_DAYS_ACTIVE = 30
local DATETIME_PATTERN = "(%d+)-(%d+)-(%d+) (%d+):(%d+):(%d+)"
local IMAGE_SIZE = UDim2.fromOffset(264, 110)
local MAX_WIDTH = 400
local OVERLAY_PADDING = 20
local OVERLAY_SPACING = 10

local DEFAULT_BUTTON_KEY = "Button_Default"
local DEFAULT_HEADER_KEY = "Header_Default"
local DEFAULT_LINK_KEY = "LinkText_Default"

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
		openStartTime = if FFlagToolboxAddAnnouncementAnalytics then 0 else nil,
	}

	self.shouldShowAnnouncementDialog = function()
		local state: _State = self.state
		local props: AnnouncementDialogProps = self.props

		local settings = props.Settings:get("Plugin")
		local lastAnnouncementViewed = settings:getLastAnnouncementViewedKey()

		local announcementConfiguration = ToolboxUtilities.getAnnouncementConfiguration()
		local dateKey = announcementConfiguration.Date or ""

		local isExpired
		local isUserTooNew
		if FFlagToolboxHideAnnouncementFromNewUsersAndAfterMonth then
			isExpired = false
			isUserTooNew = false

			if dateKey ~= "" then
				local runYear, runMonth, runDay, runHour, runMinute, runSeconds = dateKey:match(DATETIME_PATTERN)
				local timeObj = {
					year = tonumber(runYear),
					month = tonumber(runMonth),
					day = tonumber(runDay),
					hour = tonumber(runHour),
					min = tonumber(runMinute),
					sec = tonumber(runSeconds),
				}
				local convertedTimestamp = os.time(timeObj)
				local daysfrom = os.difftime(os.time(), convertedTimestamp) / (24 * 60 * 60) -- seconds in a day
				local wholedays = math.floor(daysfrom)

				if wholedays > MAX_DAYS_ACTIVE then
					isExpired = true
				end
			end

			local latestUserId = announcementConfiguration.LatestUserId
			if latestUserId and latestUserId ~= "" then
				latestUserId = tonumber(latestUserId)
				isUserTooNew = getUserId() > latestUserId
			end

			return state.isEnabled
				and dateKey ~= ""
				and lastAnnouncementViewed ~= dateKey
				and not isExpired
				and not isUserTooNew
		else
			return state.isEnabled and dateKey ~= "" and lastAnnouncementViewed ~= dateKey
		end
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

		if FFlagToolboxAddAnnouncementAnalytics then
			local announcementConfig = self.getAnnouncementConfigurationOrDefault()
			Analytics.AnnouncementLinkClicked(
				announcementConfig.ButtonKey,
				announcementConfig.Date,
				announcementConfig.DescriptionKey,
				announcementConfig.HeaderKey,
				announcementConfig.LinkKey,
				announcementConfig.LinkLocation
			)
		end
	end

	if FFlagToolboxAddAnnouncementAnalytics then
		self.onClickXButton = function()
			local announcementConfig = self.getAnnouncementConfigurationOrDefault()
			local endTime = tick()
			local startTime = self.state.openStartTime
			local deltaMs = (endTime - startTime) * 1000
			Analytics.AnnouncementClosed(
				announcementConfig.ButtonKey,
				announcementConfig.Date,
				announcementConfig.DescriptionKey,
				announcementConfig.HeaderKey,
				announcementConfig.LinkKey,
				announcementConfig.LinkLocation,
				deltaMs
			)
			self.onClose()
		end

		self.onClickAcknowledgeButton = function()
			local announcementConfig = self.getAnnouncementConfigurationOrDefault()
			local endTime = tick()
			local startTime = self.state.openStartTime
			local deltaMs = (endTime - startTime) * 1000
			Analytics.AnnouncementAcknowledged(
				announcementConfig.ButtonKey,
				announcementConfig.Date,
				announcementConfig.DescriptionKey,
				announcementConfig.HeaderKey,
				announcementConfig.LinkKey,
				announcementConfig.LinkLocation,
				deltaMs
			)
			self.onClose()
		end

		self.getAnnouncementConfigurationOrDefault = function(analyticsFunction)
			local announcementConfiguration = ToolboxUtilities.getAnnouncementConfiguration()
			return {
				ButtonKey = announcementConfiguration.ButtonKey or DEFAULT_BUTTON_KEY,
				Date = announcementConfiguration.Date or "",
				DescriptionKey = announcementConfiguration.DescriptionKey or "",
				Image = announcementConfiguration.Image,
				HeaderKey = announcementConfiguration.HeaderKey or DEFAULT_HEADER_KEY,
				LinkKey = announcementConfiguration.LinkKey or DEFAULT_LINK_KEY,
				LinkLocation = announcementConfiguration.LinkLocation,
			}
		end
	end
end

function AnnouncementDialog:didMount()
	if self.shouldShowAnnouncementDialog() then
		local modal = getModal(self)
		modal.onAssetPreviewToggled(true)

		if FFlagToolboxAddAnnouncementAnalytics then
			self:setState({
				openStartTime = tick(),
			})
			local announcementConfig = self.getAnnouncementConfigurationOrDefault()
			Analytics.AnnouncementViewed(
				announcementConfig.ButtonKey,
				announcementConfig.Date,
				announcementConfig.DescriptionKey,
				announcementConfig.HeaderKey,
				announcementConfig.LinkKey,
				announcementConfig.LinkLocation
			)
		end
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

	local buttonKey
	local dateKey
	local descriptionKey
	local headerKey
	local imageLocation
	local linkTextKey
	local linkLocation
	if FFlagToolboxAddAnnouncementAnalytics then
		local announcementConfiguration = self.getAnnouncementConfigurationOrDefault()
		buttonKey = announcementConfiguration.ButtonKey
		dateKey = announcementConfiguration.Date
		descriptionKey = announcementConfiguration.DescriptionKey
		headerKey = announcementConfiguration.HeaderKey
		imageLocation = announcementConfiguration.Image
		linkTextKey = announcementConfiguration.LinkKey
		linkLocation = announcementConfiguration.LinkLocation
	else
		local announcementConfiguration = ToolboxUtilities.getAnnouncementConfiguration()
		buttonKey = announcementConfiguration.ButtonKey or DEFAULT_BUTTON_KEY
		dateKey = announcementConfiguration.Date or ""
		descriptionKey = announcementConfiguration.DescriptionKey or ""
		headerKey = announcementConfiguration.HeaderKey or DEFAULT_HEADER_KEY
		imageLocation = announcementConfiguration.Image
		linkTextKey = announcementConfiguration.LinkKey or DEFAULT_LINK_KEY
		linkLocation = announcementConfiguration.LinkLocation
	end

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
							[Roact.Event.Activated] = if FFlagToolboxAddAnnouncementAnalytics
								then self.onClickXButton
								else self.onClose,
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
								LinkContainer = if FFlagToolboxFixVerifyAndAnnouncementBugs
										and linkLocation
										and linkLocation ~= ""
									then Roact.createElement(Pane, {
										AutomaticSize = Enum.AutomaticSize.X,
										LayoutOrder = orderIterator:getNextOrder(),
										Size = UDim2.new(0, 0, 0, BUTTON_SIZE.Y.Offset),
										Layout = Enum.FillDirection.Horizontal,
										VerticalAlignment = if true then Enum.VerticalAlignment.Center else nil,
									}, {
										LinkText = Roact.createElement(LinkText, {
											LayoutOrder = orderIterator:getNextOrder(),
											OnClick = self.onClickLink,
											Style = "Underlined",
											Text = linkText,
										}),
									})
									else nil,

								LinkText = if not FFlagToolboxFixVerifyAndAnnouncementBugs
										and linkLocation
										and linkLocation ~= ""
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
									OnClick = if FFlagToolboxAddAnnouncementAnalytics
										then self.onClickAcknowledgeButton
										else self.onClose,
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
