local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local Foundation = require(Packages.Foundation)

-- Cast to any because otherwise typechecker is angree about one or another branch
local Flags = Foundation.Utility.Flags :: any

return function()
	-- Turned out Flags are exposed only since 1.30.0
	if not Flags then
		local ok, result = pcall(function()
			return game:GetFastFlag("FoundationDisableStylingPolyfill")
		end)
		-- If flag is missing (not ok), let's keep the polyfill for the safety
		return not ok or not result
	end

	if Flags.FoundationDisableStylingPolyfill ~= nil then
		-- We are on > 1.33
		return not Flags.FoundationDisableStylingPolyfill
	end

	if Flags.FoundationStylingPolyfill ~= nil then
		-- We are on the older version of the Foundation
		return Flags.FoundationStylingPolyfill
	end

	-- Polyfill has been removed as of 1.73.0
	return false
end
