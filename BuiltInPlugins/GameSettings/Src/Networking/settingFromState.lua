--[[
	Gets the user set setting from the current state.
	If the setting was queued for change by the user and not saved,
	this function will return the queued change. This allows the
	app to display what will happen when the user presses the save button.
]]

return function(settings, setting)
	if settings.Changed[setting] ~= nil then
		return settings.Changed[setting]
	else
		return settings.Current[setting]
	end
end