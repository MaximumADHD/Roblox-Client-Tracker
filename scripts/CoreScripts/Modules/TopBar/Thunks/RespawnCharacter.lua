local Players = game:GetService("Players")

return function(store)
	local state = store:getState()

	if state.respawn.customCallback then
		state.respawn.customCallback:Fire()
	else
		local character = Players.LocalPlayer.Character
		if character ~= nil then
			-- For backwards compatibility with games that disable respawning
			-- by renaming the humanoid instance, we don't use FindFirstChildOfClass.
			local humanoid = character:FindFirstChild("Humanoid")
			if humanoid ~= nil and humanoid:IsA("Humanoid") then
				humanoid.Health = 0
			end
		end
	end
end