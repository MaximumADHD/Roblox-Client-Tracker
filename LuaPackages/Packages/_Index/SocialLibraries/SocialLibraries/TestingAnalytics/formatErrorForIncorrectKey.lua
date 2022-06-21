return function(tableConfig)
	return function(value, keyName)
		local state, message = tableConfig(value)
		if state == false then
			return state, message .. ". Issue with: " .. keyName
		end

		return state
	end
end
