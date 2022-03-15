--[[
	Used for running a test with a FastInt set. Reference withFlag for usages.
]]
local function withInt(fintName, value, callback)
	local oldValue = game:SetFastIntForTesting(fintName, value)
	local success, message = pcall(callback)

	game:SetFastIntForTesting(fintName, oldValue)

	assert(success, message)
end

return withInt
