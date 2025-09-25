--[[
	nelderMead.lua is an implementation of the Nelder-Mead algorithm
	https://people.duke.edu/~hpgavin/SystemID/CourseNotes/Nelder-Mead-2D.pdf
	The NelderMead object takes an n dimensional simplex consisting of n+1 vectors, an object function to score each vector in the simplex,
	and a terminate function to decide when the solution has converged enough or run out of iterations.
]]

local root = script.Parent.Parent

local FloatVector = require(root.util.FloatVector)

type FloatVector = FloatVector.FloatVector
type NelderMeadMembers = {
	simplex: { FloatVector },
	objectFunction: (FloatVector) -> number,
	terminateFunction: ({ FloatVector }, number) -> boolean,
}

local NelderMead = {}
NelderMead.__index = NelderMead

export type NelderMead = typeof(setmetatable({} :: NelderMeadMembers, NelderMead))

function NelderMead.new(
	initialSimplex: { FloatVector },
	objectFunction: (FloatVector) -> number,
	terminateFunction: ({ FloatVector }, number) -> boolean
): NelderMead
	local new: NelderMead = setmetatable({} :: NelderMeadMembers, NelderMead)
	-- check all vectors are same dimension
	if initialSimplex and #initialSimplex > 0 then
		local first = initialSimplex[1] :: FloatVector
		for _, vector in initialSimplex do
			if not first:checkCompatible(vector) then
				error("initial simplex has vectors that are not compatible")
			end
		end
	else
		error("must provide an initial simplex")
	end

	new.simplex = {}
	for _, vector in initialSimplex :: { FloatVector } do
		table.insert(new.simplex, FloatVector.new(vector))
	end
	new.objectFunction = objectFunction
	new.terminateFunction = terminateFunction
	return new
end

function NelderMead.evaluate(self: NelderMead)
	local simplex = self.simplex

	local costCache = {}
	local objectFunction = function(vertex)
		local cachedValue = costCache[vertex]
		if not cachedValue then
			cachedValue = self.objectFunction(vertex)
			costCache[vertex] = cachedValue
		end
		return cachedValue
	end

	local iterationCount = 0
	while not self.terminateFunction(simplex, iterationCount) do
		costCache = {}
		-- sort simplex by cost
		table.sort(simplex, function(lhs, rhs)
			return objectFunction(lhs) < objectFunction(rhs)
		end)

		local worst = simplex[#simplex]
		-- reflect about centroid
		local zeroTable = {}
		for _i = 1, simplex[1]:getSize(), 1 do
			table.insert(zeroTable, 0)
		end
		local centroid = FloatVector.new(zeroTable)
		for i = 1, #simplex - 1, 1 do
			centroid += simplex[i]
		end
		centroid = centroid / (#simplex - 1)

		local toCentroid = centroid - worst
		local reflected = worst + (toCentroid * 2)
		local reflectedCost = objectFunction(reflected)

		-- replace worst if reflected is better than next-to-worst but not best
		if objectFunction(simplex[1]) < reflectedCost and reflectedCost < objectFunction(simplex[#simplex - 1]) then
			simplex[#simplex] = reflected
		elseif reflectedCost < objectFunction(simplex[1]) then -- replace worst with reflected or extended if better than best
			local extended = reflected + toCentroid
			local extendedCost = objectFunction(extended)
			if extendedCost < reflectedCost then
				simplex[#simplex] = extended
			else
				simplex[#simplex] = reflected
			end
		else -- else try contracting from reflected and worst toward centroid
			local contractedInside = worst + (toCentroid * 0.5)
			local contractedOutside = worst + (toCentroid * 1.5)
			local betterContracted = nil
			if objectFunction(contractedInside) < objectFunction(contractedOutside) then
				betterContracted = contractedInside
			else
				betterContracted = contractedOutside
			end
			if objectFunction(betterContracted) < objectFunction(simplex[#simplex - 1]) then
				simplex[#simplex] = betterContracted
			else
				-- if contracted were not better, shrink toward best
				for i = 1, #simplex, 1 do
					simplex[i] = (simplex[i] - simplex[1]) * 0.8 + simplex[1]
				end
			end
		end

		iterationCount += 1
	end
end

function NelderMead.calculateMaxLengthBetweenVertices(simplex: { [number]: FloatVector })
	local maxLength = 0.0
	for i = 1, #simplex - 1, 1 do
		for j = i + 1, #simplex, 1 do
			local diff = simplex[j] - simplex[i]
			local length = diff:magnitude()
			maxLength = math.max(maxLength, length)
		end
	end

	return maxLength
end

return NelderMead
