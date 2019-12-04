--[[
	Module for splitting the errorStack string to a list.

	Currently works with:
	Pattern of error from ScriptContext.Error:
		see ScriptContext.extractCallStack

	Pattern of error from ScriptContext.Error: (luau)
		see ScriptContext.extractCallStack

	Pattern of error from debug.traceback:
		see ScriptContext.printCallStack

	Pattern of error from debug.traceback: (luau)
		see luau_backtrace
]]

local function splitStringWithMarks(string, matches)
	if type(string) ~= "string" or
		type(matches) ~= "table" then
		return string, ""
	end

	for _, match in ipairs(matches) do
		local start, stop = string.find(string, match, nil, true)

		if start ~= nil then
			local first = string.sub(string, 1, start - 1)
			local rest = string.sub(string, stop + 1)
			return first, rest
		end
	end

	return string, ""
end

local function findFileNameFromPath(pathStr)
	if type(pathStr) ~= "string" then
		return ""
	end

	return string.match(pathStr, "([^.]*)$")
end

local function ProcessErrorStack(errorStack)
	local stack = {}
	local sourceCodeDict = {}
	local numOfSourceCode = 0

	if type(errorStack) ~= "string" then
		return stack, sourceCodeDict
	end

	for line in errorStack:gmatch("[^\r\n]+") do
		local newLine
		local source
		local funcName
		local lineNumber

		source, newLine = splitStringWithMarks(line, {", line ", ", Line ", ":"})
		lineNumber, funcName = splitStringWithMarks(newLine, {" - "})

		if lineNumber ~= "" and source ~= "" then
			-- Convert "Script 'filePath'" to filePath
			local _, _, matchedSource = string.find(source, "Script '(.*)'")
			if matchedSource ~= nil then
				source = matchedSource
			end

			local index = sourceCodeDict[source]
			if index == nil then
				numOfSourceCode = numOfSourceCode + 1
				index = numOfSourceCode
				sourceCodeDict[source] = index
			end

			-- If no funcName is provided, Backtrace has difficulty differentiating the error
			-- stacks apart. So we want to have something.
			if funcName == "" then
				funcName = findFileNameFromPath(source)
			end

			table.insert(stack, {
				line = lineNumber,
				funcName = funcName,
				sourceCode = tostring(index),
			})
		end
	end

	local sourceCodeOutput = {}
	for path, index in pairs(sourceCodeDict) do
		sourceCodeOutput[tostring(index)] = {
			path = path,
		}
	end

	return stack, sourceCodeOutput
end

return ProcessErrorStack
