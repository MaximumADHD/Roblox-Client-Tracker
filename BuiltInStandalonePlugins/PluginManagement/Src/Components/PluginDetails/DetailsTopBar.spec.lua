return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockManagement = require(Plugin.Src.Components.MockManagement)

	local Flags = require(Plugin.Packages.Framework.Util.Flags)
	local FlagsList = Flags.new({
		FFlagEnablePluginPermissionsPage = {
			"EnablePluginPermissionsPage2",
		},
	})

	if not FlagsList:get("FFlagEnablePluginPermissionsPage") then
		return
	end

	local DetailsTopBar = require(script.Parent.DetailsTopBar)

	local function createMockElement()
		return Roact.createElement(MockManagement, {}, {
			DetailsTopBar = Roact.createElement(DetailsTopBar, {
				assetId = 165687726,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createMockElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createMockElement()
		local instance = Roact.mount(element, container)

		local root = container:FindFirstChild("DetailsTopBar")
		expect(root).to.be.ok()
		expect(root.BackButton).to.be.ok()
		expect(root.Thumbnail).to.be.ok()
		expect(root.Name).to.be.ok()

		Roact.unmount(instance)
	end)
end
