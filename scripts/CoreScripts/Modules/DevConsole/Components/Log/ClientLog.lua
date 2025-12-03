local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local DataConsumer = require(script.Parent.Parent.DataConsumer)
local LogOutput = require(script.Parent.LogOutput)

local ClientLog = Roact.Component:extend("ClientLog")

function ClientLog:init()
	self.initClientLogData = function()
		return self.props.ClientLogData:getLogData()
	end
end
function ClientLog:render()
	return Roact.createElement(LogOutput, {
		layoutOrder = self.props.layoutOrder,
		size = self.props.size,
		initLogOutput = self.initClientLogData,
		targetSignal = self.props.ClientLogData:Signal(),
	})
end

return DataConsumer(ClientLog, "ClientLogData")
