local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact

return function(context)
	return function(renderCallback)
		assert(type(renderCallback) == "function", "Expect renderCallback to be a function.")
		return Roact.createElement(context.Consumer, { render = renderCallback })
	end
end
