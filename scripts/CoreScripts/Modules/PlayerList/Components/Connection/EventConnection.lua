local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local EventConnection = Roact.Component:extend("EventConnection")

function EventConnection:init()
	self.connection = nil
end

function EventConnection:didMount()
	self.connection = self.props.event:Connect(self.props.callback)
end

function EventConnection:render()
	return nil
end

function EventConnection:didUpdate(oldProps)
	if self.props.event ~= oldProps.event or self.props.callback ~= oldProps.callback then
		self.connection:Disconnect()

		self.connection = self.props.event:Connect(self.props.callback)
	end
end

function EventConnection:willUnmount()
	self.connection:Disconnect()

	self.connection = nil
end

return EventConnection