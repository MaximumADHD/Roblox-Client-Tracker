return function()
	local HttpService = game:GetService("HttpService")
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local ProfilerViewEntry = require(script.Parent.ProfilerViewEntry)

	-- FIXME: CLI-58905 This causes a stack-overflow in CI
	-- local TEST_DATA = HttpService:JSONDecode(require(script.Parent.TestData))

	it("should create and destroy without errors", function()
		local element = Roact.createElement(ProfilerViewEntry, {
			layoutOrder = 0,
			depth = 0,
			data = {
				TotalDuration = 5,
				Duration = 1,
				Name = "",
			},
			percentageRatio = nil
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end