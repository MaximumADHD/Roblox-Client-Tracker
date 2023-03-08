local FFlagUserVRPlaySeatedStanding do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserVRPlaySeatedStanding")
	end)
	FFlagUserVRPlaySeatedStanding = success and result
end

return FFlagUserVRPlaySeatedStanding