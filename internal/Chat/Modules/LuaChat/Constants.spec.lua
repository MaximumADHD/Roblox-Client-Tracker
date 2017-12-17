return function()
	local Constants = require(script.Parent.Constants)

	describe("Platforms", function()
		it("should each contain the same keys", function()
			for _, constants in pairs(Constants.Platforms) do
				for constant in pairs(constants) do
					for _, otherConstants in pairs(Constants.Platforms) do
						expect(otherConstants[constant]).to.be.ok()
					end
				end
			end
		end)
	end)
end