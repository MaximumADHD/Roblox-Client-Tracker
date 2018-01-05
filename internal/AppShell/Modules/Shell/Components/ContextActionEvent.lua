--[[
		A simple component that allows you to bind to ContextActionService at CoreScript level

		Props
			name - the name of the binded action
			callback - the function that is invoked
			binds - the input that triggers the action
				this is a table - example { Enum.KeyCode.ButtonA, Enum.KeyCode.ButtonX }

		Usage:
			ContextActionCn = Roact.createElement(ContextActionEvent, {
				name = "MyContextActionBind",
				callback = function() print("context event") end,
				binds = { Enum.KeyCode.Thumbstick2, Enum.KeyCode.ButtonB, Enum.KeyCode.A },
			}),

		Note: Cannot currently write a unit test for this component because it uses functions that
		are RobloxScript security. LuaCore team is looking into a solution for this
]]
local ContextActionService = game:GetService("ContextActionService")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local ContextActionEvent = Roact.Component:extend("ContextActionEvent")

function ContextActionEvent:render()
	return nil
end

function ContextActionEvent:didMount()
	ContextActionService:BindCoreAction(self.props.name, self.props.callback, false, unpack(self.props.binds))
end

function ContextActionEvent:didUpdate(oldProps)
	if self.props.callback ~= oldProps.callback or self.props.name ~= oldProps.name then
		ContextActionService:UnbindCoreAction(oldProps.name)
		ContextActionService:BindCoreAction(self.props.name, self.props.callback, false, unpack(self.props.binds))
	end
end

function ContextActionEvent:willUnmount()
	ContextActionService:UnbindCoreAction(self.props.name)
end

return ContextActionEvent
