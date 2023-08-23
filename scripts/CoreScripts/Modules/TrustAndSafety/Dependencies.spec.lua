--!nonstrict
return function()
	it("should require all dependencies without errors", function()
		local Dependencies = require(script.Parent.Dependencies)
		for _, val in pairs(Dependencies) do
			-- Skip already required modules
			if typeof(val) ~= 'function' and typeof(val) ~= 'table' then
				local module = require(val)
			end
		end
	end)
end
