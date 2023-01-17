local QRCodeDisplay = script:FindFirstAncestor("QRCodeDisplay")
local Packages = QRCodeDisplay.Parent
local LuaSocialLibrariesDeps = require(Packages.Dev.LuaSocialLibrariesDeps)
local JestGlobals = require(Packages.Dev.JestGlobals)
local CollisionMatchers = LuaSocialLibrariesDeps.CollisionMatchers
local expect = JestGlobals.expect

expect.extend(CollisionMatchers.Jest)
