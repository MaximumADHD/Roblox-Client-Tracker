local function createGetFString(name: string, value: string): () -> string
	local success, problem = pcall(function()
		game:DefineFastString(name, value)
	end)

	if not success and problem:match("The current thread cannot call") then
		return function()
			return value
		end
	end

	return function()
		return game:GetFastString(name)
	end
end

return createGetFString
