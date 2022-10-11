return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)
	local SettingsButton = require(script.Parent.SettingsButton)

	local function createTestSettingsButton()
		return Roact.createElement(MockWrapper, {}, {
			SettingsButton = Roact.createElement(SettingsButton),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestSettingsButton()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestSettingsButton(), container)
		local frame = container:FindFirstChildOfClass("ImageButton")

		expect(frame).to.be.ok()

		Roact.unmount(instance)
	end)
end
