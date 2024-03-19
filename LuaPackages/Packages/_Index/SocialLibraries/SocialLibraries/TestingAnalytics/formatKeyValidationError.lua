--!strict

return function(key: string, expected: string, keyName: string)
	return string.format("%s should be %s. Issue with: %s", key, expected, keyName)
end
