local FFlagPluginManagementRemoveUILibrary = game:GetFastFlag("PluginManagementRemoveUILibrary2")

return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockManagement = require(Plugin.Src.Components.MockManagement)

	local UpdateStatus = require(Plugin.Src.Util.UpdateStatus)

	local PluginEntry = require(script.Parent.PluginEntry)

	local function testData()
		return {
			assetId = 0,
			name = "Test",
			description = "Test",
			latestVersion = 0,
			installedVersion = 0,
			updated = "",
			enabled = false,
			creator = {
				Id = 0,
				Name = "Test",
			},
		}
	end

	local function createTestPluginEntry(data, isUpdated)
		return Roact.createElement(MockManagement, {}, {
			PluginEntry = Roact.createElement(PluginEntry, {
				data = data,
				isUpdated = isUpdated,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestPluginEntry(testData())
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestPluginEntry(testData())
		local instance = Roact.mount(element, container)

		local root = container:FindFirstChildOfClass("Frame")
		expect(root.Padding).to.be.ok()
		expect(root.Thumbnail).to.be.ok()
		expect(root.Contents).to.be.ok()
		expect(root.Contents.Layout).to.be.ok()
		expect(root.Contents.Name).to.be.ok()
		expect(root.Contents.Creator).to.be.ok()
		expect(root.Contents.Description).to.be.ok()
		if FFlagPluginManagementRemoveUILibrary then
			expect(root.ShowMoreButton).to.be.ok()
		else
			expect(root.ShowMoreButtonOLD).to.be.ok()
		end
		Roact.unmount(instance)
	end)

	it("should render a disable button if enabled", function()
		local data = testData()
		data.enabled = true
		local container = Instance.new("Folder")
		local element = createTestPluginEntry(data)
		local instance = Roact.mount(element, container)

		local root = container:FindFirstChildOfClass("Frame")
		expect(root.DisableButton).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render an enable button if disabled", function()
		local data = testData()
		data.enabled = false
		local container = Instance.new("Folder")
		local element = createTestPluginEntry(data)
		local instance = Roact.mount(element, container)

		local root = container:FindFirstChildOfClass("Frame")
		expect(root.EnableButton).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render an update button if not updated", function()
		local container = Instance.new("Folder")
		local element = createTestPluginEntry(testData(), false)
		local instance = Roact.mount(element, container)

		local root = container:FindFirstChildOfClass("Frame")
		if FFlagPluginManagementRemoveUILibrary then
			expect(root.UpdateButton).to.be.ok()
		else
			expect(root.UpdateButtonOLD).to.be.ok()
		end
		Roact.unmount(instance)
	end)

	it("should not render an update button if updated", function()
		local container = Instance.new("Folder")
		local element = createTestPluginEntry(testData(), true)
		local instance = Roact.mount(element, container)

		local root = container:FindFirstChildOfClass("Frame")
		expect(root:FindFirstChild("UpdateButton")).never.to.be.ok()
		Roact.unmount(instance)
	end)

	it("should show a progress bar if currently updating", function()
		local data = testData()
		data.status = UpdateStatus.Updating
		local container = Instance.new("Folder")
		local element = createTestPluginEntry(data, false)
		local instance = Roact.mount(element, container)

		local root = container:FindFirstChildOfClass("Frame")
		expect(root:FindFirstChild("UpdateButton")).never.to.be.ok()
		expect(root.ProgressIndicator).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should show a success label after updating", function()
		local data = testData()
		data.status = UpdateStatus.Updating
		local container = Instance.new("Folder")
		local element = createTestPluginEntry(data, false)
		local instance = Roact.mount(element, container)

		local root = container:FindFirstChildOfClass("Frame")
		expect(root:FindFirstChild("SuccessLabel")).never.to.be.ok()

		data.status = UpdateStatus.Success
		instance = Roact.update(instance, createTestPluginEntry(data, true))
		root = container:FindFirstChildOfClass("Frame")
		expect(root.SuccessLabel).to.be.ok()
		Roact.unmount(instance)
	end)
end
