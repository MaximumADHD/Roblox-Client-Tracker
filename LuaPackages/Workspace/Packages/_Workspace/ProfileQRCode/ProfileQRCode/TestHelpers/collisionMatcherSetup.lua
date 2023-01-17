local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local JestGlobals = require(Packages.Dev.JestGlobals)
local CollisionMatchers = LuaSocialLibrariesDeps.CollisionMatchers
local expect = JestGlobals.expect

expect.extend(CollisionMatchers.Jest)
