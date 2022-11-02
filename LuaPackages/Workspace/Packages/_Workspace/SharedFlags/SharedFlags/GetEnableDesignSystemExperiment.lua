local Players = game:GetService("Players")

game:DefineFastString("DesignSystemExperimentUserList", "")

return function()
	local success, value = pcall(function()
		local localPlayer = Players.LocalPlayer
		local userIdList = game:GetFastString("DesignSystemExperimentUserList")

		if localPlayer then
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
