local Players = game:GetService("Players")

game:DefineFastString("DesignSystemExperimentUserList", "")

return function()
	local success, value = pcall(function()
		local localPlayer = Players.LocalPlayer
		if localPlayer then
			local userIdList = game:GetFastString("DesignSystemExperimentUserList")
			for userId in userIdList:gmatch("%d+") do
				if tonumber(userId) == localPlayer.UserId then
					return true
				end
			end
		end

		return false
	end)

	if success then
		return value
	end

	return false
end
