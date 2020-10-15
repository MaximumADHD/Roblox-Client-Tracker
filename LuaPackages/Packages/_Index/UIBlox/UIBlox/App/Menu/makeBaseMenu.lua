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
local validateButtonProps = require(script.Parent.validateButtonProps)

local withSelectionCursorProvider = require(UIBlox.App.SelectionImage.withSelectionCursorProvider)
local CursorKind = require(UIBlox.App.SelectionImage.CursorKind)
local Images = require(Packages.UIBlox.App.ImageSet.Images)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local MENU_BACKGROUND_ASSET = Images["component_assets/circle_17"]

local ELEMENT_HEIGHT = 56
local MAXIMUM_ELEMENTS = 7
local MAXIMUM_HEIGHT = ELEMENT_HEIGHT * (MAXIMUM_ELEMENTS + 0.5)

local ROUNDED_CORNER_SIZE = 4

local SCROLLBAR_OFFSET = 4

local function makeBaseMenu(cellComponent, backgroundThemeKey)
	local baseMenuComponent = Roact.PureComponent:extend("BaseMenuFor" ..backgroundThemeKey)

	baseMenuComponent.validateProps = t.strictInterface({
		buttonProps = validateButtonProps,

		width = t.optional(t.UDim),
		-- The position can either be passed as a UDim2 or a Roact binding.
		position = t.optional(t.union(t.UDim2, t.table)),
		anchorPoint = t.optional(t.Vector2),
		layoutOrder = t.optional(t.number),
		topElementRounded = t.optional(t.boolean),
		bottomElementRounded = t.optional(t.boolean),
	})

	baseMenuComponent.defaultProps = {
		width = UDim.new(1, 0),
		position = UDim2.new(0, 0, 0, 0),
		topElementRounded = true,
		bottomElementRounded = true,
	}

	function baseMenuComponent:init()
		if UIBloxConfig.enableExperimentalGamepadSupport then
			self.gamepadRefs = RoactGamepad.createRefCache()
		end
	end

	function baseMenuComponent:render()
		local menuHeight = #self.props.buttonProps * ELEMENT_HEIGHT
		local needsScrollbar = false
		if menuHeight >= MAXIMUM_HEIGHT then
			menuHeight = MAXIMUM_HEIGHT
			needsScrollbar = true
		end

		local children = {}
		for index, cellProps in ipairs(self.props.buttonProps) do
			local mergedProps = Cryo.Dictionary.join(cellProps, {
				elementHeight = ELEMENT_HEIGHT,
				hasRoundTop = self.props.topElementRounded and index == 1 and not needsScrollbar,
				hasRoundBottom = self.props.bottomElementRounded and index == #self.props.buttonProps and not needsScrollbar,
				hasDivider = index < #self.props.buttonProps,
				layoutOrder = index,
			})

			if UIBloxConfig.enableExperimentalGamepadSupport then
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
				children["cell " .. index] = withSelectionCursorProvider(function(getSelectionCursor)
					return Roact.createElement(RoactGamepad.Focusable.Frame, {
						Size = UDim2.new(self.props.width, UDim.new(0, ELEMENT_HEIGHT)),
						BackgroundTransparency = 1,
						LayoutOrder = index,

						[Roact.Ref] = self.gamepadRefs[index],
						NextSelectionUp = index > 1 and self.gamepadRefs[index - 1] or nil,
						NextSelectionDown = index < #self.props.buttonProps and self.gamepadRefs[index + 1] or nil,
						inputBindings = {
							Activated = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonA, cellProps.onActivated),
						},
						SelectionImageObject = getSelectionCursor(cursorKind)
					}, {
						Cell = Roact.createElement(cellComponent, mergedProps)
					})
				end)
			else
				children["cell " .. index] = Roact.createElement(cellComponent, mergedProps)
			end
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

			return Roact.createElement("Frame", {
				AnchorPoint = self.props.anchorPoint,
				BackgroundTransparency = 1,
				LayoutOrder = self.props.layoutOrder,
				Size = UDim2.new(self.props.width.Scale, self.props.width.Offset, 0, menuHeight),
				Position = self.props.position,
			}, {
				TopRoundedCorner = needsScrollbar and Roact.createElement("ImageLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, ROUNDED_CORNER_SIZE),
					Position = UDim2.fromScale(0, 0),

					Image = MENU_BACKGROUND_ASSET.Image,
					ScaleType = Enum.ScaleType.Slice,
					SliceScale = 0.5 / Images.ImagesResolutionScale,
					SliceCenter = Rect.new(halfImageWidth - 1, halfImageWidth - 1, halfImageWidth +1, halfImageWidth),
					ImageRectSize = Vector2.new(imageWidth, halfImageWidth),
					ImageRectOffset = imageRectOffset,

					ImageTransparency = theme[backgroundThemeKey].Transparency,
					ImageColor3 = theme[backgroundThemeKey].Color,
				}),

				-- We turn off ClipsDescendants on the ScrollingFrame to allow the scroll bar to be offset over the contents.
				ClippingFrame = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, needsScrollbar and -(ROUNDED_CORNER_SIZE * 2) or 0),
					Position = UDim2.fromScale(0, 0.5),
					AnchorPoint = Vector2.new(0, 0.5),
					ClipsDescendants = true,
				}, {
					ScrollingFrame = Roact.createElement("ScrollingFrame", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, needsScrollbar and -SCROLLBAR_OFFSET or 0, 1, 0),
						BorderSizePixel = 0,
						ScrollBarThickness = 4,
						ScrollBarImageColor3 = theme.UIEmphasis.Color,
						ScrollBarImageTransparency = theme.UIEmphasis.Transparency,
						ScrollingDirection = Enum.ScrollingDirection.Y,
						CanvasSize = UDim2.new(
							1,
							0,
							0,
							#self.props.buttonProps * ELEMENT_HEIGHT
						),
						ClipsDescendants = false,
					}, children),
				}),

				BottomRoundedCorner = needsScrollbar and Roact.createElement("ImageLabel", {
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