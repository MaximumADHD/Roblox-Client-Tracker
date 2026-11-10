-- TODO: replace with ReactUtils.createNextOrder once MaterialFramework takes a ReactUtils >=1.9 dependency.
local function createNextOrder()
	local order = 0
	return function()
		order += 1
		return order
	end
end

return createNextOrder
