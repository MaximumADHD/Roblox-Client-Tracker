return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")

	local ContactList = RobloxGui.Modules.ContactList

	local SectionHeader = require(ContactList.Components.FriendList.SectionHeader)

	local function createSectionHeader()
		return Roact.createElement(UIBlox.Core.Style.Provider, {}, {
			Header = Roact.createElement(SectionHeader, {
				name = "name",
				description = "description",
			}),
		})
	end

	it("should mount and unmount without errors", function()
		local element = createSectionHeader()
		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)

		local headerElement: TextLabel = folder:FindFirstChild("HeaderText", true) :: TextLabel
		expect(headerElement.Text).toBe("NAME")
		Roact.unmount(instance)
	end)
end
