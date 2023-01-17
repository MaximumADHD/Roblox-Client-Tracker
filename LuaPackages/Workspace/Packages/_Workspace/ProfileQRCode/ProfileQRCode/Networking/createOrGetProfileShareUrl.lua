local setupRequest = require(script.Parent.setupCreateOrGetProfileShareUrl).setupRequest
local configuredRoduxNetworking = require(script.Parent.configuredRoduxNetworking)

return setupRequest(configuredRoduxNetworking)
