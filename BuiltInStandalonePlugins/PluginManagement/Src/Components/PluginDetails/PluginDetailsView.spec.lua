return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockManagement = require(Plugin.Src.Components.MockManagement)
	local PermissionInfo = require(Plugin.Src.Models.PermissionInfo)
	local Constants = require(Plugin.Src.Util.Constants)

	local Flags = require(Plugin.Packages.Framework.Util.Flags)
	local FlagsList = Flags.new({
		FFlagEnablePluginPermissionsPage = {
			"EnablePluginPermissionsPage2",
		},
	})

	if not FlagsList:get("FFlagEnablePluginPermissionsPage") then
		return
	end

	local PluginDetailsView = require(script.Parent.PluginDetailsView)

	local ASSET_ID = 165687726

	local function createMockStore(hasHttpPermissions)
		local mockHttpPermission = PermissionInfo.mock()

		if hasHttpPermissions then
			mockHttpPermission.type = Constants.PERMISSION_TYPES.HttpService
		end

		return {
			Management = {
				plugins = {
					[ASSET_ID] = {
						assetId = ASSET_ID,
						name = "Test Plugin",
						description = "Some description",
					},
				},
			},
			PluginPermissions = {
				[ASSET_ID] = {
					allowedHttpCount = 1,
					deniedHttpCount = 0,
					httpPermissions = { mockHttpPermission },
				},
			},
		}
	end

	local function createMockElement(store)
		return Roact.createElement(MockManagement, {
			initialStoreState = store or createMockStore(false),
		}, {
			PluginDetailsView = Roact.createElement(PluginDetailsView, {
				assetId = ASSET_ID,
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

		local root = container:FindFirstChild("PluginDetailsView")
		expect(root).to.be.ok()
		expect(root.PlugnEntryContainer).to.be.ok()
		expect(root.PlugnEntryContainer.DetailsTopBar).to.be.ok()
		expect(root.ScrollingFrame).to.be.ok()
		expect(root.ScrollingFrame.Content).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render HTTP Permissions if the plugins has any", function()
		local container = Instance.new("Folder")
		local element = createMockElement(createMockStore(true))
		local instance = Roact.mount(element, container)

		local root = container:FindFirstChild("PluginDetailsView")
		expect(root).to.be.ok()
		expect(root.ScrollingFrame).to.be.ok()
		expect(root.ScrollingFrame.Content).to.be.ok()
		expect(root.ScrollingFrame.Content.HttpRequestPermissionContainer).to.be.ok()
		Roact.unmount(instance)
	end)
end