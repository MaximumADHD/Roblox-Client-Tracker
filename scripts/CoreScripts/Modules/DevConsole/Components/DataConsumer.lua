local CorePackages = game:GetService("CorePackages")
local Components = script.Parent.Parent.Components

local Roact = require(CorePackages.Packages.Roact)
local Immutable = require(script.Parent.Parent.Immutable)
local DataContext = require(Components.DataContext)

return function(component, ...)
	if not component then
		error("Expected component to be passed to connection, got nil.")
	end

	local targetList = {}
	for i = 1, select("#", ...) do
		targetList[i] = select(i, ...)
	end

	local name = string.format("Consumer(%s)_DependsOn_%s", tostring(component), targetList[1])
	local DataConsumer = Roact.Component:extend(name)

	function DataConsumer:init()
		local contextTable = {}
		for _, dataName in pairs(targetList) do
			local contextualData = self.props.DevConsoleData[dataName]
			if not contextualData then
				local errorStr = string.format(
					"%s %s",
					tostring(dataName),
					"could not be found. Make sure DataProvider is above this consumer"
				)
				error(errorStr)
				return
			end
			contextTable[dataName] = contextualData
		end

		self:setState(contextTable)
	end

	function DataConsumer:render()
		local props = Immutable.JoinDictionaries(self.props.componentProps, self.state)
		return Roact.createElement(component, props)
	end

	local function DataConsumerWrapper(props)
		return Roact.createElement(DataContext.Consumer, {
			render = function(DevConsoleData)
				return Roact.createElement(DataConsumer, {
					componentProps = props,
					DevConsoleData = DevConsoleData,
				})
			end,
		})
	end

	return DataConsumerWrapper
end
