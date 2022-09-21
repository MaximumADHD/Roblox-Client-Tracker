local root = script

local Error = require(root.Error)
local LineWriter = require(root.LineWriter)
local PromiseType = require(root.PromiseType)
local getDefaultValue = require(root.getDefaultValue)
local unwrapPromiseError = require(root.unwrapPromiseError)

export type PromiseLike<T> = PromiseType.PromiseLike<T>

return {
	LineWriter = LineWriter,
	unwrapPromiseError = unwrapPromiseError,
	getDefaultValue = getDefaultValue,
	Error = Error.Error,
	try = Error.try,
}
