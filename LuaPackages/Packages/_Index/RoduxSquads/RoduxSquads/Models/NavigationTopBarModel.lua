local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Packages = RoduxSquad.Parent

local t = require(Packages.t)

local NavigationTopBarModel = {}

function NavigationTopBarModel.new(args)
	assert(NavigationTopBarModel.isValid(args))

	NavigationTopBarModel.__index = NavigationTopBarModel

	local self = args

	setmetatable(self, NavigationTopBarModel)

	return self
end

function NavigationTopBarModel.mock(mergeTable)
	mergeTable = mergeTable or {}

	local self = NavigationTopBarModel.new({
		topBarOpacity = mergeTable.topBarOpacity or 0.5,
	})

	return self
end

function NavigationTopBarModel.format(navigationTopBarData)
	local self = NavigationTopBarModel.new({
		topBarOpacity = navigationTopBarData.topBarOpacity,
	})

	return self
end

NavigationTopBarModel.isValid = t.strictInterface({
	topBarOpacity = t.number,
})

return NavigationTopBarModel
