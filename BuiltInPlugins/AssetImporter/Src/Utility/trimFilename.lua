return function(fileName)
	local splitFilePath = fileName:split("/")
	return splitFilePath[#splitFilePath]
end
