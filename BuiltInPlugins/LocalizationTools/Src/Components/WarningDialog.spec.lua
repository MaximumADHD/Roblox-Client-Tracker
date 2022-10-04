return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local WarningDialog = require(script.Parent.WarningDialog)
	local MockWrap = require(Plugin.Src.MockWrap)

	it("should render correctly", function()
		local props = {
			Text = "Error",
			CancelCallback = function() end,
			OkCallback = function() end,
		}
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(WarningDialog, props))
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end