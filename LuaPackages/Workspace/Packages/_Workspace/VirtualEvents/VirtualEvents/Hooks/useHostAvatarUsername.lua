local Players = game:GetService("Players")

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)

local function useHostAvatarUsername(hostId: number, mockPlayers: any?)
	Players = if mockPlayers then mockPlayers else Players

	local username, setUsername = React.useState("")

	React.useEffect(function()
		task.spawn(function()
			local newUsername = Players:GetNameFromUserIdAsync(hostId)
			if newUsername then
				setUsername(newUsername)
			end
		end)
	end, { hostId })

	return username
end

return useHostAvatarUsername
