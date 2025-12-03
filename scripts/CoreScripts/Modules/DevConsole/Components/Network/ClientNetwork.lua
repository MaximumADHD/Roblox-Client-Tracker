local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)
local NetworkView = require(script.Parent.NetworkView)

local ClientNetwork = Roact.Component:extend("ClientNetwork")

function ClientNetwork:init(props)
	self.state = {
		targetNetworkData = self.props.ClientNetworkData,
	}
end

function ClientNetwork:render()
	local layoutOrder = self.props.layoutOrder
	local searchTerm = self.props.searchTerm
	local size = self.props.size

	return Roact.createElement(NetworkView, {
		size = size,
		searchTerm = searchTerm,
		layoutOrder = layoutOrder,
		targetNetworkData = self.state.targetNetworkData,
	})
end

return DataConsumer(ClientNetwork, "ClientNetworkData")
