local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)

local Canvas = require(Graphing.Components.Canvas)
local GridLine = require(Graphing.Components.GridLine)
local InputDetector = require(Graphing.Components.InputDetector)
local SidePositioner = require(Graphing.Components.SidePositioner)

local function NineSliceLine(props)
	local isHovered, setIsHovered = React.useState(false)
	local _isDragged, setIsDragged = React.useState(false)

	local function onHoverStart()
		setIsHovered(true)
	end

	local function onHoverMoved()
		setIsHovered(true)
	end

	local function onHoverEnded()
		setIsHovered(false)
	end

	local function onDragStart()
		setIsDragged(true)
	end

	local function onDragMoved(pos)
		setIsDragged(true)

		local newVal = if props.Axis == "X" then pos.X else pos.Y
		props.OnPositionChanged(newVal)
	end

	local function onDragEnded()
		setIsDragged(false)
	end

	return React.createElement(React.Fragment, {}, {
		Line = React.createElement(GridLine, {
			Orientation = if props.Axis == "X" then "Vertical" else "Horizontal",
			Position = props.Position,
			Color3 = Color3.fromRGB(255, 100, 100),
			Thickness = if isHovered then 2 else 1,
		}, {
			Input = React.createElement(InputDetector, {
				Inflate = 5,
				XSnap = 1,
				YSnap = 1,
				OnHoverStart = onHoverStart,
				OnHoverMoved = onHoverMoved,
				OnHoverEnded = onHoverEnded,
				OnDragStart = onDragStart,
				OnDragMoved = onDragMoved,
				OnDragEnded = onDragEnded,
			}),
		}),
		Arrow1 = React.createElement(SidePositioner, {
			Side = if props.Axis == "X" then "Top" else "Left",
			Position = props.Position,
		}, {
			TriangleVisual = React.createElement("ImageButton", {
				AnchorPoint = if props.Axis == "X" then Vector2.new(0.5, 1) else Vector2.new(1, 0.5),
				Size = if isHovered then UDim2.fromOffset(12, 12) else UDim2.fromOffset(10, 10),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ImageColor3 = if isHovered then Color3.fromRGB(255, 255, 100) else Color3.fromRGB(255, 255, 255),
				Image = "rbxasset://textures/smallTriangle.png",
				Rotation = if props.Axis == "X" then 180 else 90,
			}, {
				Input = React.createElement(InputDetector, {
					Inflate = 2,
					XSnap = 1,
					YSnap = 1,
					OnHoverStart = onHoverStart,
					OnHoverMoved = onHoverMoved,
					OnHoverEnded = onHoverEnded,
					OnDragStart = onDragStart,
					OnDragMoved = onDragMoved,
					OnDragEnded = onDragEnded,
				}),
			}),
		}),
		Arrow2 = React.createElement(SidePositioner, {
			Side = if props.Axis == "X" then "Bottom" else "Right",
			Position = props.Position,
		}, {
			TriangleVisual = React.createElement("ImageButton", {
				AnchorPoint = if props.Axis == "X" then Vector2.new(0.5, 0) else Vector2.new(0, 0.5),
				Size = UDim2.fromOffset(10, 10),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ImageColor3 = if isHovered then Color3.fromRGB(255, 255, 100) else Color3.fromRGB(255, 255, 255),
				Image = "rbxasset://textures/smallTriangle.png",
				Rotation = if props.Axis == "X" then 0 else -90,
			}, {
				Input = React.createElement(InputDetector, {
					Inflate = 2,
					XSnap = 1,
					YSnap = 1,
					OnHoverStart = onHoverStart,
					OnHoverMoved = onHoverMoved,
					OnHoverEnded = onHoverEnded,
					OnDragStart = onDragStart,
					OnDragMoved = onDragMoved,
					OnDragEnded = onDragEnded,
				}),
			}),
		}),
	})
end

local function NineSliceEditor(props)
	local image = "rbxasset://textures/particles/SquareParticle.png"

	local imageSize = Vector2.new(256, 256)
	local sliceRect, setSliceRect = React.useState(Rect.new(60, 54, 196, 190))

	local children: { [string]: React.Node } = {
		Image = React.createElement("ImageLabel", {
			Size = UDim2.fromScale(1, 1),
			Image = image,
		}),
	}
	local childrenUnclipped: { [string]: React.Node } = {
		LineXMin = React.createElement(NineSliceLine, {
			Axis = "X",
			Position = sliceRect.Min.X,
			OnPositionChanged = function(newVal)
				setSliceRect(Rect.new(newVal, sliceRect.Min.Y, sliceRect.Max.X, sliceRect.Max.Y))
			end,
		}),
		LineYMin = React.createElement(NineSliceLine, {
			Axis = "Y",
			Position = sliceRect.Min.Y,
			OnPositionChanged = function(newVal)
				setSliceRect(Rect.new(sliceRect.Min.X, newVal, sliceRect.Max.X, sliceRect.Max.Y))
			end,
		}),
		LineXMax = React.createElement(NineSliceLine, {
			Axis = "X",
			Position = sliceRect.Max.X,
			OnPositionChanged = function(newVal)
				setSliceRect(Rect.new(sliceRect.Min.X, sliceRect.Min.Y, newVal, sliceRect.Max.Y))
			end,
		}),
		LineYMax = React.createElement(NineSliceLine, {
			Axis = "Y",
			Position = sliceRect.Max.Y,
			OnPositionChanged = function(newVal)
				setSliceRect(Rect.new(sliceRect.Min.X, sliceRect.Min.Y, sliceRect.Max.X, newVal))
			end,
		}),
	}

	return React.createElement(Canvas, {
		GraphRect = Rect.new(0, 0, imageSize.X, imageSize.Y),
		YAxisScaling = {
			Type = "Linear",
			Direction = "Reversed",
		},

		children = children,
		childrenUnclipped = childrenUnclipped,
	})
end

return {
	summary = "An editor for a Rect representing a 9-slice center, such as the property ImageLabel.SliceCenter.",
	story = function(props)
		return React.createElement("Frame", {
			Size = UDim2.new(0, 200, 0, 200), -- TODO fix an issue where the contents of the canvas affect automatic sizing for some reason
			BackgroundTransparency = 1,
		}, {
			Editor = React.createElement(NineSliceEditor, props),
		})
	end,
	controls = {},
}
