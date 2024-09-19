--!nonstrict
local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local RoactGamepad = require(Packages.RoactGamepad)
local Roact = require(Packages.Roact)
local React = require(Packages.React)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)
local withStyle = require(UIBlox.Core.Style.withStyle)
local useStyle = require(UIBlox.Core.Style.useStyle)
local validateColorInfo = require(UIBlox.Core.Style.Validator.validateColorInfo)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

local validateButtonProps = require(script.Parent.validateButtonProps)

local VerticalScrollView = require(App.Container.VerticalScrollView)
local Images = require(App.ImageSet.Images)
local withSelectionCursorProvider = require(App.SelectionImage.withSelectionCursorProvider)
local CursorKind = require(App.SelectionImage.CursorKind)
local withCursor = require(App.SelectionCursor.withCursor)
local CursorType = require(App.SelectionCursor.CursorType)
local setDefault = require(UIBlox.Utility.setDefault)

local Cell = require(script.Parent.Cell)
local RoundedFrame = require(script.Parent.RoundedFrame)
local StyleDefaults = require(script.Parent.StyleDefaults)

local UIBloxConfig = require(UIBlox.UIBloxConfig)

local DROP_SHADOW_ASSET = Images["component_assets/dropshadow_17_8"]

local MAXIMUM_ELEMENTS = 7

local FIX_HEIGHT_ROUNDED_CORNER_SIZE = 8
local SHADOW_SLICE = 16

local SCROLLBAR_OFFSET = 4

local BaseMenu = Roact.PureComponent:extend("BaseMenu")

BaseMenu.validateProps = t.strictInterface({
	-- The properties for each cell. It is an array that contains multiple tables of button props.
	buttonProps = validateButtonProps,
	-- The width of the menu
	width = t.optional(t.UDim),
	-- The position of the menu
	position = t.optional(t.union(t.UDim2, t.table)),
	-- The anchor point of the menu
	anchorPoint = t.optional(t.Vector2),
	-- The layout order of the menu
	layoutOrder = t.optional(t.number),
	topElementRounded = t.optional(t.boolean),
	bottomElementRounded = t.optional(t.boolean),
	setFirstItemRef = t.optional(t.union(t.callback, t.table)),
	setFrameRef = t.optional(t.union(t.callback, t.table)),
	stayOnActivated = t.optional(t.boolean),
	maxHeight = t.optional(t.number),
	showDropShadow = t.optional(t.boolean),
	fixedListHeight = t.optional(t.number),
	-- If the background asset behind the element is visible or not
	isElementBackgroundVisible = t.optional(t.boolean),
	-- If the divider is visible between all elements in the menu
	isElementDividerVisible = t.optional(t.boolean),
	-- Height of each element
	elementHeight = t.optional(t.number),
	-- Size of border rounded corner
	borderCornerRadius = t.optional(t.integer),
	-- Background of the menu
	background = t.optional(validateColorInfo),
	-- Indicate whether design override is enabled
	enableTokenOverride = t.optional(t.boolean),
	-- Render callback to get the header element for menu
	renderHeader = t.optional(t.callback),
	-- Height of header
	headerHeight = t.optional(t.number),
	-- Override selection order. This selection order only affects calling GuiService:Select() on an ancestor. This property does not affect directional navigation.
	selectionOrder = t.optional(t.number),
})

BaseMenu.defaultProps = {
	width = UDim.new(1, 0),
	position = UDim2.new(0, 0, 0, 0),
	topElementRounded = true,
	bottomElementRounded = true,
	showDropShadow = false,
	fixedListHeight = nil,
	isElementBackgroundVisible = true,
	isElementDividerVisible = true,
	elementHeight = 56,
	borderCornerRadius = 4,
	enableTokenOverride = true,
	headerHeight = 0,
}

function BaseMenu:init()
	self.gamepadRefs = RoactGamepad.createRefCache()
end

function BaseMenu:renderFixedHeightMenu(props, stylePalette, children)
	local fixedListHeight = props.fixedListHeight
	local borderCornerRadius = setDefault(props.borderCornerRadius, FIX_HEIGHT_ROUNDED_CORNER_SIZE)
	local defaultBackgroundColor = stylePalette.Theme.BackgroundUIDefault
	local baseMenuBackground = setDefault(props.background, {
		Color = defaultBackgroundColor.Color,
		Transparency = defaultBackgroundColor.Transparency,
	})
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
			BackgroundColor3 = baseMenuBackground.Color,
			BackgroundTransparency = baseMenuBackground.Transparency,
			ZIndex = 3,
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, borderCornerRadius),
			}),
			ClippingFrame = Roact.createElement("Frame", {
				ZIndex = 4,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, -borderCornerRadius * 2),
				Position = UDim2.new(0, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0, 0.5),
				ClipsDescendants = true,
			}, {
				ScrollingFrame = Roact.createElement(VerticalScrollView, {
					canvasSizeY = UDim.new(0, #props.buttonProps * props.elementHeight),
					selectable = if UIBloxConfig.fixFixedHeightMenuFrameSelectable then false else nil,
				}, children),
			}),
		}),
	})
end

function BaseMenu:render()
	local headerHeight = self.props.headerHeight
	local maximumHeight = self.props.elementHeight * (MAXIMUM_ELEMENTS + 0.5) + headerHeight
	local menuHeight = #self.props.buttonProps * self.props.elementHeight + headerHeight
	local needsScrollbar = false
	if menuHeight >= maximumHeight then
		menuHeight = maximumHeight
		needsScrollbar = true
	end

	local maxHeightOverride = self.props.maxHeight
	if maxHeightOverride and maxHeightOverride > 0 and menuHeight > maxHeightOverride then
		local availableHeight = maxHeightOverride - (self.props.elementHeight * 0.5) - headerHeight
		local rows = math.floor(availableHeight / self.props.elementHeight)
		rows = math.max(rows, 1)
		menuHeight = (rows + 0.5) * self.props.elementHeight + headerHeight
		needsScrollbar = true
	end

	local children = {}
	for index, cellProps in ipairs(self.props.buttonProps) do
		local mergedProps = Cryo.Dictionary.join(cellProps, {
			elementHeight = self.props.elementHeight,
			hasRoundTop = self.props.topElementRounded and index == 1 and not needsScrollbar,
			hasRoundBottom = self.props.bottomElementRounded
				and index == #self.props.buttonProps
				and not needsScrollbar,
			hasDivider = if self.props.isElementDividerVisible then index < #self.props.buttonProps else false,
			layoutOrder = index,
			inputBindingKey = Cryo.None,
			setButtonRef = (index == 1 and self.props.setFirstItemRef) or nil,
			isElementBackgroundVisible = self.props.isElementBackgroundVisible,
			borderCornerRadius = self.props.borderCornerRadius,
			background = self.props.background,
		})

		if UIBloxConfig.migrateToNewSelectionCursor then
			local cursorType
			if mergedProps.hasRoundBottom and mergedProps.hasRoundTop then
				cursorType = CursorType.RoundedRectNoInset
			elseif mergedProps.hasRoundBottom then
				cursorType = CursorType.BulletDown
			elseif mergedProps.hasRoundTop then
				cursorType = CursorType.BulletUp
			else
				cursorType = CursorType.Square
			end

			children["cell " .. index] = withCursor(function(context)
				local selectionCursor = context.getCursorByType(cursorType)
				mergedProps = Cryo.Dictionary.join(mergedProps, {
					selectionCursor = selectionCursor,
					selectionOrder = self.props.selectionOrder,
				})
				return Roact.createElement(RoactGamepad.Focusable.Frame, {
					Size = UDim2.new(self.props.width, UDim.new(0, self.props.elementHeight)),
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
					SelectionImageObject = selectionCursor,
				}, {
					Cell = Roact.createElement(Cell, mergedProps),
				})
			end)
		else
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

			mergedProps = Cryo.Dictionary.join(mergedProps, {
				cursorKind = cursorKind,
				selectionOrder = self.props.selectionOrder,
			})

			children["cell " .. index] = withSelectionCursorProvider(function(getSelectionCursor)
				return Roact.createElement(RoactGamepad.Focusable.Frame, {
					Size = UDim2.new(self.props.width, UDim.new(0, self.props.elementHeight)),
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
					Cell = Roact.createElement(Cell, mergedProps),
				})
			end)
		end
	end

	children.layout = Roact.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		FillDirection = Enum.FillDirection.Vertical,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local defaultBackgroundColor = theme.BackgroundUIDefault
		local baseMenuBackground = setDefault(self.props.background, {
			Color = defaultBackgroundColor.Color,
			Transparency = defaultBackgroundColor.Transparency,
		})

		local isElementBackgroundVisible = self.props.isElementBackgroundVisible
		local needsTopRoundedBar = needsScrollbar and self.props.topElementRounded and isElementBackgroundVisible
		local needsBottomRoundedBar = needsScrollbar and self.props.bottomElementRounded and isElementBackgroundVisible
		local roundedBarCount = (needsTopRoundedBar and 1 or 0) + (needsBottomRoundedBar and 1 or 0)

		local renderHeader = self.props.renderHeader
		local showHeader = if not needsTopRoundedBar and renderHeader then true else false

		if self.props.fixedListHeight then
			return self:renderFixedHeightMenu(self.props, stylePalette, children)
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

			Background = if (needsTopRoundedBar or needsBottomRoundedBar)
				then Roact.createElement(RoundedFrame, {
					zIndex = -1,
					background = baseMenuBackground,
					topCornerRadius = if needsTopRoundedBar then UDim.new(0, self.props.borderCornerRadius) else nil,
					bottomCornerRadius = if needsBottomRoundedBar
						then UDim.new(0, self.props.borderCornerRadius)
						else nil,
				})
				else nil,

			-- We turn off ClipsDescendants on the ScrollingFrame to allow the scroll bar to be offset over the contents.
			ClippingFrame = Roact.createElement("Frame", {
				ZIndex = 3,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, -(self.props.borderCornerRadius * roundedBarCount)),
				Position = UDim2.fromScale(0, needsTopRoundedBar and 0.5 or 0),
				AnchorPoint = Vector2.new(0, needsTopRoundedBar and 0.5 or 0),
				ClipsDescendants = true,
			}, {
				HeaderFrame = if showHeader
					then Roact.createElement("Frame", {
						Selectable = false,
						Size = UDim2.new(1, 0, 0, headerHeight),
						Position = UDim2.fromOffset(0, 0),
						AnchorPoint = Vector2.new(0, 0),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
					}, {
						Header = renderHeader(),
					})
					else nil,
				ScrollingFrame = Roact.createElement("ScrollingFrame", {
					[Roact.Ref] = self.props.setFrameRef,
					Selectable = false,
					BackgroundTransparency = 1,
					Size = UDim2.new(
						1,
						needsTopRoundedBar and -SCROLLBAR_OFFSET or 0,
						1,
						if showHeader then -headerHeight else 0
					),
					Position = if showHeader then UDim2.fromOffset(0, headerHeight) else nil,
					BorderSizePixel = 0,
					ScrollBarThickness = if needsScrollbar then 4 else 0,
					ScrollBarImageColor3 = theme.UIEmphasis.Color,
					ScrollBarImageTransparency = theme.UIEmphasis.Transparency,
					ScrollingDirection = Enum.ScrollingDirection.Y,
					CanvasSize = UDim2.new(1, 0, 0, #self.props.buttonProps * self.props.elementHeight),
					ClipsDescendants = showHeader,
				}, children),
			}),
		})
	end)
end

local function BaseMenuFn(props)
	local propsWithOverride = props
	if props.enableTokenOverride then
		local style = useStyle()
		local buttonPropsWithToken = {}
		for index, cellProps in ipairs(props.buttonProps) do
			buttonPropsWithToken[index] = Cryo.Dictionary.join(cellProps, StyleDefaults.getCellDefaultTokens(style))
		end
		propsWithOverride = Cryo.Dictionary.join(propsWithOverride, StyleDefaults.getBaseMenuDefaultTokens(style), {
			buttonProps = buttonPropsWithToken,
		})
	end
	return React.createElement(BaseMenu, propsWithOverride)
end

return BaseMenuFn
