local FFlagAssetConfigDynamicDistributionQuotas2 = game:GetFastFlag("AssetConfigDynamicDistributionQuotas2")

local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local pollUntil = if FFlagAssetConfigDynamicDistributionQuotas2 then Framework.Util.pollUntil else nil

local TestHelpers = {}

function TestHelpers.createMockStudioStyleGuideColor()
	local mock = {}
	setmetatable(mock, {
		__index = function()
			return Color3.new(math.random(), math.random(), math.random())
		end,
	})
	return mock
end

function TestHelpers.createMockStudioStyleGuideModifier()
	local mock = {}
	setmetatable(mock, {
		__index = function()
			return nil
		end,
	})
	return mock
end

if FFlagAssetConfigDynamicDistributionQuotas2 then
	-- Given a function which throws if it fails, *blocking* poll it until it doesn't fail, or
	-- stopAfterSeconds is exceeded, in which case we re-throw the last error from the function
	function TestHelpers.pollAssertionUntil(fn: () -> boolean, stopAfterSeconds: number?)
		local lastError

		return pollUntil(function()
			local ok, err = pcall(fn)

			if ok then
				lastError = nil
				return true
			else
				lastError = err
				return false
			end
		end, stopAfterSeconds)
			:catch(function()
				error(
					string.format(
						"pollAssertionUntil failed after %ds:\n%s",
						stopAfterSeconds or 1,
						tostring(lastError)
					)
				)
			end)
			:await()
	end
end

return TestHelpers
