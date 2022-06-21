local HttpService = game:GetService("HttpService")

return function(postBody, methodType)
	if methodType == "POST" or methodType == "PATCH" then
		if type(postBody) == "table" then
			return HttpService:JSONEncode(postBody)
		elseif type(postBody) == "string" then
			return postBody
		else
			error("Expected postBody to be a string or table")
		end
	end

	return nil
end
