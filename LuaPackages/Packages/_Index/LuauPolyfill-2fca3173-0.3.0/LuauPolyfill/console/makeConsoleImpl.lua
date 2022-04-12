--!strict
local INDENT = "  "
local inspect = require(script.Parent.Parent.util).inspect

return function()
	local console = {}
	local indentDepth = 0

	local function indent()
		return string.rep(INDENT, indentDepth)
	end

	function console.log(content, ...)
		local message
		if typeof(content) == "string" then
			message = string.format(content, ...)
		else
			message = inspect(content)
		end
		print(indent() .. message)
	end

	function console.debug(content, ...)
		local message
		if typeof(content) == "string" then
			message = string.format(content, ...)
		else
			message = inspect(content)
		end
		print(indent() .. message)
	end

	function console.info(content, ...)
		local message
		if typeof(content) == "string" then
			message = string.format(content, ...)
		else
			message = inspect(content)
		end
		print(indent() .. message)
	end

	function console.warn(content, ...)
		local message
		if typeof(content) == "string" then
			message = string.format(content, ...)
		else
			message = inspect(content)
		end
		warn(indent() .. message)
	end

	function console.error(content, ...)
		-- JS' `console.error` doesn't interrupt execution like Lua's `error`,
		-- which is more similar to throwing an exception in JS.
		local message
		if typeof(content) == "string" then
			message = string.format(content, ...)
		else
			message = inspect(content)
		end
		warn(indent() .. message)
	end

	function console.group(content, ...)
		local message
		if typeof(content) == "string" then
			message = string.format(content, ...)
		else
			message = inspect(content)
		end
		print(indent() .. message)
		indentDepth = indentDepth + 1
	end

	function console.groupCollapsed(content, ...)
		-- There's no smart console, so this is equivalent to `console.group`
		local message
		if typeof(content) == "string" then
			message = string.format(content, ...)
		else
			message = inspect(content)
		end
		print(indent() .. message)
		indentDepth = indentDepth + 1
	end

	function console.groupEnd()
		if indentDepth > 0 then
			indentDepth = indentDepth - 1
		end
	end

	return console
end
