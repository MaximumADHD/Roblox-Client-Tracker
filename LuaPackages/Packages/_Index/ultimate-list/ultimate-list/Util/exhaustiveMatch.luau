local function exhaustiveMatch(value: never): never
	error(`Unknown value in exhaustive match: {value}`)
end

return exhaustiveMatch
