--!strict
return {
	charCodeAt = require(script.charCodeAt),
	endsWith = require(script.endsWith),
	findOr = require(script.findOr),
	lastIndexOf = require(script.lastIndexOf),
	slice = require(script.slice),
	split = require(script.split),
	startsWith = require(script.startsWith),
	substr = require(script.substr),
	trim = require(script.trim),
	trimEnd = require(script.trimEnd),
	trimStart = require(script.trimStart),
	-- aliases for trimEnd and trimStart
	trimRight = require(script.trimEnd),
	trimLeft = require(script.trimStart),
}
