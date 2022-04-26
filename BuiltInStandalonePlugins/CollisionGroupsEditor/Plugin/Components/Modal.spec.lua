local Roact = require(script.Parent.Parent.Parent.Packages.Roact)
local Modal = require(script.Parent.Modal)

local MockServiceWrapper = require(script.Parent.Parent.TestHelpers.MockServiceWrapper)

return function()
	it("should mount and unmount with some basic properties", function()
		local messageText = "Test message"

		local container = Instance.new("Folder")
		local element = Roact.createElement(MockServiceWrapper, {}, {
			Roact.createElement(Modal, {
				Message = messageText,
				Function = function() end,
				CleanUpFunction = function() end,
				Active = true,
			})
		})
		local tree = Roact.mount(element, container, "Modal")

		local instance = container:FindFirstChild("Modal")
		expect(instance).to.be.ok()

		local message = instance.ModalFrame.MessageFrame.Message
		expect(message.Text).to.equal(messageText)

		Roact.unmount(tree)
	end)
end