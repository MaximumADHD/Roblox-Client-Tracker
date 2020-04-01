--[[
	A component that establishes a connection to a Roblox event when it is rendered.
]]

local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local EventConnection = Roact.Component:extend("EventConnection")

function EventConnection:init()
	self.connection = nil
end

--[[
	Render the child component so that EventConnections can be nested like so:

		Roact.createElement(EventConnection, {
			event = UserInputService.InputBegan,
			callback = inputBeganCallback,
		}, {
			Roact.createElement(EventConnection, {
				event = UserInputService.InputChanged,
				callback = inputChangedCallback,
			})
		})
]]
function EventConnection:render()
	return Roact.oneChild(self.props[Roact.Children])
end

function EventConnection:didMount()
	local event = self.props.event
	local callback = self.props.callback

	self.connection = event:Connect(callback)
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