local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)
local MemoryView = require(Components.Memory.MemoryView)

local ClientMemory = Roact.Component:extend("ClientMemory")

function ClientMemory:render()
	return Roact.createElement(MemoryView, {
		layoutOrder = self.props.layoutOrder,
		size = self.props.size,
		searchTerm = self.props.searchTerm,
		targetMemoryData = self.props.ClientMemoryData,
	})
end

return DataConsumer(ClientMemory, "ClientMemoryData")