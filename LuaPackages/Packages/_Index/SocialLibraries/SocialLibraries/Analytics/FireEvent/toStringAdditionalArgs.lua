--!strict
local SocialLibraries = script.Parent.Parent.Parent
local dependencies = require(SocialLibraries.dependencies)
local tutils = dependencies.tutils
local llama = dependencies.llama

return function(additionalArgs)
	if llama.isEmpty(additionalArgs) then
		return "{}"
	end

	local result, _ = string.gsub(" args: " .. tutils.toString(additionalArgs), "%s+", " ")
	return result
end
