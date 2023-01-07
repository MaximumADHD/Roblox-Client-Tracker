local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local expect = JestGlobals.expect

expect.extend(devDependencies.CollisionMatchers.Jest)
