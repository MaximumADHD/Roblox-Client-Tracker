--!strict
local function createUnimplemented<T...>(name: string): () -> T...
	return function()
		error(`Calling unimplemented function {name}`)
	end
end

return createUnimplemented
