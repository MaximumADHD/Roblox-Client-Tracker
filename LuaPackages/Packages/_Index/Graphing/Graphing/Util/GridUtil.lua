--!strict

local Graphing = script:FindFirstAncestor("Graphing")

local MathUtil = require(Graphing.Util.MathUtil)
local Types = require(Graphing.Types)

type Excluding = { [number]: boolean }

local GridUtil = {}

function GridUtil.getUniformValues(
	schema: Types.UniformScaleSchema,
	min: number,
	max: number,
	excluding: Excluding
): { number }
	if max < min then
		local temp = min
		min = max
		max = temp
	end

	local unit = schema.Unit
	local offset = schema.Offset or 0

	-- nudge by 1e-9 for floating point errors
	local startValue = math.ceil((min - offset) / unit - unit * 1e-9)
	local endValue = math.floor((max - offset) / unit + unit * 1e-9)

	local values = {}
	for v = startValue, endValue do
		local value = offset + v * unit
		if not excluding[value] then
			table.insert(values, value)
		end
	end
	return values
end

function GridUtil.getLogarithmicValues(
	schema: Types.LogarithmicScaleSchema,
	min: number,
	max: number,
	excluding: Excluding
): { number }
	if max < min then
		local temp = min
		min = max
		max = temp
	end

	local base = schema.Base
	local subdiv = schema.Subdivision or 0
	local minExp = schema.MinExponent or -10

	-- clamp everything above the minimum exponent
	minExp = math.max(minExp, MathUtil.log(base, min))
	local maxExp = math.max(minExp, MathUtil.log(base, max))

	local values = {}
	local previousValue = 0

	for e = math.floor(minExp), math.ceil(maxExp) do
		local subdivUnit = math.pow(base, e + 1 - subdiv)

		for value = math.pow(base, e), math.pow(base, e + 1), subdivUnit do
			if value > max then
				break
			end
			if value < min or value == previousValue then
				continue
			end
			previousValue = value

			if not excluding[value] then
				table.insert(values, value)
			end
		end
	end

	return values
end

function GridUtil.getValuesValues(
	schema: Types.ValuesScaleSchema,
	min: number,
	max: number,
	excluding: Excluding
): { number }
	local values = {}
	for _, v in schema.Values do
		if v >= min and v <= max and not excluding[v] then
			table.insert(values, v)
		end
	end
	return values
end

function GridUtil.getValues(
	axis: Types.Axis,
	schema: Types.ScaleSchema,
	canvasContext: Types.CanvasContext,
	excluding: { number }?
): { number }
	local values = {}

	-- TODO fix problems with rounding; duplicate values that are _close_ to what's here but not exactly it will not get filtered out
	local valuesToExclude: Excluding = {}
	if excluding then
		for _, n in excluding do
			valuesToExclude[n] = true
		end
	end

	local viewportRect = canvasContext.getViewportRect()
	local min = if axis == Types.AXIS_X then viewportRect.Min.X else viewportRect.Min.Y
	local max = if axis == Types.AXIS_X then viewportRect.Max.X else viewportRect.Max.Y

	if schema.Type == Types.SCALE_UNIFORM then
		local uniformSchema = schema :: Types.UniformScaleSchema
		values = GridUtil.getUniformValues(uniformSchema, min, max, valuesToExclude)
	elseif schema.Type == Types.SCALE_LOGARITHMIC then
		local logSchema = schema :: Types.LogarithmicScaleSchema
		values = GridUtil.getLogarithmicValues(logSchema, min, max, valuesToExclude)
	elseif schema.Type == Types.SCALE_VALUES then
		local valuesSchema = schema :: Types.ValuesScaleSchema
		values = GridUtil.getValuesValues(valuesSchema, min, max, valuesToExclude)
	else
		assert(false, `Axis schema {schema.Type} not supported`)
	end

	return values
end

function GridUtil.trimRoundingError(n: number): string
	local str = string.format("%.10f", n)
	str = str:gsub("^0*(.-)%.?0*$", "%1")
	if str == "" or str:sub(1, 1) == "." then
		str = "0" .. str
	end

	return str
end

function GridUtil.getAnchorPointForSide(s: Types.Side): Vector2
	if s == Types.SIDE_LEFT then
		return Vector2.new(1, 0.5)
	elseif s == Types.SIDE_RIGHT then
		return Vector2.new(0, 0.5)
	elseif s == Types.SIDE_TOP then
		return Vector2.new(0.5, 1)
	elseif s == Types.SIDE_BOTTOM then
		return Vector2.new(0.5, 0)
	else
		assert(false, `Side {s} not supported`)
	end
end

function GridUtil.getTextAlignmentsFromAnchorPoint(anchor: Vector2): (Enum.TextXAlignment, Enum.TextYAlignment)
	local xAlign
	local yAlign

	if anchor.X == 0 then
		xAlign = Enum.TextXAlignment.Left
	elseif anchor.X == 1 then
		xAlign = Enum.TextXAlignment.Right
	else
		xAlign = Enum.TextXAlignment.Center
	end

	if anchor.Y == 0 then
		yAlign = Enum.TextYAlignment.Top
	elseif anchor.Y == 1 then
		yAlign = Enum.TextYAlignment.Bottom
	else
		yAlign = Enum.TextYAlignment.Center
	end

	return xAlign, yAlign
end

return GridUtil
