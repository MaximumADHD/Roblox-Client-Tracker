local DEBUG = false

local function debugPrint(...)
	if DEBUG then
		print(...)
	end
end

return debugPrint