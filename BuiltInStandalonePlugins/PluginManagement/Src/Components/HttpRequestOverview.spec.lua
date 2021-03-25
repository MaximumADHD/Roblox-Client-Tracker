return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockManagement = require(Plugin.Src.Components.MockManagement)
	local PermissionInfo = require(Plugin.Src.Models.PermissionInfo)
	local Constants = require(Plugin.Src.Util.Constants)
	local FlagsList = require(Plugin.Src.Util.FlagsList)
	local HttpRequestOverview = require(script.Parent.HttpRequestOverview)

	local ASSET_ID = 165687726

	local function createMockStore(allowedHttpCount, deniedHttpCount, allowedScriptInjection)
		local mockPermissions = {}

		for _=1,allowedHttpCount do
			local mockPermission = PermissionInfo.mock()
			mockPermission.type = Constants.PERMISSION_TYPES.HttpService
			mockPermission.enabled = true
			table.insert(mockPermissions, mockPermission)
		end

		for _=1,deniedHttpCount do
			local mockPermission = PermissionInfo.mock()
			mockPermission.type = Constants.PERMISSION_TYPES.HttpService
			mockPermission.enabled = false
			table.insert(mockPermissions, mockPermission)
		end

		local mockPluginPermission = {
			allowedHttpCount = allowedHttpCount,
			deniedHttpCount = deniedHttpCount,
			allowedScriptInjection = allowedScriptInjection,
			pluginPermissions = mockPermissions,
		}

		return {
			PluginPermissions = {
				[ASSET_ID] = mockPluginPermission,
			},
		}
	end

	local function createMockElement(store)
		return Roact.createElement(MockManagement, {
			initialStoreState = store or createMockStore(0, 0, nil),
		}, {
			HttpRequestOverview = Roact.createElement(HttpRequestOverview, {
				assetId = ASSET_ID,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createMockElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly with no requests", function()
		local container = Instance.new("Folder")
		local element = createMockElement()
		local instance = Roact.mount(element, container)

		local root = container:FindFirstChild("HttpRequestOverview")
		expect(root).to.be.ok()
		if FlagsList:get("FFlagPluginManagementQ3ContentSecurity") then
			expect(root.NoPermissionsRequested).to.be.ok()
		end
		Roact.unmount(instance)
	end)

	it("should show the correct number of allowed HTTP requests", function()
		local countNumber = 2
		local container = Instance.new("Folder")
		local element = createMockElement(createMockStore(countNumber, 0, nil))
		local instance = Roact.mount(element, container)

		local root = container:FindFirstChild("HttpRequestOverview")
		expect(root).to.be.ok()
		expect(root.Allowed).to.be.ok()
		expect(root.Allowed.CountText).to.be.ok()
		expect(root.Allowed.CountText.Text).to.equal(tostring(countNumber))
		Roact.unmount(instance)
	end)

	it("should show the correct number of denied HTTP requests", function()
		local countNumber = 2
		local container = Instance.new("Folder")
		local element = createMockElement(createMockStore(0, countNumber, nil))
		local instance = Roact.mount(element, container)

		local root = container:FindFirstChild("HttpRequestOverview")
		expect(root).to.be.ok()
		expect(root.Denied).to.be.ok()
		expect(root.Denied.CountText).to.be.ok()
		expect(root.Denied.CountText.Text).to.equal(tostring(countNumber))
		Roact.unmount(instance)
	end)

	it("should show script injection property if specified", function()
		if not FlagsList:get("FFlagPluginManagementQ3ContentSecurity") then
			return
		end
		local container = Instance.new("Folder")
		local element = createMockElement(createMockStore(0, 0, true))
		local instance = Roact.mount(element, container)

		local root = container:FindFirstChild("HttpRequestOverview")
		expect(root).to.be.ok()
		expect(root.ScriptInjection).to.be.ok()
		Roact.unmount(instance)
	end)
end
