--!strict

local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)

export type Bindable<T> = T | React.Binding<T>

export type ReactRef<T> = { current: T? }

export type Children = { [string]: React.Node }

export type Axis = "X" | "Y"
export type Side = "Left" | "Right" | "Top" | "Bottom"
export type Orientation = "Horizontal" | "Vertical"

-- "Forward" means values increase going down and to the right.
-- The x axis defaults to Forward, and the y axis defaults to Reversed.
export type AxisDirection = "Forward" | "Reversed"

export type AxisScalingType = "Linear" | "Power" | "Logarithmic"

export type LinearAxisScaling = {
	Type: "Linear",
	Direction: AxisDirection?,
}

export type PowerAxisScaling = {
	Type: "Power",
	Direction: AxisDirection?,
	Power: number,
}

export type LogarithmicAxisScaling = {
	Type: "Logarithmic",
	Direction: AxisDirection?,
	Base: number,
}

export type AxisScaling = LinearAxisScaling | PowerAxisScaling | LogarithmicAxisScaling

export type ScaleSchemaType = "Uniform" | "Logarithmic" | "Values"

export type UniformScaleSchema = {
	Type: "Uniform",
	Unit: number,
	Offset: number?,
}

export type LogarithmicScaleSchema = {
	Type: "Logarithmic",
	Base: number,
	Subdivision: number?,
	MinExponent: number?,
}

export type ValuesScaleSchema = {
	Type: "Values",
	Values: { number },
}

export type ScaleSchema = UniformScaleSchema | LogarithmicScaleSchema | ValuesScaleSchema

export type CurvePoint = {
	Position: Vector2,
	LeftTangent: Vector2?,
	RightTangent: Vector2?,
}

export type SignalGetter<T> = (any) -> T

-- Functions are documented in CanvasUtil.lua
export type CanvasContext = {
	getViewport: () -> GuiObject?,
	getGraphRect: () -> Rect,
	getViewportRect: () -> Rect,
	getXAxisScaling: () -> AxisScaling,
	getYAxisScaling: () -> AxisScaling,

	plotToGraph: (Vector2) -> Vector2,
	plotToGraphX: (number) -> number,
	plotToGraphY: (number) -> number,
	graphToPlot: (Vector2) -> Vector2,
	graphToPlotX: (number) -> number,
	graphToPlotY: (number) -> number,

	plotToView: (Vector2) -> Vector2,
	plotToViewX: (number) -> number,
	plotToViewY: (number) -> number,
	viewToPlot: (Vector2) -> Vector2,
	viewToPlotX: (number) -> number,
	viewToPlotY: (number) -> number,

	absToView: (Vector2) -> Vector2,
	viewToAbs: (Vector2) -> Vector2,
	absToPlot: (Vector2) -> Vector2,
	plotToAbs: (Vector2) -> Vector2,

	mouseToView: (Vector3) -> Vector2,
	mouseToPlot: (Vector3) -> Vector2,

	isPointInViewport: (Vector2, number?) -> boolean,
	isPointInViewportX: (number, number?) -> boolean,
	isPointInViewportY: (number, number?) -> boolean,
	isRectInViewport: (Rect, number?) -> boolean,

	viewportRectGetter: SignalGetter<Rect>,
}

export type CanvasHandle = {
	setViewportRect: (Rect) -> (),
	setGraphRect: (Rect) -> (),
	update: (
		graphRect: Rect,
		viewportRect: Rect,
		xAxisScaling: AxisScaling?,
		yAxisScaling: AxisScaling?,
		cullingEpsilon: number?
	) -> (),
}

return {
	AXIS_X = "X" :: Axis,
	AXIS_Y = "Y" :: Axis,
	DIRECTION_FORWARD = "Forward" :: AxisDirection,
	DIRECTION_REVERSED = "Reversed" :: AxisDirection,
	ORIENTATION_HORIZONTAL = "Horizontal" :: Orientation,
	ORIENTATION_VERTICAL = "Vertical" :: Orientation,
	SCALE_UNIFORM = "Uniform" :: ScaleSchemaType,
	SCALE_LOGARITHMIC = "Logarithmic" :: ScaleSchemaType,
	SCALE_VALUES = "Values" :: ScaleSchemaType,
	SCALING_LINEAR = "Linear" :: AxisScalingType,
	SCALING_POWER = "Power" :: AxisScalingType,
	SCALING_LOGARITHMIC = "Logarithmic" :: AxisScalingType,
	SIDE_LEFT = "Left" :: Side,
	SIDE_RIGHT = "Right" :: Side,
	SIDE_TOP = "Top" :: Side,
	SIDE_BOTTOM = "Bottom" :: Side,
}
