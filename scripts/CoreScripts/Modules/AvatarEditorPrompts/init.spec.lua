return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("should require without errors", function()
		local AvatarEditorPrompts = require(script.Parent)
		expect(AvatarEditorPrompts).never.toBeNil()
	end)
end
