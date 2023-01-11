local SocialTestHelpers = script:FindFirstAncestor("SocialTestHelpers")
local Packages = SocialTestHelpers.Parent
local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local RhodiumHelpers = require(Packages.RhodiumHelpers)

return function(toCheck: { [string]: any })
	return function(parent, config: { assertElementExists: boolean })
		local element = RhodiumHelpers.findFirstElement(parent, toCheck)
		if config.assertElementExists then
			expect(element).never.toBeNil()
			return element
		else
			expect(element).toBeNil()
			return nil
		end
	end
end
