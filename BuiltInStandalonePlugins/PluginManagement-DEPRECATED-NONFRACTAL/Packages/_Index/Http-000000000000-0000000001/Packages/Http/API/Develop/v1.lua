return function(networkingImpl)
	return {
		Plugins = require(script.Plugins)(networkingImpl)
	}
end