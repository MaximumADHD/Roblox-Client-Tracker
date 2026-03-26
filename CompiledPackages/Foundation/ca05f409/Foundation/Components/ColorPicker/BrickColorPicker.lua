--[[
	BrickColorPicker

	Hexagonal grid color picker displaying BrickColors in C++ implementation order.
	Used within ColorPicker dropdown for "Brick" mode selection.
	Layout: Diamond-shaped hex grid (128 main colors) + pill-shaped bottom row (12 grayscale colors).
	Sized to fit within the 192px-wide ColorPicker content area per Figma spec.
]]

local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Image = require(Foundation.Components.Image)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local BRICK_COLOR_PALETTES = require(Foundation.Components.ColorPicker.BrickColorConstants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local Flags = require(Foundation.Utility.Flags)
local Wrappers = require(Foundation.Utility.Wrappers)
local Connection = Wrappers.Connection
local Signal = Wrappers.Signal

export type BrickColorPickerProps = {
	selectedColor: React.Binding<Color3>?,
	onBrickColorChanged: (brickColor: BrickColor) -> (),
	onColorChanged: ((color: Color3) -> ())?,
} & Types.CommonProps

type HexagonData = {
	brickColor: BrickColor,
	x: number,
	y: number,
}

type GridBounds = {
	width: number,
	height: number,
	offset: Vector2,
}

local HEXAGON_IMAGE = "component_assets/hexagon_24"
local MIN_GRID_RADIUS = 3
local HEXAGON_SPACING = 1

local function getHexagonDimensions(hexagonSize: number): (number, number)
	return math.sqrt(3) * hexagonSize, 2 * hexagonSize
end

local function calculateGridRadius(colorCount: number): number
	for radius = MIN_GRID_RADIUS, 20, 2 do
		local capacity = radius * radius - math.floor(radius / 2) * (math.floor(radius / 2) + 1)
		if capacity > colorCount then
			return radius - 2
		end
	end
	return 7 -- fallback
end

--[[
	BottomRowSwatches: evenly-spaced grayscale swatch row inside the pill container.
	Owns its own AbsoluteSize listener so the parent doesn't need to track width state.
]]
type BottomRowSwatchesProps = {
	colors: { BrickColor },
	paddingHorizontal: number,
	swatchWidth: number,
	swatchHeight: number,
	swatchCenterY: number,
}

local function BottomRowSwatches(props: BottomRowSwatchesProps)
	local containerWidth, setContainerWidth = React.useState(0)
	local containerRef = React.useRef(nil :: GuiObject?)

	React.useEffect(function()
		local rbx = containerRef.current
		if not rbx then
			return
		end
		local w = math.round(rbx.AbsoluteSize.X)
		if w ~= containerWidth then
			setContainerWidth(w)
		end
		local conn = Signal.Connect(rbx:GetPropertyChangedSignal("AbsoluteSize"), function()
			setContainerWidth(math.round(rbx.AbsoluteSize.X))
		end)
		return function()
			Connection.Disconnect(conn)
		end
	end, { containerWidth })

	local children: { [string]: React.ReactElement } = {}
	if containerWidth > 0 then
		local count = #props.colors

		-- Integer math only: avoids sub-pixel misalignment at non-integer DPI scales
		local contentWidth = containerWidth - 2 * props.paddingHorizontal
		local swatchStep = math.floor(contentWidth / count)
		local totalUsed = swatchStep * (count - 1)
		local startX = props.paddingHorizontal + math.floor((contentWidth - totalUsed) / 2)

		for i, brickColor in ipairs(props.colors) do
			local x = startX + swatchStep * (i - 1)

			children[`Swatch_{i}`] = React.createElement(Image, {
				Size = UDim2.fromOffset(props.swatchWidth, props.swatchHeight),
				Position = UDim2.fromOffset(x, props.swatchCenterY),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = HEXAGON_IMAGE,
				imageStyle = { Color3 = brickColor.Color },
			})
		end
	end

	return React.createElement(View, {
		tag = "size-full",
		ref = containerRef,
		-- createElement children type doesn't include { [string]: ReactElement } directly
	}, children :: any)
end

local function BrickColorPicker(brickColorPickerProps: BrickColorPickerProps)
	local props = brickColorPickerProps
	local tokens = useTokens()

	local HEXAGON_SIZE = if Flags.FoundationColorPickerDesignUpdate then tokens.Size.Size_200 else tokens.Size.Size_350
	local HEXAGON_WIDTH, HEXAGON_HEIGHT
	if Flags.FoundationColorPickerDesignUpdate then
		HEXAGON_WIDTH = tokens.Size.Size_350
		HEXAGON_HEIGHT = tokens.Size.Size_400
	else
		HEXAGON_WIDTH, HEXAGON_HEIGHT = getHexagonDimensions(HEXAGON_SIZE)
	end
	local BOTTOM_PILL_PADDING_HORIZONTAL = tokens.Size.Size_100
	local BOTTOM_SWATCH_WIDTH = tokens.Size.Size_350
	local BOTTOM_SWATCH_HEIGHT = tokens.Size.Size_400
	local SELECTION_OUTLINE_WIDTH = tokens.Size.Size_200

	local allBrickColors = React.useMemo(function()
		return BRICK_COLOR_PALETTES.MAIN
	end, {})

	local bottomRowColors = React.useMemo(function()
		return BRICK_COLOR_PALETTES.BOTTOM
	end, {})

	local maxPolygonsInARow = React.useMemo(function()
		local radius = calculateGridRadius(#allBrickColors)
		if radius < MIN_GRID_RADIUS then
			warn("BrickColorPicker: Calculated grid radius is too small, falling back to minimum")
			return MIN_GRID_RADIUS
		end
		return radius
	end, {})

	-- Grid data only includes MAIN colors; bottom row is rendered separately as a pill.
	local gridData, gridBounds = React.useMemo(
		function()
			local positions = {}

			local colorIndex = 1
			local radius = maxPolygonsInARow
			local hexagonSpacing = HEXAGON_SIZE
				+ (if Flags.FoundationColorPickerDesignUpdate then HEXAGON_SPACING else tokens.Size.Size_50)
			local horizontalStep = HEXAGON_SIZE
			local verticalStep = if Flags.FoundationColorPickerDesignUpdate
				then math.round(hexagonSpacing * 1.5)
				else nil

			for row = 0, radius - 1 do
				for col = 0, (2 * radius - 1) - 1 do
					local rowFromCenter = math.abs(math.floor(radius / 2) - row)
					local colFromCenter = math.abs(math.floor((2 * radius - 1) / 2) - col)

					if
						(rowFromCenter + colFromCenter < radius)
						and (row % 2 == col % 2)
						and colorIndex <= #allBrickColors
					then
						local x = horizontalStep * col
						local y = if verticalStep then verticalStep * row else math.round(hexagonSpacing * 1.5 * row)

						table.insert(positions, {
							brickColor = allBrickColors[colorIndex],
							x = x,
							y = y,
						})
						colorIndex += 1
					end
				end
			end

			if not Flags.FoundationColorPickerDesignUpdate and #bottomRowColors > 0 then
				local BOTTOM_ROW_OFFSET = tokens.Size.Size_100
				local bottomY = math.round(hexagonSpacing * 1.5 * radius + BOTTOM_ROW_OFFSET)
				local startCol = 1

				for i, brickColor in ipairs(bottomRowColors) do
					local col = startCol + (i - 1) * 2
					local x = horizontalStep * col

					table.insert(positions, {
						brickColor = brickColor,
						x = x,
						y = bottomY,
					})
				end
			end

			local minX, maxX = math.huge, -math.huge
			local minY, maxY = math.huge, -math.huge

			for _, pos in positions do
				minX = math.min(minX, pos.x - HEXAGON_WIDTH / 2)
				maxX = math.max(maxX, pos.x + HEXAGON_WIDTH / 2)
				minY = math.min(minY, pos.y - HEXAGON_HEIGHT / 2)
				maxY = math.max(maxY, pos.y + HEXAGON_HEIGHT / 2)
			end

			local bounds = {
				width = maxX - minX,
				height = maxY - minY,
				offset = Vector2.new(minX, minY),
			}

			return positions, bounds
		end,
		{ maxPolygonsInARow, HEXAGON_SIZE, allBrickColors, bottomRowColors, tokens.Size.Size_100, tokens.Size.Size_50 } :: { unknown }
	)

	-- Nearest-distance matching since hexagons aren't axis-aligned
	local onGridActivated = React.useCallback(function(self: GuiObject, inputObject: InputObject)
		if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
			local closestHexagon: HexagonData? = nil
			local minDistanceSq = math.huge
			local relativeX = inputObject.Position.X - self.AbsolutePosition.X
			local relativeY = inputObject.Position.Y - self.AbsolutePosition.Y
			local clickX = relativeX + gridBounds.offset.X
			local clickY = relativeY + gridBounds.offset.Y

			for _, hexagonData in gridData do
				local distSq = (clickX - hexagonData.x) ^ 2 + (clickY - hexagonData.y) ^ 2
				if distSq < minDistanceSq then
					minDistanceSq = distSq
					closestHexagon = hexagonData
				end
			end

			if closestHexagon and minDistanceSq < HEXAGON_SIZE * HEXAGON_SIZE then
				props.onBrickColorChanged(closestHexagon.brickColor)
				if props.onColorChanged then
					props.onColorChanged(closestHexagon.brickColor.Color)
				end
			end
		end
	end, { gridData, gridBounds, HEXAGON_SIZE, props.onBrickColorChanged, props.onColorChanged } :: { unknown })

	local onBottomRowActivated = React.useCallback(function(self: GuiObject, inputObject: InputObject)
		if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
			local relativeX = inputObject.Position.X - self.AbsolutePosition.X
			local containerWidth = self.AbsoluteSize.X
			local contentWidth = containerWidth - 2 * BOTTOM_PILL_PADDING_HORIZONTAL
			local contentX = relativeX - BOTTOM_PILL_PADDING_HORIZONTAL

			if contentX >= 0 and contentX <= contentWidth then
				local idx = math.clamp(math.floor(contentX / contentWidth * #bottomRowColors) + 1, 1, #bottomRowColors)
				local brickColor = bottomRowColors[idx]
				props.onBrickColorChanged(brickColor)
				if props.onColorChanged then
					props.onColorChanged(brickColor.Color)
				end
			end
		end
	end, { bottomRowColors, props.onBrickColorChanged, props.onColorChanged } :: { unknown })

	local createHexagonElement = React.useCallback(
		function(hexagonData: HexagonData, isSelected: boolean): { [string]: React.ReactElement }
			local position = UDim2.fromOffset(hexagonData.x - gridBounds.offset.X, hexagonData.y - gridBounds.offset.Y)

			local elements: { [string]: React.ReactElement } = {}

			if isSelected then
				elements.outline = React.createElement(Image, {
					Size = UDim2.fromOffset(
						HEXAGON_WIDTH + SELECTION_OUTLINE_WIDTH,
						HEXAGON_HEIGHT + SELECTION_OUTLINE_WIDTH
					),
					Position = position,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Image = HEXAGON_IMAGE,
					imageStyle = tokens.Color.ActionEmphasis.Background,
					ZIndex = 1,
				})
			end

			elements.hexagon = React.createElement(Image, {
				Size = UDim2.fromOffset(HEXAGON_WIDTH, HEXAGON_HEIGHT),
				Position = position,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = HEXAGON_IMAGE,
				imageStyle = { Color3 = hexagonData.brickColor.Color },
				ZIndex = 2,
			})

			return elements
		end,
		{ gridBounds.offset.X, gridBounds.offset.Y, HEXAGON_WIDTH, HEXAGON_HEIGHT }
	)

	local createHexagonVisuals = React.useCallback(function(): { [string]: React.ReactElement }
		local elements: { [string]: React.ReactElement } = {}
		local selectedColorValue = props.selectedColor and props.selectedColor:getValue() or nil

		for index, hexagonData in gridData do
			local isSelected = selectedColorValue ~= nil and selectedColorValue == hexagonData.brickColor.Color
			local hexagonElements = createHexagonElement(hexagonData, isSelected)

			for key, element in hexagonElements do
				elements[`{key}_{index}`] = element
			end
		end

		return elements
	end, { props.selectedColor })

	if not Flags.FoundationColorPickerDesignUpdate then
		return React.createElement(
			View,
			withCommonProps(props, {
				Size = UDim2.fromOffset(gridBounds.width, gridBounds.height),
			}),
			{
				ColorGrid = React.createElement(View, {
					tag = "size-full position-top-left anchor-top-left",
					onActivated = onGridActivated,
					stateLayer = {
						affordance = StateLayerAffordance.None,
					},
				}, createHexagonVisuals() :: any),
			}
		)
	end

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = "col align-x-center gap-small auto-y size-full-0",
		}),
		{
			ColorGrid = React.createElement(View, {
				Size = UDim2.fromOffset(gridBounds.width, gridBounds.height),
				LayoutOrder = 1,
				onActivated = onGridActivated,
				stateLayer = {
					affordance = StateLayerAffordance.None,
				},
			}, createHexagonVisuals() :: any),

			BottomRow = React.createElement(View, {
				Size = UDim2.new(1, -tokens.Size.Size_400, 0, tokens.Size.Size_500),
				tag = "stroke-standard stroke-muted radius-circle bg-surface-100",
				LayoutOrder = 2,
				onActivated = onBottomRowActivated,
				stateLayer = {
					affordance = StateLayerAffordance.None,
				},
			}, {
				Swatches = React.createElement(BottomRowSwatches, {
					colors = bottomRowColors,
					paddingHorizontal = BOTTOM_PILL_PADDING_HORIZONTAL,
					swatchWidth = BOTTOM_SWATCH_WIDTH,
					swatchHeight = BOTTOM_SWATCH_HEIGHT,
					swatchCenterY = tokens.Size.Size_250,
				}),
			}),
		}
	)
end

return BrickColorPicker
