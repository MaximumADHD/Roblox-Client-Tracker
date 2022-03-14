return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)

	describe("VoiceChatPrompt", function()
		it("should create and destroy without errors", function()
			local VoiceChatPrompt = require(script.Parent.VoiceChatPrompt)

			local element = Roact.createElement(VoiceChatPrompt)

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
