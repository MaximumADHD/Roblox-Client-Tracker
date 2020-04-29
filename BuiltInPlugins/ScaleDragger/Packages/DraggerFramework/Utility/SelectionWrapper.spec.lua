local Selection = game:GetService("Selection")
local Workspace = game:GetService("Workspace")

local Framework = script.Parent.Parent
local SelectionWrapper = require(Framework.Utility.SelectionWrapper)

return function()
	it("should return selected parts", function()
		local part1 = Instance.new("Part", Workspace)
		local part2 = Instance.new("Part", Workspace)
		Selection:Set({part1, part2})

		SelectionWrapper:init()
		local selection = SelectionWrapper:Get()
		expect(#selection).to.equal(2)

		part1:Destroy()
		part2:Destroy()
		SelectionWrapper:destroy()
	end)

	it("should trigger the changed event from Studio", function()
		local callCount = 0
		local connection = SelectionWrapper.SelectionChangedByStudio:Connect(function()
			callCount = callCount + 1
		end)

		SelectionWrapper:init()
		local part = Instance.new("Part", Workspace)
		Selection:Set({part})

		-- TODO: Find out why this test is flaky. `callCount` sometimes equals 2.
		expect(callCount).to.equal(1)

		part:Destroy()
		connection:Disconnect()
		SelectionWrapper:destroy()
	end)

	it("should not trigger the changed event from wrapper", function()
		local callCount = 0
		local connection = SelectionWrapper.SelectionChangedByStudio:Connect(function()
			callCount = callCount + 1
		end)

		SelectionWrapper:init()
		local part = Instance.new("Part", Workspace)
		SelectionWrapper:Set({part})

		expect(callCount).to.equal(0)

		part:Destroy()
		connection:Disconnect()
		SelectionWrapper:destroy()
	end)
end
