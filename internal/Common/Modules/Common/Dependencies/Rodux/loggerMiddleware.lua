local indentStr = "    "

local function prettyPrint(t, indent)
	indent = indent or 1
	local outputBuffer = {
		"{\n",
	}

	for key, value in pairs(t) do
		local strKey = tostring(key)

		table.insert(outputBuffer, indentStr:rep(indent + 1))
		table.insert(outputBuffer, strKey)
		table.insert(outputBuffer, " = ")

		if typeof(value) == "table" then
			table.insert(outputBuffer, prettyPrint(value, indent + 1))
			table.insert(outputBuffer, "\n")
		else
			table.insert(outputBuffer, tostring(value))
			table.insert(outputBuffer, "; (")
			table.insert(outputBuffer, typeof(value))
			table.insert(outputBuffer, ")\n")
		end
	end

	table.insert(outputBuffer, indentStr:rep(indent))
	table.insert(outputBuffer, "}")

	return table.concat(outputBuffer, "")
end

local function loggerMiddleware(outputFunction)
	outputFunction = outputFunction or print

	return function(next)
		return function(store, action)
			local result = next(store, action)

			outputFunction(("Action dispatched: %s\nState changed to: %s"):format(
				prettyPrint(action),
				prettyPrint(store:getState()))
			)

			return result
		end
	end
end

return loggerMiddleware
