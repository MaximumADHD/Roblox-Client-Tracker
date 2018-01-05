--[[
		A simple component that allows you to bind to RenderStep

		Props:
			name - the name of the bind
			priority - when during the render step to call the function
			callback - function that will be invoked on render step

		Usage:

			RenderCn = Roact.createElement(RenderStep, {
				name = "MyRenderStep",
				priority = Enum.RenderPriority.Input.Value,
				callback = function() print("stepping") end
			})
]]
local RunService = game:GetService("RunService")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local RenderStep = Roact.Component:extend("RenderStep")

function RenderStep:render()
	return nil
end

function RenderStep:didMount()
	RunService:BindToRenderStep(self.props.name, self.props.priority, self.props.callback)
end

function RenderStep:didUpdate(oldProps)
	if self.props.callback ~= oldProps.callback or self.props.name ~= oldProps.name then
		RunService:UnbindFromRenderStep(oldProps.name)
		RunService:BindToRenderStep(self.props.name, self.props.priority, self.props.callback)
	end
end

function RenderStep:willUnmount()
	RunService:UnbindFromRenderStep(self.props.name)
end

return RenderStep