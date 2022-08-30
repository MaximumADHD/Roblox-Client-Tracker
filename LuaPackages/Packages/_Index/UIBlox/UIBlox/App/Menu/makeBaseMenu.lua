-- https://share.goabstract.com/b4b09f34-438a-4d5e-ba7f-8f1f0657f4dd

local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local RoactGamepad = require(Packages.RoactGamepad)
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)
local withStyle = require(UIBlox.Core.Style.withStyle)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local validateButtonProps = require(script.Parent.validateButtonProps)

local VerticalScrollViewV2 = require(App.Container.VerticalScrollViewV2)
local Images = require(App.ImageSet.Images)
local withSelectionCursorProvider = require(App.SelectionImage.withSelectionCursorProvider)
local CursorKind = require(App.SelectionImage.CursorKind)

local DROP_SHADOW_ASSET = Images["component_assets/dropshadow_17_8"]
local MENU_BACKGROUND_ASSET = Images["component_assets/circle_17"]

local ELEMENT_HEIGHT = 56
local MAXIMUM_ELEMENTS = 7
local MAXIMUM_HEIGHT = ELEMENT_HEIGHT * (MAXIMUM_ELEMENTS + 0.5)

local ROUNDED_CORNER_SIZE = 4
local FIX_HEIGHT_ROUNDED_CORNER_SIZE = 8
local SHADOW_SLICE = 16

local SCROLLBAR_OFFSET = 4

local function makeBaseMenu(cellComponent, backgroundThemeKey)
	local baseMenuComponent = Roact.PureComponent:extend("BaseMenuFor" .. backgroundThemeKey)

	baseMenuComponent.validateProps = t.strictInterface({
		buttonProps = validateButtonProps,

		width = t.optional(t.UDim),
		-- The position can either be passed as a UDim2 or a Roact binding.
		position = t.optional(t.union(t.UDim2, t.table)),
		anchorPoint = t.optional(t.Vector2),
		layoutOrder = t.optional(t.number),
		topElementRounded = t.optional(t.boolean),
		bottomElementRounded = t.optional(t.boolean),
		setFirstItemRef = t.optional(t.union(t.callback, t.table)),
		setFrameRef = t.optional(t.union(t.callback, t.table)),
		stayOnActivated = t.optional(t.boolean),
		maxHeight = t.optional(t.number),
		showDropShadow = t.optional(t.boolean),
		fixedListHeight = t.optional(t.number),
	})

	baseMenuComponent.defaultProps = {
		width = UDim.new(1, 0),
		position = UDim2.new(0, 0, 0, 0),
		topElementRounded = true,
		bottomElementRounded = true,
		showDropShadow = false,
		fixedListHeight = nil,
	}

	function baseMenuComponent:init()
		self.gamepadRefs = RoactGamepad.createRefCache()
	end

	function baseMenuComponent:renderFixedHeightMenu(props, stylePalette, children)
		local fixedListHeight = props.fixedListHeight
		return Roact.createElement("Frame", {
			AnchorPoint = props.anchorPoint,
			BackgroundTransparency = 1,
			LayoutOrder = props.layoutOrder,
			Size = UDim2.new(props.width.Scale, props.width.Offset, 0, fixedListHeight),
			Position = props.position,
		}, {
			DropShadow = props.showDropShadow and Roact.createElement(ImageSetComponent.Label, {
				ZIndex = 2,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Size = UDim2.new(1, SHADOW_SLICE, 1, SHADOW_SLICE),
				Image = DROP_SHADOW_ASSET,
				ImageColor3 = stylePalette.Theme.DropShadow.Color,
				ImageTransparency = stylePalette.Theme.DropShadow.Transparency,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(SHADOW_SLICE, SHADOW_SLICE, SHADOW_SLICE, SHADOW_SLICE),
			}) or nil,
			ContentFrame = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BackgroundColor3 = stylePalette.Theme.BackgroundUIDefault.Color,
				BackgroundTransparency = stylePalette.Theme.BackgroundUIDefault.Transparency,
				ZIndex = 3,
			}, {
				UICorner = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, FIX_HEIGHT_ROUNDED_CORNER_SIZE),
				}),
				ClippingFrame = Roact.createElement("Frame", {
					ZIndex = 4,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, -FIX_HEIGHT_ROUNDED_CORNER_SIZE * 2),
					Position = UDim2.new(0, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					ClipsDescendants = true,
				}, {
					ScrollingFrame = Roact.createElement(VerticalScrollViewV2, {
						canvasSizeY = UDim.new(0, #props.buttonProps * ELEMENT_HEIGHT),
					}, children),
				}),
			}),
		})
	end

	function baseMenuComponent:render()
		local menuHeight = #self.props.buttonProps * ELEMENT_HEIGHT
		local needsScrollbar = false
		if menuHeight >= MAXIMUM_HEIGHT then
			menuHeight = MAXIMUM_HEIGHT
			needsScrollbar = true
		end

		local maxHeightOverride = self.props.maxHeight
		if maxHeightOverride and maxHeightOverride > 0 and menuHeight > maxHeightOverride then
			local availableHeight = maxHeightOverride - (ELEMENT_HEIGHT * 0.5)
			local rows = math.floor(availableHeight / ELEMENT_HEIGHT)
			rows = math.max(rows, 1)
			menuHeight = (rows + 0.5) * ELEMENT_HEIGHT
			needsScrollbar = true
		end

		local children = {}
		for index, cellProps in ipairs(self.props.buttonProps) do
			local mergedProps = Cryo.Dictionary.join(cellProps, {
				elementHeight = ELEMENT_HEIGHT,
				hasRoundTop = self.props.topElementRounded and index == 1 and not needsScrollbar,
				hasRoundBottom = self.props.bottomElementRounded
					and index == #self.props.buttonProps
					and not needsScrollbar,
				hasDivider = index < #self.props.buttonProps,
				layoutOrder = index,
				inputBindingKey = Cryo.None,
				setButtonRef = (index == 1 and self.props.setFirstItemRef) or nil,
			})

			local cursorKind
			if mergedProps.hasRoundBottom and mergedProps.hasRoundTop then
				cursorKind = CursorKind.RoundedRectNoInset
			elseif mergedProps.hasRoundBottom then
				cursorKind = CursorKind.BulletDown
			elseif mergedProps.hasRoundTop then
				cursorKind = CursorKind.BulletUp
			else
				cursorKind = CursorKind.Square
			end

			if UIBloxConfig.enableAnimatedCursorForNonRoactGamepadComponent then
				mergedProps = Cryo.Dictionary.join(mergedProps, {
					cursorKind = cursorKind,
				})
			end

			children["cell " .. index] = withSelectionCursorProvider(function(getSelectionCursor)
				return Roact.createElement(RoactGamepad.Focusable.Frame, {
					Size = UDim2.new(self.props.width, UDim.new(0, ELEMENT_HEIGHT)),
					BackgroundTransparency = 1,
					LayoutOrder = index,

					[Roact.Ref] = self.gamepadRefs[index],
					NextSelectionUp = index > 1 and self.gamepadRefs[index - 1] or nil,
					NextSelectionDown = index < #self.props.buttonProps and self.gamepadRefs[index + 1] or nil,
					inputBindings = {
						Activated = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonA, cellProps.onActivated, {
							key = cellProps.inputBindingKey,
						}),
					},
					SelectionImageObject = getSelectionCursor(cursorKind),
				}, {
					Cell = Roact.createElement(cellComponent, mergedProps),
				})
			end)
		end

		children.layout = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		})

		return withStyle(function(stylePalette)
			local theme = stylePalette.Theme

			local imageSize = MENU_BACKGROUND_ASSET.ImageRectSize
			local imageOffset = MENU_BACKGROUND_ASSET.ImageRectOffset

			local imageRectOffset = imageOffset
			local imageWidth = imageSize.X
			local halfImageWidth = imageWidth / 2
			local needsTopRoundedBar = needsScrollbar and self.props.topElementRounded
			local needsBottomRoundedBar = needsScrollbar and self.props.bottomElementRounded
			local roundedBarCount = (needsTopRoundedBar and 1 or 0) + (needsBottomRoundedBar and 1 or 0)

			if self.props.fixedListHeight then
				return baseMenuComponent:renderFixedHeightMenu(self.props, stylePalette, children)
			end

			return Roact.createElement("Frame", {
				AnchorPoint = self.props.anchorPoint,
				BackgroundTransparency = 1,
				LayoutOrder = self.props.layoutOrder,
				Size = UDim2.new(self.props.width.Scale, self.props.width.Offset, 0, menuHeight),
				Position = self.props.position,
			}, {
				DropShadow = self.props.showDropShadow and Roact.createElement(ImageSetComponent.Label, {
					ZIndex = 2,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 16, 1, 16),
					Image = DROP_SHADOW_ASSET,
					ImageColor3 = stylePalette.Theme.DropShadow.Color,
					ImageTransparency = stylePalette.Theme.DropShadow.Transparency,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(16, 16, 16, 16),
				}) or nil,

				TopRoundedCorner = needsTopRoundedBar and Roact.createElement("ImageLabel", {
					ZIndex = 3,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, ROUNDED_CORNER_SIZE),
					Position = UDim2.fromScale(0, 0),

					Image = MENU_BACKGROUND_ASSET.Image,
					ScaleType = Enum.ScaleType.Slice,
					SliceScale = 0.5 / Images.ImagesResolutionScale,
					SliceCenter = Rect.new(halfImageWidth - 1, halfImageWidth - 1, halfImageWidth + 1, halfImageWidth),
					ImageRectSize = Vector2.new(imageWidth, halfImageWidth),
					ImageRectOffset = imageRectOffset,

					ImageTransparency = theme[backgroundThemeKey].Transparency,
					ImageColor3 = theme[backgroundThemeKey].Color,
				}),

				-- We turn off ClipsDescendants on the ScrollingFrame to allow the scroll bar to be offset over the contents.
				ClippingFrame = Roact.createElement("Frame", {
					ZIndex = 3,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, -(ROUNDED_CORNER_SIZE * roundedBarCount)),
					Position = UDim2.fromScale(0, needsTopRoundedBar and 0.5 or 0),
					AnchorPoint = Vector2.new(0, needsTopRoundedBar and 0.5 or 0),
					ClipsDescendants = true,
				}, {
					ScrollingFrame = Roact.createElement("ScrollingFrame", {
						[Roact.Ref] = self.props.setFrameRef,
						Selectable = false,
						BackgroundTransparency = 1,
						Size = UDim2.new(1, needsTopRoundedBar and -SCROLLBAR_OFFSET or 0, 1, 0),
						BorderSizePixel = 0,
						ScrollBarThickness = 4,
						ScrollBarImageColor3 = theme.UIEmphasis.Color,
						ScrollBarImageTransparency = theme.UIEmphasis.Transparency,
						ScrollingDirection = Enum.ScrollingDirection.Y,
						CanvasSize = UDim2.new(1, 0, 0, #self.props.buttonProps * ELEMENT_HEIGHT),
						ClipsDescendants = false,
					}, children),
				}),

				BottomRoundedCorner = needsBottomRoundedBar and Roact.createElement("ImageLabel", {
					ZIndex = 2,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, ROUNDED_CORNER_SIZE),
					Position = UDim2.fromScale(0, 1),
					AnchorPoint = Vector2.new(0, 1),

					Image = MENU_BACKGROUND_ASSET.Image,
					ScaleType = Enum.ScaleType.Slice,
					SliceScale = 0.5 / Images.ImagesResolutionScale,
					SliceCenter = Rect.new(halfImageWidth - 1, 0, halfImageWidth + 1, 1),
					ImageRectSize = Vector2.new(imageWidth, halfImageWidth),
					ImageRectOffset = imageOffset + Vector2.new(0, halfImageWidth),

					ImageTransparency = theme[backgroundThemeKey].Transparency,
					ImageColor3 = theme[backgroundThemeKey].Color,
				}),
			})
		end)
	end

	return baseMenuComponent
end

return makeBaseMenu
