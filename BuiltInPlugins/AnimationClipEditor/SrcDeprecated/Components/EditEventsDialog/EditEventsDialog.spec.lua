return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.SrcDeprecated.Context.MockWrapper)

	local EditEventsDialog = require(script.Parent.EditEventsDialog)

	local function createTestEditEventsDialog(container, events)
		return Roact.createElement(MockWrapper, {
			Container = container,
		}, {
			EditEventsDialog = Roact.createElement(EditEventsDialog, {
				Events = events or {},
				Frame = 0,
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

		local gui = container:FindFirstChildOfClass("BillboardGui")
		expect(gui).to.be.ok()
		expect(gui.FocusProvider).to.be.ok()
		expect(gui.FocusProvider.Content).to.be.ok()
		local content = gui.FocusProvider.Content.Container
		expect(content).to.be.ok()
		expect(content.Layout).to.be.ok()
		expect(content.TitleRow).to.be.ok()
		expect(content.TitleRow[1]).to.be.ok()
		expect(content.TitleRow[2]).to.be.ok()
		expect(content.AddNew).to.be.ok()
		expect(content.AddNew.AddEventEntry).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render an entry for every event at this frame", function()
		local container = Instance.new("Folder")
		local testEvents = {
			Keyframes = {0},
			Data = {
				[0] = {
					TestEvent = "TestValue",
					OtherEvent = "OtherValue",
				},
			},
		}

		local element = createTestEditEventsDialog(container, testEvents)

		local instance = Roact.mount(element, container)

		local gui = container:FindFirstChildOfClass("BillboardGui")
		local content = gui.FocusProvider.Content.Container
		expect(content["Event_TestEvent"]).to.be.ok()
		expect(content["Event_TestEvent"][1]).to.be.ok()
		expect(content["Event_TestEvent"][2]).to.be.ok()
		expect(content["Event_OtherEvent"]).to.be.ok()
		expect(content["Event_OtherEvent"][1]).to.be.ok()
		expect(content["Event_OtherEvent"][2]).to.be.ok()

		Roact.unmount(instance)
	end)
end
