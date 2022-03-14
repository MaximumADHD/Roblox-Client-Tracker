local DEBUG = false

local function debugPrint(_, ...)
	if DEBUG then
		print(...)
	end
end

return setmetatable({
	isEnabled = DEBUG,
}, {
	__call = debugPrint,
})