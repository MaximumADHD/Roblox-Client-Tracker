--[[
	Defines utilities for working with 'list-like' tables.
]]

return {
	getRange = require(script.getRange),
	find = require(script.find),
	filterMap = require(script.filterMap),
	filter = require(script.filter),
	foldLeft = require(script.foldLeft),
	foldRight = require(script.foldRight),
	join = require(script.join),
	removeIndex = require(script.removeIndex),
	removeRange = require(script.removeRange),
	removeValue = require(script.removeValue),
	map = require(script.map),
	reverse = require(script.reverse),
}