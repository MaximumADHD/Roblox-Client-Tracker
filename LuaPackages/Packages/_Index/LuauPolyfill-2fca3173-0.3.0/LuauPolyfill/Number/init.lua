--!strict
return {
	isFinite = require(script.isFinite),
	isInteger = require(script.isInteger),
	isNaN = require(script.isNaN),
	isSafeInteger = require(script.isSafeInteger),
	MAX_SAFE_INTEGER = require(script.MAX_SAFE_INTEGER),
	MIN_SAFE_INTEGER = require(script.MIN_SAFE_INTEGER),
	NaN = 0 / 0,
	toExponential = require(script.toExponential),
}
