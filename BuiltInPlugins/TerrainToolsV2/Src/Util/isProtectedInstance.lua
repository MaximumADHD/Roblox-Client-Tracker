-- xpcall requires an error handler be passed as the 2nd parameter
-- But we don't need to handle the error so just use an empty function
local emptyFunction = function() end

return function(instance)
	local success = xpcall(function()
		local _ = instance.Name
	end, emptyFunction)

	if not success then
		return true
	end

	return false
end
