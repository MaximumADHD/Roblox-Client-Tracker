local function isEventValid(event: { [string]: any })
	if event.title == nil then
		return false
	elseif event.imageUrl == nil then
		return false
	elseif event.pagePath == nil then
		return false
	else
		return true
	end
end

return isEventValid
