
local Dictionary = require(script.Parent.Dictionary)

local Set = {
	add = require(script.add),
	has = require(script.has),
	intersect = require(script.intersect),
	subtract = require(script.subtract),
	toList = require(script.toList),
	union = require(script.union),

	copy = Dictionary.copy,
}

return Set