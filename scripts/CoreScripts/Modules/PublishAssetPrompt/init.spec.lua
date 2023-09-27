return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("should require without errors", function()
		local PublishAssetPrompt = require(script.Parent)
		expect(PublishAssetPrompt).never.toBeNil()
	end)
end
