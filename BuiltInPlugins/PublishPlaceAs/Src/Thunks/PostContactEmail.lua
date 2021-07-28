return function(apiImpl, contactEmail, universeId)
	local responseCode = -1
	apiImpl.APIS.StudioModeration.contacts(universeId, contactEmail):makeRequest()
	:andThen(function(response)
		responseCode = response.responseCode
	end, function(response)
		responseCode = response.responseCode
	end):await()
	return responseCode
end
