--[[
	Defines utilities for working with 'dictionary-like' tables.

	Dictionaries can be indexed by any value, but don't have the ordering
	expectations that lists have.
]]

return {
	equals = require(script.equals),
	filter = require(script.filter),
	join = require(script.join),
	keys = require(script.keys),
	map = require(script.map),
	omit = require(script.omit),
	union = require(script.union),
	values = require(script.values),
}
