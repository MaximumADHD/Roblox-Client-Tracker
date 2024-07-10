--[[
	A component that establishes a connection to a Roblox event when it is rendered.
]]
local useEventConnection = require(script.Parent.useEventConnection)

--[[
	Example usage:

	React.createElement(EventConnection, {
		event = UserInputService.InputBegan,
		callback = inputBeganCallback,
	})
]]

export type Props = {
	event: RBXScriptSignal,
	callback: (any) -> (),
}

local function EventConnection(props: Props)
	useEventConnection(props.event, props.callback, { props.event, props.callback } :: { any })
end

return EventConnection
