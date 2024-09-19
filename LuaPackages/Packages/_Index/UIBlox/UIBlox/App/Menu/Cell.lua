--!nonstrict
local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBlox.Core.Style.withStyle)
local validateColorInfo = require(UIBlox.Core.Style.Validator.validateColorInfo)
local withSelectionCursorProvider = require(UIBlox.App.SelectionImage.withSelectionCursorProvider)
local CursorKind = require(UIBlox.App.SelectionImage.CursorKind)
local StyleTypes = require(UIBlox.App.Style.StyleTypes)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local ImageSetComponent = require(Packages.UIBlox.Core.ImageSet.ImageSetComponent)
local Images = require(Packages.UIBlox.App.ImageSet.Images)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local divideTransparency = require(UIBlox.Utility.divideTransparency)
local validateFontInfo = require(Packages.UIBlox.Core.Style.Validator.validateFontInfo)

local Controllable = require(Packages.UIBlox.Core.Control.Controllable)
local ControlState = require(Packages.UIBlox.Core.Control.Enum.ControlState)

local KeyLabel = require(script.Parent.KeyLabel.KeyLabel)
local RoundedFrame = require(script.Parent.RoundedFrame)

local Interactable = require(UIBlox.Core.Control.Interactable)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local CELL_BACKGROUND_ASSET = Images["component_assets/circle_17"]

local Cell = Roact.PureComponent:extend("Cell")

Cell.validateProps = t.strictInterface({
	-- Icon can either be an Image in a ImageSet or a regular image asset
	icon = t.optional(t.union(t.table, t.string)),
	-- Label for the specific button
	text = t.string,
	-- The function that fires when the button is clicked
	onActivated = t.callback,

	-- A KeyCode to display a keycode hint for, the display string based on
	-- the users keyboard or gamepad button is displayed.
	keyCodeLabel = t.optional(t.union(
		t.enum(Enum.KeyCode),
		t.strictInterface({
			key = t.enum(Enum.KeyCode),
			axis = t.optional(t.string),
		})
	)),
	-- If the cell is selected or not
	selected = t.optional(t.boolean),

	-- A Color3 value to override the Text TextColor with
	iconColorOverride = t.optional(t.Color3),
	-- A Color3 value to override the Icon ImageColor with
	textColorOverride = t.optional(t.Color3),

	elementHeight = t.integer,
	hasRoundTop = t.boolean,
	hasRoundBottom = t.boolean,

	hasDivider = t.boolean,
	-- If the cell is disabled or not
	disabled = t.optional(t.boolean),
	stayOnActivated = t.optional(t.boolean),

	renderRightSideGadget = t.optional(t.callback),
	rightSideGadgetSize = t.optional(t.Vector2),

	leftPaddingOffset = t.optional(t.number),
	layoutOrder = t.integer,
	setButtonRef = t.optional(t.union(t.callback, t.table)),
	cursorKind = if UIBloxConfig.migrateToNewSelectionCursor then nil else t.optional(CursorKind.isEnumValue),
	-- If the background asset behind the element is visible or not
	isElementBackgroundVisible = t.optional(t.boolean),
	-- Add offset to the left of the divider separating cells
	dividerOffset = t.optional(t.number),
	-- Size of the divider
	dividerSize = t.optional(t.number),
	-- The font style for the element text
	fontStyle = t.optional(t.union(t.string, validateFontInfo)),
	-- Size of the icon
	iconSize = t.optional(t.integer),
	-- Size of the SelectedIcon
	selectedIconSize = t.optional(t.integer),
	-- Padding at the left side of the Icon
	iconPaddingLeft = t.optional(t.integer),
	-- Padding of the text frame
	textPadding = t.optional(t.strictInterface({
		-- Padding at the left side of the text frame
		left = t.integer,
		-- Padding at the right side of the text frame
		right = t.integer,
	})),
	-- Padding at the right side of the SelectedIcon
	selectedIconPaddingRight = t.optional(t.integer),
	-- Padding at the right side of the keyLabel
	keyLabelPaddingRight = t.optional(t.integer),
	-- Left/right padding for the container when there's only text in the cell
	textOnlyPadding = t.optional(t.integer),
	-- Size of border rounded corner
	borderCornerRadius = t.optional(t.integer),
	-- Background of the cell. Defaults to `BackgroundUIDefault`.
	background = t.optional(validateColorInfo),

	selectionOrder = t.optional(t.number),
	-- Optional selection cursor
	selectionCursor = if UIBloxConfig.migrateToNewSelectionCursor then t.optional(t.any) else nil,
})

Cell.defaultProps = {
	selected = false,
	disabled = false,
	rightSideGadgetSize = nil,
	leftPaddingOffset = 0,
	isElementBackgroundVisible = true,
	dividerOffset = 0,
	dividerSize = 1,
	iconSize = 36,
	selectedIconSize = 16,
	iconPaddingLeft = 12,
	textPadding = {
		left = 12,
		right = 12,
	},
	selectedIconPaddingRight = 24,
	textOnlyPadding = 24,
	keyLabelPaddingRight = 16,
	borderCornerRadius = 4,
}

function Cell:init()
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

function Cell:getImageProperties()
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
		sliceCenter = Rect.new(halfImageWidth - 1, halfImageWidth - 1, halfImageWidth + 1, halfImageWidth)
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

function Cell:renderRoundedBackground(zIndex: number, background: StyleTypes.ThemeItem)
	local borderRadius = UDim.new(0, self.props.borderCornerRadius)
	return Roact.createElement(RoundedFrame, {
		zIndex = zIndex,
		background = background,
		topCornerRadius = if self.props.hasRoundTop then borderRadius else nil,
		bottomCornerRadius = if self.props.hasRoundBottom then borderRadius else nil,
	})
end

function Cell:renderWithSelectionCursor(getSelectionCursor)
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local font = stylePalette.Font
		local settings = stylePalette.Settings

		local leftPadding = self.props.textOnlyPadding
		if self.props.icon then
			leftPadding = self.props.iconPaddingLeft
		end
		leftPadding = leftPadding + self.props.leftPaddingOffset
		local rightPadding = 0
		if self.props.keyCodeLabel then
			rightPadding = self.props.keyLabelPaddingRight
		elseif self.props.selected then
			rightPadding = self.props.selectedIconPaddingRight
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

		if self.props.rightSideGadgetSize ~= nil then
			textLengthOffset = self.props.rightSideGadgetSize.X
				+ self.props.iconPaddingLeft
				+ self.props.iconSize
				+ self.props.textPadding.left
		else
			if self.props.icon then
				textOnly = false
				leftPadding = self.props.iconPaddingLeft
				textLengthOffset = self.props.iconPaddingLeft + self.props.iconSize
			end

			if self.props.selected then
				textOnly = false
				textLengthOffset = textLengthOffset + self.props.selectedIconSize + self.props.selectedIconPaddingRight
			end

			if self.props.keyCodeLabel then
				textOnly = false
				textLengthOffset = textLengthOffset + self.props.keyLabelPaddingRight + self.state.keyLabelWidth
			end

			-- Add start and end padding for text.
			if textOnly then
				textLengthOffset = textLengthOffset + self.props.textOnlyPadding * 2
			else
				textLengthOffset = textLengthOffset + self.props.textPadding.left + self.props.textPadding.right
			end
		end

		local textTheme = theme.TextEmphasis
		if self.props.textColorOverride then
			textTheme = {
				Color = self.props.textColorOverride,
				Transparency = theme.TextEmphasis.Transparency,
			}
		end
		if self.state.controlState == ControlState.Pressed or self.props.disabled then
			textTheme = {
				Color = textTheme.Color,
				Transparency = divideTransparency(theme.TextEmphasis.Transparency, 2),
			}
		end

		local defaultBackgroundColor = theme.BackgroundUIDefault
		local cellStyle = Object.assign({}, {
			Color = defaultBackgroundColor.Color,
			Transparency = defaultBackgroundColor.Transparency,
		}, self.props.background)
		cellStyle.Transparency = cellStyle.Transparency * settings.PreferredTransparency

		local isElementBackgroundVisible = self.props.isElementBackgroundVisible

		local children = {

			Background = if isElementBackgroundVisible then self:renderRoundedBackground(-1, cellStyle) else nil,

			Divider = Roact.createElement("Frame", {
				BackgroundColor3 = theme.Divider.Color,
				BackgroundTransparency = theme.Divider.Transparency,
				BorderSizePixel = 0,
				Size = UDim2.new(1, -self.props.dividerOffset, 0, self.props.dividerSize),
				Position = UDim2.new(0, self.props.dividerOffset, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				Visible = self.props.hasDivider,
			}),

			StateOverlay = self:renderRoundedBackground(2, overlayTheme),

			LeftAlignedContent = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, self.props.textPadding.left),
				}),

				LeftPadding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, leftPadding),
				}),

				Icon = self.props.icon and Roact.createElement(ImageSetComponent.Label, {
					Image = self.props.icon,
					Size = UDim2.fromOffset(self.props.iconSize, self.props.iconSize),
					BackgroundTransparency = 1,
					ImageColor3 = self.props.iconColorOverride or theme.IconEmphasis.Color,
					ImageTransparency = divideTransparency(
						theme.IconEmphasis.Transparency,
						self.props.disabled and 2 or 1
					),
					LayoutOrder = 1,
				}),

				Text = Roact.createElement(GenericTextLabel, {
					fontStyle = self.props.fontStyle or font.Header2,
					colorStyle = textTheme,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, -textLengthOffset, 1, 0),
					Text = self.props.text,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextWrapped = false, -- TODO: evaluate
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
					Padding = UDim.new(0, self.props.textPadding.right),
				}),

				RightPadding = Roact.createElement("UIPadding", {
					PaddingRight = UDim.new(0, rightPadding),
				}),

				RightSideContent = self.props.renderRightSideGadget
						and self.props.rightSideGadgetSize
						and Roact.createElement("Frame", {
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							LayoutOrder = 3,
							Size = UDim2.fromOffset(self.props.rightSideGadgetSize.X, self.props.rightSideGadgetSize.Y),
						}, self.props.renderRightSideGadget())
					or Roact.createFragment({
						KeyLabel = self.props.keyCodeLabel and Roact.createElement(KeyLabel, {
							keyCode = self.props.keyCodeLabel,

							LayoutOrder = 2,

							[Roact.Change.AbsoluteSize] = self.keyLabelSizeChanged,
						}),

						SelectedIcon = Roact.createElement(ImageSetComponent.Label, {
							Image = Images["icons/status/success_small"],
							Size = UDim2.fromOffset(self.props.selectedIconSize, self.props.selectedIconSize),
							LayoutOrder = 1,
							BackgroundTransparency = 1,
							ImageColor3 = theme.IconEmphasis.Color,
							ImageTransparency = theme.IconEmphasis.Transparency,
							Visible = self.props.selected,
						}),
					}),
			}),
		}

		if UIBloxConfig.useInteractableWithTileAndCell then
			return Roact.createElement(Interactable, {
				Size = UDim2.new(1, 0, 0, self.props.elementHeight),
				BackgroundTransparency = 1,

				Image = nil,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = sliceCenter,
				ImageRectSize = imageRectSize,
				ImageRectOffset = imageRectOffset,
				SliceScale = 1 / Images.ImagesResolutionScale,
				ImageTransparency = 1,
				ImageColor3 = cellStyle.Color,
				AutoButtonColor = false,
				LayoutOrder = self.props.layoutOrder,
				BorderSizePixel = 0,
				[Roact.Ref] = self.props.setButtonRef,
				SelectionImageObject = if UIBloxConfig.migrateToNewSelectionCursor
					then self.props.selectionCursor
					else getSelectionCursor(self.props.cursorKind),
				SelectionOrder = self.props.selectionOrder,
				onStateChanged = function(oldState, newState)
					if oldState == ControlState.Pressed or oldState == ControlState.SelectedPressed then
						if self.props.onActivated then
							self.props.onActivated()
						end
					end
					if self.props.setControlState then
						self.setControlState(newState)
					end
				end,
				isDisabled = self.props.disabled,
			}, children)
		else
			return Roact.createElement(Controllable, {
				controlComponent = {
					component = "ImageButton",
					props = {
						Size = UDim2.new(1, 0, 0, self.props.elementHeight),
						BackgroundTransparency = 1,

						Image = nil,
						ScaleType = Enum.ScaleType.Slice,
						SliceCenter = sliceCenter,
						ImageRectSize = imageRectSize,
						ImageRectOffset = imageRectOffset,
						SliceScale = 1 / Images.ImagesResolutionScale,
						ImageTransparency = 1,
						ImageColor3 = cellStyle.Color,
						AutoButtonColor = false,
						LayoutOrder = self.props.layoutOrder,
						BorderSizePixel = 0,
						[Roact.Ref] = self.props.setButtonRef,
						[Roact.Event.Activated] = self.props.onActivated,
						SelectionImageObject = if UIBloxConfig.migrateToNewSelectionCursor
							then self.props.selectionCursor
							else getSelectionCursor(self.props.cursorKind),
						SelectionOrder = self.props.selectionOrder,
					},
					children = children,
				},
				onStateChanged = function(_, newState)
					self.setControlState(newState)
				end,
				isDisabled = self.props.disabled,
			})
		end
	end)
end

function Cell:render()
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithSelectionCursor(getSelectionCursor)
	end)
end

return Cell
