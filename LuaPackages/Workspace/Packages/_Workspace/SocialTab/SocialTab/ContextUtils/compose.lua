local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local llama = dependencies.llama

return function(...)
	local args = { ... }
	return function(initialValue)
		return llama.List.reduceRight(args, function(value, nextFunc)
			return nextFunc(value)
		end, initialValue)
	end
end
