local PagedRequestCursor = {}

function PagedRequestCursor.createDefaultCursor()
	return {
		begin=true
	}
end

function PagedRequestCursor.createCursor(responseBody)
	if responseBody then
		return {
			nextPageCursor = responseBody.nextPageCursor
		}
	end
	return {}
end

function PagedRequestCursor.isNextPageAvailable(currentCursor)
	return (currentCursor.begin or currentCursor.nextPageCursor) and true or false
end

function PagedRequestCursor.getNextPageCursor(currentCursor)
	return currentCursor.nextPageCursor
end

return PagedRequestCursor