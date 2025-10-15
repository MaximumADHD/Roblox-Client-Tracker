--[[
	BrickColorPicker

	Hexagonal grid color picker displaying BrickColors in C++ implementation order.
	Used within ColorPicker dropdown for "Brick" mode selection.
]]

local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local Image = require(Foundation.Components.Image)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)

local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local BRICK_COLOR_PALETTES = require(Foundation.Components.ColorPicker.BrickColorConstants)

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

local function BrickColorPicker(brickColorPickerProps: BrickColorPickerProps)
	local props = brickColorPickerProps
	local tokens = useTokens()

	local HEXAGON_SIZE = tokens.Size.Size_350 -- 14px
	local HEXAGON_SPACING = tokens.Size.Size_50 -- 2px
	local BOTTOM_ROW_OFFSET = tokens.Size.Size_100 -- 4px
	local SELECTION_OUTLINE_WIDTH = tokens.Size.Size_200 -- 8px

	local allBrickColors = React.useMemo(function()
		return BRICK_COLOR_PALETTES.MAIN
	end, {})

	local bottomRowColors = React.useMemo(function()
		return BRICK_COLOR_PALETTES.BOTTOM
	end, {})

	local HEXAGON_WIDTH, HEXAGON_HEIGHT = getHexagonDimensions(HEXAGON_SIZE)
	local maxPolygonsInARow = React.useMemo(function()
		local radius = calculateGridRadius(#allBrickColors)
		if radius < MIN_GRID_RADIUS then
			warn("BrickColorPicker: Calculated grid radius is too small, falling back to minimum")
			return MIN_GRID_RADIUS
		end
		return radius
	end, {})

	local gridData, gridBounds = React.useMemo(function()
		local positions = {}

		local colorIndex = 1
		local radius = maxPolygonsInARow
		local hexagonSpacing = HEXAGON_SIZE + HEXAGON_SPACING

		local horizontalStep = HEXAGON_SIZE

		for row = 0, radius - 1 do
			for col = 0, (2 * radius - 1) - 1 do
				local rowFromCenter = math.abs(math.floor(radius / 2) - row)
				local colFromCenter = math.abs(math.floor((2 * radius - 1) / 2) - col)

				if
					(rowFromCenter + colFromCenter < radius)
					and (row % 2 == col % 2)
					and colorIndex <= #allBrickColors
				then
					local x_float = horizontalStep * col
					local y_float = hexagonSpacing * 1.5 * row
					local x = x_float
					local y = math.round(y_float)

					table.insert(positions, {
						brickColor = allBrickColors[colorIndex],
						x = x,
						y = y,
					})
					colorIndex += 1
				end
			end
		end

		if #bottomRowColors > 0 then
			local bottomY_float = hexagonSpacing * 1.5 * radius + BOTTOM_ROW_OFFSET
			local bottomY = math.round(bottomY_float)
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
	end, { maxPolygonsInARow })

	local onActivated = React.useCallback(function(self: GuiObject, inputObject: InputObject)
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
	end, { gridData, gridBounds :: any })

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

	return React.createElement(
		View,
		withCommonProps(props, {
			Size = UDim2.fromOffset(gridBounds.width, gridBounds.height),
		}),
		{
			ColorGrid = React.createElement(View, {
				tag = "size-full position-top-left anchor-top-left",
				onActivated = onActivated,
				stateLayer = {
					affordance = StateLayerAffordance.None,
				},
			}, createHexagonVisuals() :: any),
		}
	)
end

return BrickColorPicker
