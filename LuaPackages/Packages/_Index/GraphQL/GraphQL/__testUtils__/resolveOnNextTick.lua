-- upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/__testUtils__/resolveOnNextTick.js

local Promise = require(script.Parent.Parent.Parent.Promise)

return function()
	-- ROBLOX deviation: Promise.resolve resolves immediately - defer guarantees next tick
	return Promise.defer(function(resolve)
		resolve(nil)
	end)
end
