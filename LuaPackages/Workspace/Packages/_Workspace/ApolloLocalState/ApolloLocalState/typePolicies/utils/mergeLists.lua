local Packages = script:FindFirstAncestor("ApolloLocalState").Parent
local Array = require(Packages.LuauPolyfill).Array

return function(existing, incoming)
	existing = existing or {}
	incoming = incoming or {}

	if #incoming == 0 then
		return existing
	end
	if #existing == 0 then
		return incoming
	end

	return Array.concat(table.clone(existing), incoming)
end
