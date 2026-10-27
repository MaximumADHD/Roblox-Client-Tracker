--[[
	AQS writes summary values as strings (e.g. "0.499800"). Parses one field as a number, erroring
	when it is missing, non-numeric, NaN, or outside [minValue, maxValue] when a range is given,
	so a malformed summary is never read as a pass.
]]
local function readAQSummaryNumber(
	scores: { [string]: any },
	field: string,
	checkName: string,
	minValue: number?,
	maxValue: number?
): number
	local value = tonumber(scores[field])
	if value == nil or value ~= value then
		error(`{checkName}: {field} is not a number: {tostring(scores[field])}`)
	end
	if (minValue ~= nil and value < minValue) or (maxValue ~= nil and value > maxValue) then
		error(`{checkName}: {field} is outside [{minValue}, {maxValue}]: {tostring(scores[field])}`)
	end
	return value :: number
end

return readAQSummaryNumber
