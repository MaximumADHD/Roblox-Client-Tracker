local function createGetFFlag(name: string, value: boolean?): () -> boolean
	local success, problem = pcall(function()
		game:DefineFastFlag(name, if value then value else false)
	end)

	if not success and problem:match("The current thread cannot call") then
		return function()
			-- Debug flags are false, non-Debug flags are true
			return name:match("^Debug") == nil
		end
	end

	return function()
		return game:GetFastFlag(name)
	end
end

return createGetFFlag
