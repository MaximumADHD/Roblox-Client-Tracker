return function()
	local getFontFromName = require(script.Parent.getFontFromName)
	local Constants = require(script.Parent.Parent.Constants)
	it("should be able to get a font palette without errors", function()
		local fontMap = {
			[Constants.FontName.Gotham] = require(script.Parent.Gotham),
		}
		local fontTable = getFontFromName(Constants.FontName.Gotham, Constants.FontName.Gotham, fontMap)
		expect(fontTable).to.be.a("table")
	end)

	it("should be able to get a font palette using default without errors", function()
		local fontMap = {
			[Constants.FontName.Gotham] = require(script.Parent.Gotham),
		}
		local fontTable = getFontFromName("sourceSans", Constants.FontName.Gotham, fontMap)
		expect(fontTable).to.be.a("table")
	end)

	it("should throw the font palette is invalid", function()
		expect(function()
			local fontMap = {
				[Constants.FontName.Gotham] = {
					Font = {
						Font = Enum.Font.Gotham,
						RelativeSize = 1,
					},
				},
			}
			getFontFromName(Constants.FontName.Gotham, Constants.FontName.Gotham, fontMap)
		end).to.throw()
	end)
end