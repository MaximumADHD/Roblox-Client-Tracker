--[[
    Determine whether a userId should be involved in a gradual rollout.

    Typically rolloutPercentage's value is from an FInt flag set in the interval [0, 100]
]]
return function(userId, rolloutPercentage)
	assert(typeof(userId) == "number", "userId must be a number")
	assert(userId % 1 == 0, "userId must be an integer")

	assert(typeof(rolloutPercentage) == "number", "rolloutPercentage must be a number")
	assert(rolloutPercentage % 1 == 0, "rolloutPercentage must be an integer")
	assert(rolloutPercentage >= 0, "rolloutPercentage must be >= 0")
	assert(rolloutPercentage <= 100, "rolloutPercentage must be <= 100")

	return (userId % 100) < rolloutPercentage
end
