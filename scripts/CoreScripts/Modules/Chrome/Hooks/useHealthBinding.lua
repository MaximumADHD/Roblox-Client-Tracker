local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

function useHealthBinding()
	local bindingValue, setBindingValue = React.useBinding(0)

	React.useEffect(function()
		local humanoid: Humanoid? = nil
		local healthChangedConn: RBXScriptConnection? = nil
		local childAddedConn: RBXScriptConnection? = nil

		local maybePlayer: Player? = Players.LocalPlayer
		while not maybePlayer do
			Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
			maybePlayer = Players.LocalPlayer
		end
		local localPlayer: Player = maybePlayer :: Player

		local function updateHealthValue()
			local value = 0
			if humanoid and humanoid.MaxHealth > 0 then
				value = humanoid.Health / humanoid.MaxHealth
			end
			setBindingValue(value)
		end

		local function unobserveHumanoid()
			if childAddedConn then
				childAddedConn:Disconnect()
				childAddedConn = nil
			end
			if healthChangedConn then
				healthChangedConn:Disconnect()
				healthChangedConn = nil
			end
		end

		local function observeHumanoid()
			unobserveHumanoid()
			local character = localPlayer.Character
			if character then
				humanoid = character:FindFirstChildOfClass("Humanoid")
				if humanoid then
					healthChangedConn = humanoid.HealthChanged:Connect(updateHealthValue)
				else
					childAddedConn = character.ChildAdded:Connect(function(child: Instance)
						if child:isA("Humanoid") then
							observeHumanoid()
						end
					end)
				end
			end
			updateHealthValue()
		end

		local characterAddedConn = localPlayer.CharacterAdded:Connect(observeHumanoid)
		local characterRemovedConn = localPlayer.CharacterRemoving:Connect(observeHumanoid)
		observeHumanoid()

		return function()
			characterAddedConn:Disconnect()
			characterRemovedConn:Disconnect()
			unobserveHumanoid()
		end
	end, {})

	return bindingValue
end

return useHealthBinding
