local Plugin = script.Parent.Parent.Parent
local Packages = Plugin.Packages

local MainReducer = require(script.Parent.MainReducer)
local Rodux = require(Packages.Rodux)
local withFlag = require(Plugin.Src.TestHelpers.withFlag)

return function()
	local function runTest(expectedKeys, customPolicyFastFlagEnabled)
		withFlag("PlayerEmulatorCustomPoliciesToggleEnabledUIChanges", customPolicyFastFlagEnabled, function()
			it("should combine all of its reducers when custom policy fast flag is " .. customPolicyFastFlagEnabled, function()
				local r = Rodux.Store.new(MainReducer)
				expect(r).to.be.ok()

				local state = r:getState()
				expect(state).to.be.ok()

				for _, childReducerName in ipairs(expectedKeys) do
					expect(state[childReducerName]).to.be.ok()
				end
			end)
		end)
	end
	
	runTest({"MainSwitch","Languages","CountryRegion","Policies"}, false)
	runTest({"MainSwitch","Languages","CountryRegion","CustomPolicySwitch","Policies"}, true)
end
