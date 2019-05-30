return function()
	it("should be valid font palette without errors", function()
		local CorePackages = game:GetService("CorePackages")
		local UIBlox = require(CorePackages.UIBlox)
		local validateFont = UIBlox.Style.Validator.validateFont
		local Gotham = require(script.Parent.Gotham)
		assert(validateFont(Gotham))
	end)
end