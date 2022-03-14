return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local formatAlias = require(script.Parent.formatAlias)

	it("SHOULD return proper alias formatted", function()
		jestExpect(formatAlias("joe")).toBe("(joe)")
		jestExpect(formatAlias("%s")).toBe("(%s)")
		jestExpect(formatAlias("(((*hi*)))")).toBe("((((*hi*))))")
		jestExpect(formatAlias("()")).toBe("(())")
		jestExpect(formatAlias("0")).toBe("(0)")
	end)

end
