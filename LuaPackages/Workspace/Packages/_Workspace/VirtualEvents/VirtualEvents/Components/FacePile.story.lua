local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local FacePile = require(script.Parent.FacePile)

local USER_IDS = {
	957765952,
	35392,
	4416634,
	1893522417,
	1343930,
	29819622,
	1668748746,
	308199922,
}

local controls = {
	users = 8,
}

export type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local userIds: { string } = {}
		for i = 1, math.clamp(props.controls.users, 0, #USER_IDS) do
			table.insert(userIds, tostring(USER_IDS[i]))
		end

		return withMockProviders({
			FacePile = React.createElement(FacePile, {
				userIds = userIds,
			}),
		})
	end,
}
