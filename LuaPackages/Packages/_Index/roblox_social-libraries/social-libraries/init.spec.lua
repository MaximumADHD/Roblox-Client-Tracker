local SocialLibraries = script:FindFirstAncestor("social-libraries")
require(SocialLibraries).config({ UIBloxConfig = {} })

return function()
	beforeAll(function(context)
		context.UnitTestHelpers = require(script.parent:FindFirstChild("__tests__").UnitTestHelpers.api)
		context.RhodiumHelpers = require(script.parent:FindFirstChild("__tests__").RhodiumHelpers.api)
	end)
end
