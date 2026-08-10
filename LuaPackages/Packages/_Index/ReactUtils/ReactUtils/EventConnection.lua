--[[
	A component that establishes a connection to a Roblox event when it is rendered.
]]

local ReactUtils = script:FindFirstAncestor("ReactUtils")

local Packages = ReactUtils.Parent
local GoodSignal = require(Packages.GoodSignal)

local useEventConnection = require(script.Parent.useEventConnection)

--[[
	Example usage:

	React.createElement(EventConnection, {
		event = UserInputService.InputBegan,
		callback = inputBeganCallback,
	})
]]

export type Props = {
	event: RBXScriptSignal | GoodSignal.Signal<any>,
	callback: (any) -> (),
}

local function EventConnection(props: Props)
	useEventConnection(props.event, props.callback, { props.event, props.callback } :: { any })
end

return EventConnection
