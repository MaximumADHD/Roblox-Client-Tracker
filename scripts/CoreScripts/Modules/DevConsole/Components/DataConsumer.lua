local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local Immutable = require(script.Parent.Parent.Immutable)

return function(component, ...)
	if not component then
		error("Expected component to be passed to connection, got nil.")
	end

	local targetList = {}
	for i = 1, select("#", ...) do
		targetList[i] = select(i, ...)
	end

	local name = string.format("Consumer(%s)_DependsOn_%s",tostring(component), targetList[1] )
	local DataConsumer = Roact.Component:extend(name)

	function DataConsumer:init()
		local contextTable = {}
		for _,dataName in pairs(targetList) do
			local contextualData = self._context.DevConsoleData[dataName]
			if not contextualData then
				local errorStr = string.format("%s %s",tostring(dataName),
					"could not be found. Make sure DataProvider is above this consumer"
				)
				error(errorStr)
				return
			end
			contextTable[dataName] = contextualData
		end

		self.state = contextTable
	end

	function DataConsumer:render()
		local props = Immutable.JoinDictionaries(self.props, self.state)
		return Roact.createElement(component, props)
	end

	return DataConsumer
end