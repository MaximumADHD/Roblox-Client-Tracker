local loadingInProgress = newproxy(true)

getmetatable(loadingInProgress).__tostring = function()
	return "Symbol(LoadingInProgress)"
end

return loadingInProgress
