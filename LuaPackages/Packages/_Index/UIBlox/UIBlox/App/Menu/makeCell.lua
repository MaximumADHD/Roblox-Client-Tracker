local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBlox.Core.Style.withStyle)

local ImageSetComponent = require(Packages.UIBlox.Core.ImageSet.ImageSetComponent)
local Images = require(Packages.UIBlox.App.ImageSet.Images)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local divideTransparency = require(UIBlox.Utility.divideTransparency)

local Controllable = require(Packages.UIBlox.Core.Control.Controllable)
local ControlState = require(Packages.UIBlox.Core.Control.Enum.ControlState)

local KeyLabel = require(script.Parent.KeyLabel)

local TEXT_ONLY_PADDING = 24 --Text only padding at the start and end of cells
local ELEMENT_PADDING = 12 --Padding between elements
local SELECTED_ICON_PADDING = 24 --Padding for selected icons at the end of cells
local KEYLABEL_PADDING = 16 --Padding for key labels at the end of cells

local ICON_SIZE = 36
local SELECTED_ICON_SIZE = 16

local CELL_BACKGROUND_ASSET = Images["component_assets/circle_17"]

local function makeCell(backgroundThemeKey)
	local cellComponent = Roact.PureComponent:extend("CellFor" ..backgroundThemeKey)

	cellComponent.validateProps = t.strictInterface({
		-- Icon can either be an Image in a ImageSet or a regular image asset
		icon = t.optional(t.union(t.table, t.string)),
		text = t.string,
		onActivated = t.callback,

		-- A KeyCode to display a keycode hint for, the display string based on the users keyboard is displayed.
		keyCodeLabel = t.optional(t.enum(Enum.KeyCode)),
		selected = t.optional(t.boolean),

		iconColorOverride = t.optional(t.Color3),
		textColorOverride = t.optional(t.Color3),

		elementHeight = t.integer,
		hasRoundTop = t.boolean,
		hasRoundBottom = t.boolean,

		hasDivider = t.boolean,
		disabled = t.optional(t.boolean),

		layoutOrder = t.integer,
	})

	cellComponent.defaultProps = {
		selected = false,
		disabled = false,
	}

	function cellComponent:init()
		self.state = {
			controlState = ControlState.Default,

			keyLabelWidth = 0,
		}

		self.keyLabelSizeChanged = function(rbx)
			self:setState({
				keyLabelWidth = rbx.AbsoluteSize.X,
			})
		end

		self.setControlState = function(controlState)
			self:setState({
				controlState = controlState,
			})
		end
	end

	function cellComponent:getImageProperties()
		local imageSize = CELL_BACKGROUND_ASSET.ImageRectSize
		local imageOffset = CELL_BACKGROUND_ASSET.ImageRectOffset

		local xOffset = 8 * Images.ImagesResolutionScale
		local yOffset = 8 * Images.ImagesResolutionScale
		local imageCenter = Rect.new(xOffset, yOffset, imageSize.x - xOffset, imageSize.y - yOffset)

		local imageWidth = imageSize.X
		local halfImageWidth = math.floor(imageWidth / 2)

		local imageRectSize, imageRectOffset, sliceCenter

		if self.props.hasRoundTop and self.props.hasRoundBottom then
			imageRectSize = imageSize
			imageRectOffset = imageOffset
			sliceCenter = imageCenter
		elseif self.props.hasRoundTop then
			imageRectSize = Vector2.new(imageWidth, halfImageWidth)
			imageRectOffset = imageOffset
			sliceCenter = Rect.new(halfImageWidth - 1, halfImageWidth - 1, halfImageWidth +1, halfImageWidth)
		elseif self.props.hasRoundBottom then
			imageRectSize = Vector2.new(imageWidth, halfImageWidth)
			imageRectOffset = imageOffset + Vector2.new(0, halfImageWidth)
			sliceCenter = Rect.new(halfImageWidth - 1, 0, halfImageWidth + 1, 1)
		else
			imageRectSize = Vector2.new(1, 1)
			imageRectOffset = imageOffset + Vector2.new(halfImageWidth, halfImageWidth)
			sliceCenter = Rect.new(0, 0, 0, 0)
		end

		return imageRectSize, imageRectOffset, sliceCenter
	end

	function cellComponent:render()
		return withStyle(function(stylePalette)
			local theme = stylePalette.Theme
			local font = stylePalette.Font

			local leftPadding = TEXT_ONLY_PADDING
			if self.props.icon then
				leftPadding = ELEMENT_PADDING
			end
			local rightPadding = 0
			if self.props.keyCodeLabel then
				rightPadding = KEYLABEL_PADDING
			elseif self.props.selected then
				rightPadding = SELECTED_ICON_PADDING
			end

			local overlayTheme = {
				Color = Color3.new(1, 1, 1),
				Transparency = 1,
			}

			if self.state.controlState == ControlState.Pressed then
				overlayTheme = theme.BackgroundOnPress
			elseif self.state.controlState == ControlState.Hover then
				overlayTheme = theme.BackgroundOnHover
			end

			local imageRectSize, imageRectOffset, sliceCenter = self:getImageProperties()

			local textLengthOffset = 0
			local textOnly = true
			if self.props.icon then
				textOnly = false
				leftPadding = ELEMENT_PADDING
				textLengthOffset = ELEMENT_PADDING + ICON_SIZE
			end

			if self.props.selected then
				textOnly = false
				textLengthOffset = textLengthOffset + SELECTED_ICON_SIZE + SELECTED_ICON_PADDING
			end

			if self.props.keyCodeLabel then
				textOnly = false
				textLengthOffset = textLengthOffset + KEYLABEL_PADDING + self.state.keyLabelWidth
			end

			-- Add start and end padding for text.
			if textOnly then
				textLengthOffset = textLengthOffset + TEXT_ONLY_PADDING * 2
			else
				textLengthOffset = textLengthOffset + ELEMENT_PADDING * 2
			end

			local textTheme = theme.TextEmphasis
			if self.props.textColorOverride then
				textTheme = {
					Color = self.props.textColorOverride,
					Transparency = theme.TextEmphasis.Transparency
				}
			end
			if self.state.controlState == ControlState.Pressed or self.props.disabled then
				textTheme = {
					Color = textTheme.Color,
					Transparency = divideTransparency(theme.TextEmphasis.Transparency, 2)
				}
			end

			local cellStyle = theme[backgroundThemeKey]

			return Roact.createElement(Controllable, {
				controlComponent = {
					component = "ImageButton",
					props = {
						Size = UDim2.new(1, 0, 0, self.props.elementHeight),
						BackgroundTransparency = 1,

						Image = CELL_BACKGROUND_ASSET.Image,
						ScaleType = Enum.ScaleType.Slice,
						SliceCenter = sliceCenter,
						ImageRectSize = imageRectSize,
						ImageRectOffset = imageRectOffset,
						SliceScale = 1 / Images.ImagesResolutionScale,

						ImageTransparency = cellStyle.Transparency,
						ImageColor3 = cellStyle.Color,
						AutoButtonColor = false,
						LayoutOrder = self.props.layoutOrder,

						BorderSizePixel = 0,

						[Roact.Event.Activated] = self.props.onActivated,
					},
					children = {
						Divider = Roact.createElement("Frame", {
							BackgroundColor3 = theme.Divider.Color,
							BackgroundTransparency = theme.Divider.Transparency,
							BorderSizePixel = 0,
							Size = UDim2.new(1, 0, 0, 1),
							Position = UDim2.fromScale(0, 1),
							AnchorPoint = Vector2.new(0, 1),
							Visible = self.props.hasDivider,
						}),

						StateOverlay = Roact.createElement("ImageLabel", {
							BackgroundTransparency = 1,

							Image = CELL_BACKGROUND_ASSET.Image,
							ScaleType = Enum.ScaleType.Slice,
							SliceCenter = sliceCenter,
							ImageRectSize = imageRectSize,
							ImageRectOffset = imageRectOffset,
							SliceScale = 1 / Images.ImagesResolutionScale,

							ImageColor3 = overlayTheme.Color,
							ImageTransparency = overlayTheme.Transparency,
							BorderSizePixel = 0,
							Size = UDim2.fromScale(1, 1),
							ZIndex = 2,
						}),

						LeftAlignedContent = Roact.createElement("Frame", {
							BackgroundTransparency = 1,
							Size = UDim2.fromScale(1, 1),
						}, {
							Layout = Roact.createElement("UIListLayout", {
								HorizontalAlignment = Enum.HorizontalAlignment.Left,
								VerticalAlignment = Enum.VerticalAlignment.Center,
								FillDirection = Enum.FillDirection.Horizontal,
								SortOrder = Enum.SortOrder.LayoutOrder,
								Padding = UDim.new(0, ELEMENT_PADDING),
							}),

							LeftPadding = Roact.createElement("UIPadding", {
								PaddingLeft = UDim.new(0, leftPadding)
							}),

							Icon = self.props.icon and Roact.createElement(ImageSetComponent.Label, {
								Image = self.props.icon,
								Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
								BackgroundTransparency = 1,
								ImageColor3 = self.props.iconColorOverride or theme.IconEmphasis.Color,
								ImageTransparency = divideTransparency(
									theme.IconEmphasis.Transparency,
									self.props.disabled and 2 or 1
								),
								LayoutOrder = 1,
							}),

							Text = Roact.createElement(GenericTextLabel, {
								fontStyle = font.Header2,
								colorStyle = textTheme,

								BackgroundTransparency = 1,
								Size = UDim2.new(1, -textLengthOffset, 1, 0),
								Text = self.props.text,
								TextTruncate = Enum.TextTruncate.AtEnd,
								TextXAlignment = Enum.TextXAlignment.Left,
								LayoutOrder = 2,
							}),
						}),

						RightAlignedContent = Roact.createElement("Frame", {
							BackgroundTransparency = 1,
							Size = UDim2.fromScale(1, 1),
						}, {
							Layout = Roact.createElement("UIListLayout", {
								HorizontalAlignment = Enum.HorizontalAlignment.Right,
								VerticalAlignment = Enum.VerticalAlignment.Center,
								FillDirection = Enum.FillDirection.Horizontal,
								SortOrder = Enum.SortOrder.LayoutOrder,
								Padding = UDim.new(0, ELEMENT_PADDING),
							}),

							RightPadding = Roact.createElement("UIPadding", {
								PaddingRight = UDim.new(0, rightPadding)
							}),

							KeyLabel = self.props.keyCodeLabel and Roact.createElement(KeyLabel, {
								keyCode = self.props.keyCodeLabel,

								layoutOrder = 2,

								[Roact.Change.AbsoluteSize] = self.keyLabelSizeChanged
							}),

							SelectedIcon = Roact.createElement(ImageSetComponent.Label, {
								Image = Images["icons/status/success_small"],
								Size = UDim2.fromOffset(SELECTED_ICON_SIZE, SELECTED_ICON_SIZE),
								LayoutOrder = 1,
								BackgroundTransparency = 1,
								ImageColor3 = theme.IconEmphasis.Color,
								ImageTransparency = theme.IconEmphasis.Transparency,
								Visible = self.props.selected
							}),
						}),
					},
				},
				onStateChanged = function(_, newState)
					self.setControlState(newState)
				end,
				isDisabled = self.props.disabled,
			})
		end)
	end

	return cellComponent
end

return makeCell