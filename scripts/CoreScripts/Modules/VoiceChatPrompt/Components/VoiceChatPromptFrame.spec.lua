return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)

	describe("VoiceChatPromptFrame", function()
		it("should create and destroy without errors", function()
			local VoiceChatPromptFrame = require(script.Parent.VoiceChatPromptFrame)

			local element = Roact.createElement(VoiceChatPromptFrame)

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
