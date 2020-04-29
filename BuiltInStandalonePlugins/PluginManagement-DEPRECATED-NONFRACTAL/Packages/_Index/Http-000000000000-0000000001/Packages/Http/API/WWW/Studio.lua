return function(networkImpl)
	return {
		Plugins = require(script.Plugins)(networkImpl),
	}
end