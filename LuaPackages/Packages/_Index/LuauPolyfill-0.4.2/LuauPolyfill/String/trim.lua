--!strict

local trimStart = require(script.Parent.trimStart)
local trimEnd = require(script.Parent.trimEnd)

return function(source: string): string
	return trimStart(trimEnd(source))
end
