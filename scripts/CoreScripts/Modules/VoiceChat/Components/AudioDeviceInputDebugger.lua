local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)
local Roact = require(CorePackages.Packages.Roact)

local function AudioDeviceInputDebugger(
	props: {
		instances: { [AudioDeviceInput]: boolean },
		mutedPlayers: { [number]: boolean },
	}
)
	local instances = props.instances
	local mutedPlayers = props.mutedPlayers
	local height = 25
	local margin = 3
	return Roact.createElement(
		"ScreenGui",
		{
			AutoLocalize = false,
			DisplayOrder = 100,
			IgnoreGuiInset = true,
			OnTopOfCoreBlur = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		},
		Roact.createFragment(Cryo.List.map(Cryo.Dictionary.keys(instances), function(inst: AudioDeviceInput, i: number)
			local player = inst.Player
			return Roact.createElement("TextLabel", {
				Text = "ADI: " .. (if player then player.Name else "Unnamed") .. " " .. (if inst.Active
					then "Active "
					else "Inactive ") .. (if player and mutedPlayers[player.UserId]
					then "localmuted"
					else "not-localmuted"),
				Size = UDim2.fromOffset(200, height),
				AutomaticSize = Enum.AutomaticSize.X,
				Position = UDim2.fromOffset(10, i * (height + margin)),
			})
		end))
	)
end

return AudioDeviceInputDebugger
