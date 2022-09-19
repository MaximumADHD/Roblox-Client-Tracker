return function()
	local HttpService = game:GetService("HttpService")
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local ProfilerView = require(script.Parent.ProfilerView)

	-- FIXME: CLI-58905 This causes a stack-overflow in CI
	-- local TEST_DATA = HttpService:JSONDecode(require(script.Parent.TestData))

	it("should create and destroy without errors", function()
		local element = Roact.createElement(ProfilerView, {
			size = UDim2.new(),
			searchTerm = "",
			layoutOrder = 0,
			data = nil,
			showAsPercentages = false
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end