return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")

	local ContactList = RobloxGui.Modules.ContactList

	local NoItemView = require(ContactList.Components.common.NoItemView)

	local function createNoItemView(message: string)
		return Roact.createElement(UIBlox.Core.Style.Provider, {}, {
			NoItemView = Roact.createElement(NoItemView, {
				isImageEnabled = false,
				imageName = "",
				isFailedButtonEnabled = true,
				onFailedButtonActivated = function() end,
				isCallButtonEnabled = true,
				onCallButtonActivated = function() end,
				messageText = message,
			}),
		})
	end

	it("should mount and unmount without errors", function()
		local element = createNoItemView("This is the message")
		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local failedButtonElement: ImageButton = folder:FindFirstChild("FailedButton", true) :: ImageButton
		expect(failedButtonElement).never.toBeNull()
		local callButtonElement: ImageButton = folder:FindFirstChild("CallButton", true) :: ImageButton
		expect(callButtonElement).never.toBeNull()
		local messageElement: TextLabel = folder:FindFirstChild("Message", true) :: TextLabel
		expect(messageElement.Text).toBe("This is the message")
		Roact.unmount(instance)
	end)
end
