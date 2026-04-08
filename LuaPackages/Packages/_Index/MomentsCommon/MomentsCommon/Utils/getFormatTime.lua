local function getFormatTime(seconds: number): string
	local minutes = math.floor(seconds / 60)
	local remainingSeconds = math.floor(seconds % 60)
	return string.format("%01d:%02d", minutes, remainingSeconds)
end

return getFormatTime
