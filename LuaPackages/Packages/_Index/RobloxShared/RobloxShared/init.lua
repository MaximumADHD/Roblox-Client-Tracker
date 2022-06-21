local CurrentModule = script

local exports = {
	expect = require(CurrentModule.expect),
	RobloxInstance = require(CurrentModule.RobloxInstance),
	dedent = require(CurrentModule.dedent).dedent,
}

local WriteableModule = require(CurrentModule.Writeable)
exports.Writeable = WriteableModule.Writeable
export type Writeable = WriteableModule.Writeable

return exports
