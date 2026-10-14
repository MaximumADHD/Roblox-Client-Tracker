local StoryControls = {}

StoryControls.AxisOptions = table.freeze({ "vertical", "horizontal" })
StoryControls.AlignmentOptions = table.freeze({ "center", "start", "end" })
StoryControls.PresentationModeOptions = table.freeze({ "untilCommit", "immediate" })
StoryControls.OverscanOptions = table.freeze({ 2, 0, 1, 4, 8 })

function StoryControls.options(defaultValue, values)
	local result = { defaultValue }
	for _, value in values do
		if value ~= defaultValue then
			table.insert(result, value)
		end
	end
	return result
end

function StoryControls.merge(defaults, controls)
	local result = table.clone(defaults)
	if controls ~= nil then
		for key, value in controls do
			result[key] = if type(value) == "table" then value[1] else value
		end
	end
	return result
end

function StoryControls.positiveInteger(value, fallback: number): number
	if type(value) ~= "number" or value ~= value then
		return fallback
	end
	return math.max(1, math.round(value))
end

function StoryControls.nonNegativeNumber(value, fallback: number): number
	if type(value) ~= "number" or value ~= value then
		return fallback
	end
	return math.max(0, value)
end

function StoryControls.resolveAxis(value, ViewRecycler)
	return if value == "horizontal" then ViewRecycler.Axis.X else ViewRecycler.Axis.Y
end

function StoryControls.resolveAlignment(value, ViewRecycler)
	if value == "start" then
		return ViewRecycler.ScrollAlignment.Start
	elseif value == "end" then
		return ViewRecycler.ScrollAlignment.End
	end
	return ViewRecycler.ScrollAlignment.Center
end

function StoryControls.resolvePresentationMode(value, ViewRecycler)
	return if value == "untilCommit"
		then ViewRecycler.RecyclableViewReadiness.ReadyOnCommit
		else ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment
end

return StoryControls
