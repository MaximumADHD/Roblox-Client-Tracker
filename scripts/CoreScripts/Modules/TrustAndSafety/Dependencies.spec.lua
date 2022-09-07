--!nonstrict
return function()
	local Dependencies = require(script.Parent.Dependencies)

	it("should require all dependencies without errors", function()
		for _, val in pairs(Dependencies) do
			local module = require(val)
		end
	end)
end
