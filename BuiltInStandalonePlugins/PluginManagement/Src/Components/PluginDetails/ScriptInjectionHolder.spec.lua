return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockManagement = require(Plugin.Src.Components.MockManagement)
	local PermissionInfo = require(Plugin.Src.Models.PermissionInfo)
	local Constants = require(Plugin.Src.Util.Constants)

	local ScriptInjectionHolder = require(script.Parent.ScriptInjectionHolder)

	local function createMockElement(props)
		return Roact.createElement(MockManagement, {}, {
			ScriptInjectionHolder = Roact.createElement(ScriptInjectionHolder, props)
		})
	end

	local function createPermissionObj(isEnabled)
		local mockPermission = PermissionInfo.new()
		mockPermission.enabled = isEnabled
		mockPermission.type = Constants.PERMISSION_TYPES.ScriptInjection
		mockPermission.data = {}
		return mockPermission
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

		local root = container:FindFirstChildOfClass("ImageLabel")
		expect(root.Checkboxes).to.be.ok()
		expect(root.InfoText).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render under a mock management", function()
		local container = Instance.new("Folder")
		local scriptInjectionPermissions = {
			createPermissionObj(true),
		}
		local element = createMockElement({
			scriptInjectionPermissions = scriptInjectionPermissions,
		})

		local instance = Roact.mount(element, container)
		local root = container:FindFirstChild("ScriptInjectionHolder")
		expect(root).to.be.ok()

		Roact.unmount(instance)
	end)
end
