-- upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/devAssert.js

local function devAssert(condition: any, message: string)
	if not condition then
		-- must set error level to zero otherwise msg includes stack
		error(message, 2)
	end
end

return {
	devAssert = devAssert,
}
