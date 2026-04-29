-- Intentionally using string formatting instead of taking strings directly to avoid
-- expensive string formatting in production.
local Src = script:FindFirstAncestor("ultimate-list")

local DebugFlags = require(Src.DebugFlags)

local function createDebugLogger(key: string): <A...>(format: string | (A...) -> (string, ...any), A...) -> ()
	return function(format, ...)
		if not DebugFlags.shouldLog then
			return
		end

		if typeof(format) == "string" then
			print(`[{key}] {string.format(format, ...)}`)
		else
			print(`[{key}]`, format(...))
		end
	end
end

return createDebugLogger
