local Plugin = script.Parent.Parent.Parent
local Packages = Plugin.Packages

local createMainReducer = require(script.Parent.createMainReducer)
local Rodux = require(Packages.Rodux)
local withFlag = require(Plugin.Src.TestHelpers.withFlag)

return function()
	local function runTest(expectedKeys, customPolicyFastFlagEnabled)
		it("should combine all of its reducers when custom policy fast flag is " .. tostring(customPolicyFastFlagEnabled), function()
			withFlag("PlayerEmulatorCustomPoliciesToggleEnabledUIChanges2", customPolicyFastFlagEnabled, function()
				local r = Rodux.Store.new(createMainReducer())
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
