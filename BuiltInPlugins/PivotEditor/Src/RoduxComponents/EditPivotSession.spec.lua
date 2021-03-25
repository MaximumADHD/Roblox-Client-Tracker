
return function()
	local Plugin = script.Parent.Parent.Parent

	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Utility.MockWrapper)
	local EditPivotSession = require(Plugin.Src.RoduxComponents.EditPivotSession)

	describe("Lifecycle", function()
		it("should mount", function()
			local handle =
				Roact.mount(MockWrapper({}, Roact.createElement(EditPivotSession)))
			Roact.unmount(handle)
		end)
	end)
end