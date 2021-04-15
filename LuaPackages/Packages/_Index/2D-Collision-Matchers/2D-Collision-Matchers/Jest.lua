local function makeJestCompatible(source)
	return function(_, ...)
		local returnValue = source(...)

		return {
			pass = returnValue.pass,
			message = function()
				return returnValue.message
			end,
		}
	end
end

return {
	toBeAbove = makeJestCompatible(require(script.Parent.above)),
	toBeAlignedHorizontally = makeJestCompatible(require(script.Parent.alignedHorizontally)),
	toBeAlignedVertically = makeJestCompatible(require(script.Parent.alignedVertically)),
	toBeBelow = makeJestCompatible(require(script.Parent.below)),
	toBeInside = makeJestCompatible(require(script.Parent.inside)),
	toBeInsideAbove = makeJestCompatible(require(script.Parent.insideAbove)),
	toBeInsideBelow = makeJestCompatible(require(script.Parent.insideBelow)),
	toBeInsideLeftOf = makeJestCompatible(require(script.Parent.insideLeftOf)),
	toBeInsideRightOf = makeJestCompatible(require(script.Parent.insideRightOf)),
	toBeLeftOf = makeJestCompatible(require(script.Parent.leftOf)),
	toBeRightOf = makeJestCompatible(require(script.Parent.rightOf)),
	toIntersect = makeJestCompatible(require(script.Parent.intersect)),
}
