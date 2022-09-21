local Error = require(script.Error)
local try = require(script.try)

export type Error = Error.Error

return {
	Error = Error,
	try = try,
}
