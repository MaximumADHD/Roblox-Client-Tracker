local Root = script.Parent.Parent
local Promise = require(Root.Promise)

local function getPremiumUpsellPrecheck(network)
	return network.getPremiumUpsellPrecheck()
		:andThen(function(results)
			return Promise.resolve(true)
		end)
		:catch(function(failure)
			return Promise.resolve(false)
		end)
end

return getPremiumUpsellPrecheck