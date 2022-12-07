return function(state, universeId): string
	local icon = state.GameIcons[universeId]
	if icon then
		return icon.url
	end

	return ""
end
