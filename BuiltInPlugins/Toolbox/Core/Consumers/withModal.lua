local Plugin = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local ModalConsumer = require(Plugin.Core.Consumers.ModalConsumer)

return function(callback)
	return Roact.createElement(ModalConsumer, {
		render = callback,
	})
end
