return function()
	it("should require without errors", function()
		local PublishAssetPrompt = require(script.Parent)
		expect(PublishAssetPrompt).to.be.ok()
	end)
end
