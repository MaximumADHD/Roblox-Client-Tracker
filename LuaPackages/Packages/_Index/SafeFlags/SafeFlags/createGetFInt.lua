local function createGetFInt(name: string, value: number): () -> number
	local success, problem = pcall(function()
		game:DefineFastInt(name, value)
	end)

	if not success and problem:match("The current thread cannot call") then
		return function()
			return value
		end
	end

	return function()
		return game:GetFastInt(name)
	end
end

return createGetFInt
