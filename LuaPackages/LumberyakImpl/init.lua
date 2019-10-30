local enabled = game:DefineFastFlag("EnableLumberyak", false)

local Logger
if enabled then
    Logger = require(script.Logger)
else
    Logger = require(script.MockLogger)
end

return {
	Logger = Logger,
}
