return function()
	local getTranslator = require(script.Parent.getTranslator)
	it("should return a valid Localization mock in unit tests", function()
		expect(getTranslator()).to.be.ok()
		expect(getTranslator().FormatByKey).to.be.ok()
	end)
end