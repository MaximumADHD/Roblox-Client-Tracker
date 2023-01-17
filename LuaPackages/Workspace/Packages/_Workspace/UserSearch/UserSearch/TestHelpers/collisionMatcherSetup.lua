local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent
local LuaSocialLibrariesDeps = require(Packages.Dev.LuaSocialLibrariesDeps)
local JestGlobals = require(Packages.Dev.JestGlobals)
local CollisionMatchers = LuaSocialLibrariesDeps.CollisionMatchers
local expect = JestGlobals.expect

expect.extend(CollisionMatchers.Jest)
