-- Lua flag definitions should go in this file so that they can be used by both main and runTests
-- If the flags are defined in main, then it's possible for the tests run first
-- And then error when trying to use flags that aren't yet defined
game:DefineFastFlag("TerrainToolsV2WithContext", false)

game:DefineFastFlag("TerrainOpenCloseMetrics", false)
game:DefineFastFlag("TerrainToolsImportUploadAssets", false)
game:DefineFastFlag("TerrainToolsOutputIssue", false)
game:DefineFastFlag("TerrainToolsMoreOutputIssue", false)
game:DefineFastFlag("TerrainToolsGlobalState", false)
game:DefineFastFlag("TerrainToolsGlobalStateFixStrength", false)

local Plugin = script.Parent.Parent
local RefactorFlags = require(Plugin.Packages._Index.DeveloperFramework.DeveloperFramework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = true

local function handleFlagDependencies(flag, requiredFlags)
	if not game:GetFastFlag(flag) then
		return
	end

	for _, requiredFlag in ipairs(requiredFlags) do
		assert(game:GetFastFlag(requiredFlag),
			("FFlag%s requires FFlag%s to be on"):format(flag, requiredFlag))
	end
end

-- Need to explicitly return something from a module
-- Else you get an error "Module code did not return exactly one value"
return nil
