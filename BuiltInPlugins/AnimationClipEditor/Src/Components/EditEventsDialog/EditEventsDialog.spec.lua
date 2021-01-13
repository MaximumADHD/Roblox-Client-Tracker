return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local EditEventsDialog = require(script.Parent.EditEventsDialog)

	local function createTestEditEventsDialog(container, events)
		return Roact.createElement(MockWrapper, {
			Container = container,
		}, {
			EditEventsDialog = Roact.createElement(EditEventsDialog, {
				Events = events or {},
				Frame = 0,
				OnClose = function() end,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestEditEventsDialog()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestEditEventsDialog(container)

		local instance = Roact.mount(element, container)
		local frame = container:FindFirstChildOfClass("ScreenGui")
		expect(frame).to.be.ok()

		Roact.unmount(instance)
	end)
end
