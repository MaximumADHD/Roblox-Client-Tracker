--!nonstrict
local CorePackages = game:GetService("CorePackages")

return function()
	beforeAll(function(context)
		local Rhodium = require(CorePackages.Rhodium)
		context.Rhodium = {
			Element = Rhodium.Element,
			XPath = Rhodium.XPath,
			VirtualInput = Rhodium.VirtualInput,
		}
	end)
end
