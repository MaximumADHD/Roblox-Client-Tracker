if game:GetFastFlag("LocalizationToolsUseRoactv14") then
	return require(script.roact)
else
	return require(script.old)
end
