return function(headers, methodType)
	local resultHeader = headers or {}
	if methodType == "POST" or methodType == "PATCH" then
		if not resultHeader["Content-Type"] then
			resultHeader["Content-Type"] = "application/json"
		end
	end

	return resultHeader
end
