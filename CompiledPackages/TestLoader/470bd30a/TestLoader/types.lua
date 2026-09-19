export type DebugFlags = {
	EnableRoactConfigs: boolean?,
	LogTestsQuiet: boolean?,
	RunDeveloperFrameworkTests: boolean?,
	RunUnitTests: boolean?,
	RunRhodiumTests: boolean?,
	MountAssetReactTree: boolean?,

	-- DEPRECATED: This is for Jest 2 tests. Moving forward all new plugins
	-- should be using RunUnitTests instead. This flag will exist for some time
	-- as it's non-trivial to migrate all existing Jest 2 tests to Jest 3, and
	-- there exist hybrid workflows using both Jest versions while migrating.
	RunTests: boolean?,

	-- DEPRECATED: Use RunDeveloperFrameworkTests instead
	RunDevFrameworkTests: boolean?,
}

return nil
