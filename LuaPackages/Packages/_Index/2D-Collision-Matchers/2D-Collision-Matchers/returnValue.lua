return function(bool, messagePass, messageFail)
	return {
		pass = bool,
		message = bool and messagePass or messageFail or messagePass,
	}
end
