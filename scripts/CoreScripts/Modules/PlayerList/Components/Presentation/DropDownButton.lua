--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)

local Foundation = require(CorePackages.Packages.Foundation)
local IconName = Foundation.Enums.IconName
local IconVariant = Foundation.Enums.IconVariant
local IconSize = Foundation.Enums.IconSize

local withFoundationOrUIBloxStyle = require(CorePackages.Workspace.Packages.CoreGuiCommon).withFoundationOrUIBloxStyle

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagCoreUiMigrateUIBloxToFoundation = SharedFlags.FFlagCoreUiMigrateUIBloxToFoundation

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local IconButton = require(Components.PresentationCommon.IconButton)

local Colors = require(CorePackages.Workspace.Packages.Style).Colors

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local Images = UIBlox.App.ImageSet.Images
local ChromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled

local PlayerList = Components.Parent
local FFlagAllowDisplayingFoundationIconsForDropdown =
	require(PlayerList.Flags.FFlagAllowDisplayingFoundationIconsForDropdown)

local function isFoundationIconName(icon: any): boolean
	return IconName[icon] ~= nil
end

local DropDownButton = Roact.PureComponent:extend("DropDownButton")

DropDownButton.validateProps = t.strictInterface({
	text = t.string,
	layoutOrder = t.optional(t.integer),
	icon = t.union(t.string, t.table),
	lastButton = t.boolean,
	forceShowOptions = t.boolean,
	screenSizeX = t.number,
	screenSizeY = t.number,

	onActivated = t.optional(t.callback),
	onDecline = t.optional(t.callback),
	onDismiss = t.optional(t.callback),
	animatingAccept = t.optional(t.boolean),
	animatingDecline = t.optional(t.boolean),
	animatingPercentage = t.optional(t.number),
})

function DropDownButton:init()
	self.state = {
		isHovered = false,
		isPressed = false,
		sizeX = 100,
		absolutePosX = 0,
		absolutePosY = 0,
	}
end

function DropDownButton:getColorBackgroundAnimation(layoutValues)
	if self.props.animatingPercentage == nil then
		return 0, 0
	end

	local animatePosition = self.state.sizeX - layoutValues.DropDownRightOptionSize
	local animateSize = layoutValues.DropDownRightOptionSize
	if self.props.animatingDecline then
		animatePosition = animatePosition - layoutValues.DropDownRightOptionSize
	end

	local growSize = self.state.sizeX - layoutValues.DropDownRightOptionSize
	animateSize = animateSize + (growSize * self.props.animatingPercentage)
	animatePosition = animatePosition - (growSize * self.props.animatingPercentage * 0.5)

	if animatePosition + animateSize > self.state.sizeX then
		animatePosition = animatePosition - (animatePosition + animateSize - self.state.sizeX)
	end
	return animatePosition, animateSize
end

function DropDownButton:render()
	return WithLayoutValues(function(layoutValues)
		return withFoundationOrUIBloxStyle(function(tokens, preferences)
			return {
				Theme = {
					BackgroundContrast = {
						Color = tokens.Color.Surface.Surface_100.Color3,
						Transparency = tokens.Color.Surface.Surface_100.Transparency,
					},
					BackgroundOnHover = {
						Color = tokens.Color.State.Hover.Color3,
						Transparency = tokens.Color.State.Hover.Transparency,
					},
					BackgroundOnPress = {
						Color = tokens.Color.State.Press.Color3,
						Transparency = tokens.Color.State.Press.Transparency,
					},
					BackgroundUIContrast = {
						Color = tokens.Color.OverMedia.OverMedia_0.Color3,
						Transparency = tokens.Color.OverMedia.OverMedia_0.Transparency,
					},
					Divider = {
						Color = tokens.Color.Stroke.Emphasis.Color3,
						Transparency = tokens.Color.Stroke.Emphasis.Transparency,
					},
					IconEmphasis = {
						Color = tokens.Color.Content.Emphasis.Color3,
						Transparency = tokens.Color.Content.Emphasis.Transparency,
					},
					TextEmphasis = {
						Color = tokens.Color.Content.Emphasis.Color3,
						Transparency = tokens.Color.Content.Emphasis.Transparency,
					},
				},
				Font = {
					BaseSize = 1,
					Header2 = {
						Font = tokens.Typography.TitleLarge.Font,
						RelativeSize = tokens.Typography.TitleLarge.FontSize,
					},
				},
				Settings = {
					PreferredTransparency = preferences.preferredTransparency,
				},
			}
		end, function(style)
			local backgroundColor = if ChromeEnabled()
				then style.Theme.BackgroundUIContrast.Color
				else style.Theme.BackgroundContrast.Color

			local backgroundStyle = {
				Color = backgroundColor,
				Transparency = layoutValues.OverrideBackgroundTransparency * style.Settings.PreferredTransparency,
			}
			local overlayStyle = {
				Transparency = 1,
				Color = Color3.new(1, 1, 1),
			}
			if self.state.isPressed then
				overlayStyle = style.Theme.BackgroundOnPress
			elseif self.state.isHovered then
				overlayStyle = style.Theme.BackgroundOnHover
			end

			local image = ""
			if self.props.lastButton then
				image = "rbxasset://textures/ui/BottomRoundedRect8px.png"
			end

			local confirmButtonVisible = self.props.onActivated ~= nil or self.props.animatingAccept
			local declineButtonVisible = self.props.onDecline ~= nil or self.props.animatingDecline
			local rightButtonsVisible = self.props.onDecline ~= nil
				or self.props.animatingPercentage ~= nil
				or self.props.forceShowOptions

			local colorBackgroundPosition, colorBackgroundSize = self:getColorBackgroundAnimation(layoutValues)
			local colorBackgroundColor = Colors.Green
			if self.props.animatingDecline then
				colorBackgroundColor = Colors.Red
			elseif self.props.forceShowOptions then
				colorBackgroundColor = Colors.White
			end

			local textLabelSizeOffset = layoutValues.DropDownPadding * 2 + layoutValues.DropDownIconSize
			local rightButtonsSize = layoutValues.DropDownRightOptionSize * 2
			if rightButtonsVisible then
				textLabelSizeOffset = textLabelSizeOffset + rightButtonsSize
			end

			local function onMouseButton1Down()
				if not rightButtonsVisible then
					self:setState({
						isPressed = true,
					})
				end
			end

			local function onMouseButton1Up()
				self:setState({
					isPressed = false,
				})
			end

			local dropdownIcon
			local iconProp = self.props.icon
			if
				(FFlagAllowDisplayingFoundationIconsForDropdown and isFoundationIconName(iconProp))
				or FFlagCoreUiMigrateUIBloxToFoundation
			then
				local iconName
				local size
				if isFoundationIconName(iconProp) then
					iconName = IconName[iconProp]
					size = IconSize.Large
				elseif FFlagCoreUiMigrateUIBloxToFoundation then
					iconName = if typeof(iconProp) == "string" then iconProp else nil
					size = IconSize.Medium
				end

				if iconName then
					dropdownIcon = Roact.createElement("Frame", {
						LayoutOrder = 1,
						Size = UDim2.new(0, layoutValues.DropDownIconSize, 0, layoutValues.DropDownIconSize),
						BackgroundTransparency = 1,
					}, {
						Icon = Roact.createElement(Foundation.Icon, {
							name = iconName,
							variant = IconVariant.Regular,
							size = size,
							style = {
								Color3 = style.Theme.IconEmphasis.Color,
								Transparency = style.Theme.IconEmphasis.Transparency,
							},
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.new(0.5, 0, 0.5, 0),
						}),
					})
				else
					dropdownIcon = Roact.createElement(Foundation.Image, {
						Image = iconProp.Image,
						imageRect = { offset = iconProp.ImageRectOffset, size = iconProp.ImageRectSize },
						Size = UDim2.new(0, layoutValues.DropDownIconSize, 0, layoutValues.DropDownIconSize),
						imageStyle = {
							Color3 = style.Theme.IconEmphasis.Color,
							Transparency = style.Theme.IconEmphasis.Transparency,
						},
						BackgroundTransparency = 1,
						LayoutOrder = 1,
					})
				end
			else
				dropdownIcon = Roact.createElement(ImageSetLabel, {
					LayoutOrder = 1,
					Size = UDim2.new(0, layoutValues.DropDownIconSize, 0, layoutValues.DropDownIconSize),
					ImageColor3 = style.Theme.IconEmphasis.Color,
					Image = self.props.icon,
					BackgroundTransparency = 1,
				})
			end

			return Roact.createElement("ImageButton", {
				LayoutOrder = self.props.layoutOrder,
				Image = image,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(8, 8, 24, 16),
				SliceScale = 0.5,
				ImageTransparency = self.props.lastButton and backgroundStyle.Transparency or 1,
				ImageColor3 = backgroundStyle.Color,

				Size = UDim2.new(1, 0, 0, layoutValues.DropDownButtonSizeY),
				BackgroundTransparency = self.props.lastButton and 1 or backgroundStyle.Transparency,
				BackgroundColor3 = backgroundStyle.Color,
				AutoButtonColor = false,
				BorderSizePixel = 0,

				[Roact.Event.Activated] = (not rightButtonsVisible) and self.props.onActivated or nil,

				[Roact.Event.MouseEnter] = function()
					if not rightButtonsVisible then
						self:setState({
							isHovered = true,
						})
					end
				end,

				[Roact.Event.MouseLeave] = function()
					self:setState({
						isHovered = false,
						isPressed = false,
					})
				end,

				[Roact.Change.AbsoluteSize] = function(rbx)
					self:setState({
						sizeX = rbx.AbsoluteSize.X,
					})
				end,

				[Roact.Change.AbsolutePosition] = function(rbx)
					self:setState({
						absolutePosX = rbx.AbsolutePosition.X,
						absolutePosY = rbx.AbsolutePosition.Y,
					})
				end,

				[Roact.Event.MouseButton1Down] = onMouseButton1Down,
				[Roact.Event.MouseButton1Up] = onMouseButton1Up,
			}, {
				ColorBackground = Roact.createElement("ImageLabel", {
					Visible = self.props.animatingPercentage ~= nil,
					ZIndex = 1,
					Size = UDim2.new(0, colorBackgroundSize, 1, 0),
					Position = UDim2.new(0, colorBackgroundPosition, 0, 0),

					Image = image,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(8, 8, 24, 16),
					SliceScale = 0.5,
					ImageTransparency = self.props.lastButton and layoutValues.IconButtonBackgroundTransparency or 1,
					ImageColor3 = colorBackgroundColor,

					BackgroundTransparency = self.props.lastButton and 1
						or layoutValues.IconButtonBackgroundTransparency,
					BackgroundColor3 = colorBackgroundColor,
					BorderSizePixel = 0,
				}),

				HoverBackground = Roact.createElement("ImageLabel", {
					ZIndex = 2,
					Size = UDim2.new(1, 0, 1, 0),

					Image = image,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(8, 8, 24, 16),
					SliceScale = 0.5,
					ImageTransparency = self.props.lastButton and overlayStyle.Transparency or 1,
					ImageColor3 = overlayStyle.Color,

					BackgroundTransparency = self.props.lastButton and 1 or overlayStyle.Transparency,
					BackgroundColor3 = overlayStyle.Color,
					BorderSizePixel = 0,
				}, {
					InitalPadding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, layoutValues.DropDownPadding),
					}),

					ListLayout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = Enum.FillDirection.Horizontal,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						Padding = UDim.new(0, layoutValues.DropDownPadding),
					}),

					Icon = dropdownIcon,

					Text = Roact.createElement("TextLabel", {
						LayoutOrder = 2,
						Size = UDim2.new(1, -textLabelSizeOffset, 1, 0),
						Text = self.props.text,
						Font = style.Font.Header2.Font,
						TextSize = style.Font.BaseSize * style.Font.Header2.RelativeSize,
						TextColor3 = style.Theme.TextEmphasis.Color,
						TextTransparency = style.Theme.TextEmphasis.Transparency,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextTruncate = Enum.TextTruncate.AtEnd,
						BackgroundTransparency = 1,
					}),

					ButtonContainer = Roact.createElement("Frame", {
						LayoutOrder = 3,
						Visible = rightButtonsVisible,
						BackgroundTransparency = 1,
						Size = UDim2.new(0, rightButtonsSize, 1, 0),
					}, {
						ConfirmButton = confirmButtonVisible and Roact.createElement(IconButton, {
							size = UDim2.new(0.5, 0, 1, 0),
							position = UDim2.new(0.5, 0, 0, 0),
							backgroundColor = self.props.onDecline and Colors.Green or Colors.White,
							icon = if FFlagCoreUiMigrateUIBloxToFoundation
								then "icons/actions/accept"
								else Images["icons/actions/accept"],
							showBackground = self.props.animatingPercentage == nil,
							onActivated = self.props.onActivated,
						}) or nil,

						DeclineButton = declineButtonVisible and Roact.createElement(IconButton, {
							size = UDim2.new(0.5, 0, 1, 0),
							position = UDim2.new(0, 0, 0, 0),
							backgroundColor = Colors.Red,
							icon = if FFlagCoreUiMigrateUIBloxToFoundation
								then "icons/actions/reject"
								else Images["icons/actions/reject"],
							showBackground = self.props.animatingPercentage == nil,
							onActivated = self.props.onDecline,
						}) or nil,
					}),
				}),

				DismissInputHandler = Roact.createElement("ImageButton", {
					Image = "",
					BackgroundTransparency = 1,
					Size = UDim2.new(0, self.props.screenSizeX, 0, self.props.screenSizeY),
					Position = UDim2.new(0, -self.state.absolutePosX, 0, -self.state.absolutePosY),
					Visible = self.props.onDismiss ~= nil,

					[Roact.Event.Activated] = self.props.onDismiss,
				}),

				Divider = not self.props.lastButton and Roact.createElement("Frame", {
					ZIndex = 3,
					Size = UDim2.new(1, 0, 0, 1),
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),
					BackgroundTransparency = style.Theme.Divider.Transparency,
					BackgroundColor3 = style.Theme.Divider.Color,
					BorderSizePixel = 0,
				}),
			})
		end)
	end)
end

local function mapStateToProps(state)
	return {
		screenSizeX = state.screenSize.X,
		screenSizeY = state.screenSize.Y,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(DropDownButton)
