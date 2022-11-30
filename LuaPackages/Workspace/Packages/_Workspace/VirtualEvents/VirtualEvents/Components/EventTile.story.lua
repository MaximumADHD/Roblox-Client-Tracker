local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Rodux = require(VirtualEvents.Parent.Rodux)
local React = require(VirtualEvents.Parent.React)
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local installReducer = require(VirtualEvents.installReducer)
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventTile = require(script.Parent.EventTile)

local getFFlagEnableVirtualEvents = require(VirtualEvents.Parent.SharedFlags).getFFlagEnableVirtualEvents

local reducer = Rodux.combineReducers({
	VirtualEvents = installReducer(),
})

local controls = {
	universeId = 3531439676,
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = if getFFlagEnableVirtualEvents() then controls else nil,
	story = function(props: Props)
		if getFFlagEnableVirtualEvents() then
			local mockVirtualEvent = VirtualEventModel.mock("1")
			mockVirtualEvent.universeId = props.controls.universeId

			local store = Rodux.Store.new(reducer, nil, {
				Rodux.thunkMiddleware,
			})

			return withMockProviders({
				EventTile = React.createElement(EventTile, {
					imageUrl = "rbxassetid://1269231654",
					context = mockVirtualEvent,
					onActivated = print,
					size = UDim2.fromOffset(16 * 30, 9 * 30),
				}),
			}, {
				store = store,
			})
		else
			return withMockProviders({
				EventTile = React.createElement(EventTile, {
					imageUrl = "rbxassetid://1269231654",
					context = {
						name = "Event",
						title = "Event",
						pagePath = "/sponsored/event",
						url = "/sponsored/event",
					},
				}),
			})
		end
	end,
}
