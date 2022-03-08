--[[
	Defines utilities for working with 'dictionary-like' tables.

	Dictionaries can be indexed by any value, but don't have the ordering
	expectations that lists have.
]]

return {
	join = require(script.join),
	fold = require(script.fold),
	values = require(script.values),
	keys = require(script.keys),
}