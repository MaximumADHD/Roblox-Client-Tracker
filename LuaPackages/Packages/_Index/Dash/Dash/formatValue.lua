local Dash = script.Parent

--[=[
	Formats a specific _value_ using the specified _displayString_.

	@param value The value to format.
	@param displayString Optional display string specifying the format.
	@return The formatted string representation of the value.
	@example
	```luau
		formatValue(255, "06X") --> "0000FF"
	```
	@example
	```luau
		formatValue(255.5) --> "255.5"
	```
	@see `format` for a full description of valid display strings.
]=]
local function formatValue(value: any, displayString: string?): string
	local _displayString = displayString or ""
	-- Inline require to prevent infinite require cycle
	local displayTypeStart, displayTypeEnd = _displayString:find("[A-Za-z#?]+")
	if displayTypeStart then
		local displayType = _displayString:sub(displayTypeStart, displayTypeEnd)
		local formatAsString = "%"
			.. _displayString:sub(1, displayTypeStart - 1)
			.. _displayString:sub(displayTypeEnd + 1)
			.. "s"
		-- Pretty print values
		local pretty = require(Dash.pretty)
		if displayType == "#?" then
			-- Multiline print a value
			return formatAsString:format(pretty(value, { multiline = true }))
		elseif displayType == "?" then
			-- Inspect a value
			return formatAsString:format(pretty(value))
		end
		return ("%" .. _displayString):format(value)
	else
		local displayType = "s"
		if type(value) == "number" then
			-- Correctly display floats or integers
			local _, fraction = math.modf(value)
			displayType = fraction == 0 and "d" or "f"
		end
		return ("%" .. _displayString .. displayType):format(tostring(value))
	end
end

return formatValue
