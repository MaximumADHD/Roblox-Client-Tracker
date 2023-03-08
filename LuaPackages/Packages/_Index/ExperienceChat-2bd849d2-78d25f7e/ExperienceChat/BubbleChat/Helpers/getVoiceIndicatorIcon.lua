return function(getIcon, voiceState, level, folder)
	if getIcon then
		if voiceState == "Muted" or voiceState == "LOCAL_MUTED" then
			return getIcon("Muted", folder)
		elseif voiceState == "Connecting" then
			return getIcon("Connecting", folder)
		elseif voiceState == "Inactive" then
			return getIcon("Unmuted0", folder)
		elseif voiceState == "Talking" then
			local roundedLevel = 20 * math.floor(0.5 + 5 * level)
			return getIcon("Unmuted" .. tostring(roundedLevel), folder)
		else
			return getIcon("Error", folder)
		end
	else
		return ""
	end
end
