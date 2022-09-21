local root = script

local HttpServiceMock = require(root.HttpServiceMock)
local Types = require(root.Types)

export type Headers = Types.Headers
export type Request = Types.Request
export type Response = Types.Response
export type RequestResult<R = Response> = Types.RequestResult<R>

return HttpServiceMock
