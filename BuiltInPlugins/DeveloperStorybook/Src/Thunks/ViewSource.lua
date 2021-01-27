--[[
	Opens the source of a component in the script editor in Studio.
]]

return function(plugin, component)
	return function(store)
		if component then
			plugin:OpenScript(component)
		end
	end
end
