-- Mockable surface to override warn behavior
local internalWarn = warn
local mockableWarn = setmetatable({
	mock = function(warnFn)
		internalWarn = warnFn
	end,
	unmock = function()
		internalWarn = warn
	end,
}, {
	__call = function(_, ...)
		internalWarn(...)
	end,
})

return mockableWarn
