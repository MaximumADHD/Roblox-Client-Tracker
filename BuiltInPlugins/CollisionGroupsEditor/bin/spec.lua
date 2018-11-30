--[[
	Usage:
		lua bin/spec.lua

	Loads our project and all of its dependencies using Lemur, then runs tests
	using TestEZ.
]]

-- If you add any dependencies, add them to this table so they'll be loaded!
local LOAD_MODULES = {
	{"src", "CollisionGroupEditor"},
	{"modules/testez/lib", "TestEZ"},
}

-- This makes sure we can load libraries that depend on init.lua, like Lemur.
package.path = package.path .. ";?/init.lua"

-- If this fails, make sure you've cloned all Git submodules of this repo!
local lemur = require("modules.lemur")

-- A Habitat is an emulated DataModel from Lemur
local habitat = lemur.Habitat.new()

local Modules = lemur.Instance.new("Folder")
Modules.Name = "Modules"
Modules.Parent = habitat.game:GetService("ReplicatedStorage")

for _, module in ipairs(LOAD_MODULES) do
	local container = habitat:loadFromFs(module[1])
	container.Name = module[2]
	container.Parent = Modules
end

local TestEZ = habitat:require(Modules.TestEZ)

-- Run all tests, collect results, and report to stdout.
local results = TestEZ.TestBootstrap:run({ Modules.CollisionGroupEditor }, TestEZ.Reporters.TextReporter)

if results.failureCount > 0 then
	-- If something went wrong, explicitly terminate with a failure error code
	-- so that services like Travis-CI will know.
	os.exit(1)
end