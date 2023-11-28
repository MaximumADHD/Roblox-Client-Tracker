--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Style.withStyle

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local IconButton = require(Components.PresentationCommon.IconButton)

local Colors = require(CorePackages.Workspace.Packages.Style).Colors

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local Images = UIBlox.App.ImageSet.Images

local DropDownButton = Roact.PureComponent:extend("DropDownButton")

DropDownButton.validateProps = t.strictInterface({
	contentVisible = t.boolean,
	buttonTransparency = t.any,

	text = t.string,
	layoutOrder = t.optional(t.integer),
	icon = t.union(t.string, t.table),
	lastButton = t.boolean,
	forceShowOptions = t.boolean,
	screenSizeX = t.integer,
	screenSizeY = t.integer,

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
	animatePosition = animatePosition - (growSize * self.props.animatingPercentage * .5)

	if animatePosition + animateSize > self.state.sizeX then
		animatePosition = animatePosition - (animatePosition + animateSize - self.state.sizeX)
	end
	return animatePosition, animateSize
end

function DropDownButton:render()
	return WithLayoutValues(function(layoutValues)
		return withStyle(function(style)
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
			local rightButtonsVisible = self.props.onDecline ~= nil or self.props.animatingPercentage ~= nil
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

			return Roact.createElement("ImageButton", {
				LayoutOrder = self.props.layoutOrder,
				Image = image,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(8, 8, 24, 16),
				SliceScale = 0.5,
				ImageTransparency = self.props.lastButton and self.props.buttonTransparency or 1,
				ImageColor3 = Color3.fromRGB(0, 0, 0),

				Size = UDim2.new(1, 0, 0, layoutValues.DropDownButtonSizeY),
				BackgroundTransparency = self.props.lastButton and 1 or self.props.buttonTransparency,
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
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
					Visible = self.props.animatingPercentage ~= nil and self.props.contentVisible,
					ZIndex = 1,
					Size = UDim2.new(0, colorBackgroundSize, 1, 0),
					Position = UDim2.fromOffset(colorBackgroundPosition, 0),

					Image = image,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(8, 8, 24, 16),
					SliceScale = 0.5,
					ImageTransparency = self.props.lastButton and layoutValues.IconButtonBackgroundTransparency or 1,
					ImageColor3 = colorBackgroundColor,

					BackgroundTransparency = self.props.lastButton and 1 or layoutValues.IconButtonBackgroundTransparency,
					BackgroundColor3 = colorBackgroundColor,
					BorderSizePixel = 0,
				}),

				HoverBackground = Roact.createElement("ImageLabel", {
					ZIndex = 2,
					Size = UDim2.fromScale(1, 1),

					Visible = self.props.contentVisible,

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

					Icon = Roact.createElement(ImageSetLabel, {
						LayoutOrder = 1,
						Size = UDim2.fromOffset(layoutValues.DropDownIconSize, layoutValues.DropDownIconSize),
						ImageColor3 = style.Theme.IconEmphasis.Color,
						Image = self.props.icon,
						BackgroundTransparency = 1,
					}),

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
							size = UDim2.fromScale(0.5, 1),
							position = UDim2.fromScale(0.5, 0),
							backgroundColor = self.props.onDecline and Colors.Green or Colors.White,
							icon = Images["icons/actions/accept"],
							showBackground = self.props.animatingPercentage == nil,
							onActivated = self.props.onActivated,
						}) or nil,

						DeclineButton = declineButtonVisible and Roact.createElement(IconButton, {
							size = UDim2.fromScale(0.5, 1),
							position = UDim2.new(0, 0, 0, 0),
							backgroundColor = Colors.Red,
							icon = Images["icons/actions/reject"],
							showBackground = self.props.animatingPercentage == nil,
							onActivated = self.props.onDecline,
						}) or nil,
					})
				}),

				DismissInputHandler = Roact.createElement("ImageButton", {
					Image = "",
					BackgroundTransparency = 1,
					Size = UDim2.fromOffset(self.props.screenSizeX, self.props.screenSizeY),
					Position = UDim2.fromOffset(-self.state.absolutePosX, -self.state.absolutePosY),
					Visible = self.props.onDismiss ~= nil and self.props.contentVisible,

					[Roact.Event.Activated] = self.props.onDismiss,
				}),

				Divider = not self.props.lastButton and Roact.createElement("Frame", {
					Visible = self.props.contentVisible,
					ZIndex = 3,
					Size = UDim2.new(1, 0, 0, 1),
					Position = UDim2.fromScale(0, 1),
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

return RoactRodux.connect(mapStateToProps, nil)(DropDownButton)
