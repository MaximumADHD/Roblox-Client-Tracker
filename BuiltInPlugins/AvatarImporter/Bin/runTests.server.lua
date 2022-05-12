--!nocheck
-- TODO: jbousellam - remove with FFlagAvatarImporterDeduplicatePackages
local CorePackages = game:GetService("CorePackages")
local FFlagAvatarImporterDeduplicatePackages = game:GetFastFlag("AvatarImporterDeduplicatePackages")

local tests = script.Parent.Parent.src

local SHOULD_RUN_TESTS = false -- Do not check in as true!

if SHOULD_RUN_TESTS then
	local TestEZ = if FFlagAvatarImporterDeduplicatePackages then require(script.Parent.Parent.Packages.Dev.TestEZ) else require(CorePackages.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TextReporter = TestEZ.Reporters.TextReporterQuiet -- Remove Quiet to see output

	print("----- All " ..script.Parent.Parent.Name.. " Tests ------")
	require(script.Parent.defineLuaFlags)
	TestBootstrap:run({ tests }, TextReporter)
	print("----------------------------------")
end
