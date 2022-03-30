return function()
	local Context = require(script.Parent.Context)
	local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")

	if FFlagDevFrameworkUseCreateContext then
		it("should be a React context", function()
			expect(Context.Consumer).to.be.ok()
			expect(Context.Provider).to.be.ok()
		end)
	end
end
