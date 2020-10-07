return function()
	it("should require without errors", function()
		local AvatarEditorPrompts = require(script.Parent)
		expect(AvatarEditorPrompts).to.be.ok()
	end)
end
