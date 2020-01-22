return function()
	it("SHOULD initialize UIBlox when required", function()
		local LuaChatDeps = require(script.Parent)
		expect(LuaChatDeps.UIBlox.Config).to.be.ok()
	end)
end
