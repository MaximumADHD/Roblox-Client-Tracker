if game:GetFastFlag("GameSettingsUseRoactv14") then
	return require(script.roact)
else
	return require(script.lib)
end
