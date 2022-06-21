--!strict
export type Object = { [string]: any }

return {
	assign = require(script.assign),
	entries = require(script.entries),
	freeze = require(script.freeze),
	is = require(script.is),
	isFrozen = require(script.isFrozen),
	keys = require(script.keys),
	preventExtensions = require(script.preventExtensions),
	seal = require(script.seal),
	values = require(script.values),
	-- Special marker type used in conjunction with `assign` to remove values
	-- from tables, since nil cannot be stored in a table
	None = require(script.None),
}
