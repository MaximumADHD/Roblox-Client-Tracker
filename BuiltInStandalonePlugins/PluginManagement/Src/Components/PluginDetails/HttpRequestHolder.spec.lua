local FFlagPluginManagementRemoveUILibrary = game:GetFastFlag("PluginManagementRemoveUILibrary2")

return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockManagement = require(Plugin.Src.Components.MockManagement)
	local PermissionInfo = require(Plugin.Src.Models.PermissionInfo)

	local HttpRequestHolder = require(script.Parent.HttpRequestHolder)

	local function createMockElement(props)
		return Roact.createElement(MockManagement, {}, {
			HttpRequestHolder = Roact.createElement(HttpRequestHolder, props)
		})
	end

	local function createPermissionObj(permissionName, isEnabled)
		local mockPermission = PermissionInfo.mock()
		mockPermission.enabled = isEnabled
		mockPermission.data.domain = permissionName
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

	it("should sort items alphabetically by name", function()
		local container = Instance.new("Folder")
		local a = "a"
		local b = "b"
		local c = "c"

		local httpPermissions = {
			createPermissionObj(a, true),
			createPermissionObj(b, true),
			createPermissionObj(c, true),
		}

		local element = createMockElement({
			httpPermissions = httpPermissions,
		})

		local instance = Roact.mount(element, container)
		local root = container:FindFirstChild("HttpRequestHolder")
		expect(root).to.be.ok()

		local checkboxList = root:FindFirstChild("Checkboxes")
		expect(checkboxList).to.be.ok()

		local function getTitleLabel(childName)
			local frame = checkboxList:FindFirstChild(childName)
			if FFlagPluginManagementRemoveUILibrary then
				return frame:FindFirstChild("TitleLabel", true)
			else
				local chkbx = frame:FindFirstChild("CheckBox")
				local bkgnd = chkbx:FindFirstChild("Background")
				return bkgnd:FindFirstChild("TitleLabel")
			end
		end

		local first = getTitleLabel("1")
		local second = getTitleLabel("2")
		local third = getTitleLabel("3")
		expect(first.Text).to.equal(a)
		expect(second.Text).to.equal(b)
		expect(third.Text).to.equal(c)

		Roact.unmount(instance)
	end)
end
