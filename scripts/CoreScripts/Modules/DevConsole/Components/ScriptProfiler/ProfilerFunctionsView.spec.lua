return function()
	local ScriptContext = game:GetService("ScriptContext")
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local ProfilerFunctionsView = require(script.Parent.ProfilerFunctionsView)

	local TEST_DATA = ScriptContext:DeserializeScriptProfilerString(require(script.Parent.TestData))

	local sessionLength = TEST_DATA.SessionEndTime - TEST_DATA.SessionStartTime

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
