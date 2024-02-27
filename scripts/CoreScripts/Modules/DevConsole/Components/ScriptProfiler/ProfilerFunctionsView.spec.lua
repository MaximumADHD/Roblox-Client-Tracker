return function()
	local ScriptContext = game:GetService("ScriptContext")
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local ProfilerFunctionsView = require(script.Parent.ProfilerFunctionsView)

	local TEST_DATA = ScriptContext:DeserializeScriptProfilerString(require(script.Parent.TestData))

	-- CLI-94090 remove when roblox-cli 602 is retired from testing
	if not TEST_DATA.Version then
		return
	end

	local sessionLength = 1

	-- CLI-93956 These nil checks are no longer needed once the minimum version of roblox-cli used in CI is 610
	if TEST_DATA.SessionStartTime and TEST_DATA.SessionEndTime then
		sessionLength = TEST_DATA.SessionEndTime - TEST_DATA.SessionStartTime
	end

	it("should create and destroy without errors", function()
		local element = Roact.createElement(ProfilerFunctionsView, {
			size = UDim2.new(),
			layoutOrder = 0,
			data = TEST_DATA,
			showAsPercentages = false,
			average = 1,
			sessionLength = sessionLength,
			searchFilter = {},
			gcFunctionOffsets = {},
			showGC = true,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
