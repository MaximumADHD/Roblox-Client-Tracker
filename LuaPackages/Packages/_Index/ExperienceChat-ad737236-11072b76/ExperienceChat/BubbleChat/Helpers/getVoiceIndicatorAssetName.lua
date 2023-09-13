return function(voiceState: any, level: number, iconStyle: string)
	local assetName: string
	local prefix = "icons/controls/voice/"

	if voiceState == "Muted" or voiceState == "LOCAL_MUTED" then
		assetName = prefix .. iconStyle .. "_off_light"
	elseif voiceState == "Inactive" or voiceState == "Connecting" then
		assetName = prefix .. iconStyle .. "_0_light"
	elseif voiceState == "Talking" then
		local roundedLevel = 20 * math.floor(0.5 + 5 * level)
		assetName = prefix .. iconStyle .. "_" .. tostring(roundedLevel) .. "_light"
	else
		assetName = prefix .. iconStyle .. "_error_light"
	end

	return assetName
end
