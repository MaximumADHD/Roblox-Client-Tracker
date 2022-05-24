local CurrentModule = script

local exports = {
	expect = require(CurrentModule.expect),
	RobloxInstance = require(CurrentModule.RobloxInstance),
	dedent = require(CurrentModule.dedent).dedent,
}

local WriteableModule = require(CurrentModule.Writeable)
exports.Writeable = WriteableModule.Writeable
export type Writeable = WriteableModule.Writeable

local AssertionErrorModule = require(CurrentModule.AssertionError)

export type AssertionError = AssertionErrorModule.AssertionError

exports.AssertionError = AssertionErrorModule.AssertionError

return exports
