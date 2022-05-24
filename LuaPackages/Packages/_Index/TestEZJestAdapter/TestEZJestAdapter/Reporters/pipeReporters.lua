local CurrentModule = script.Parent
local Packages = CurrentModule.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Reporter = {
	report: (node: any) -> (),
}

local function pipeReporters(reporters: Array<Reporter>)
	return {
		report = function(...)
			for _, reporter in ipairs(reporters) do
				reporter.report(...)
			end
		end,
	}
end

return pipeReporters
