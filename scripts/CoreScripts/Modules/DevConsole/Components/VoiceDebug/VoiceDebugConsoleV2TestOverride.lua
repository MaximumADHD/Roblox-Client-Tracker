--!strict

-- Test-only override consulted by GetFFlagVoiceDebugConsoleV2. Specs that need to force the V1
-- (flag-off) path can't do that via SetFastFlagForTesting alone once the engine feature is enabled
-- in the build they run against, since the getter's OR would still resolve true. A separate module
-- (rather than a field on the getter itself) keeps the getter a plain callable function, since Luau
-- can't typecheck call sites of a __call-metatable table as a function.
local override: boolean? = nil

local function get(): boolean?
	return override
end

local function setForTesting(value: boolean?): boolean?
	local old = override
	override = value
	return old
end

return {
	get = get,
	setForTesting = setForTesting,
}
