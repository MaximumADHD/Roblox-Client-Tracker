-- Asserts a condition only in development mode (`_G.__DEV__`). Use for prop-misuse checks that
-- should surface loudly to developers but never throw for end users in production.
local function devAssert(condition: unknown, message: string): ()
	if _G.__DEV__ == true then
		assert(condition, message)
	end
end

return devAssert
