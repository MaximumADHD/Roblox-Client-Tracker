return function(networkImpl)
	return {
		Develop = require(script.Develop)(networkImpl),
		Studio = require(script.Studio)(networkImpl),
	}
end