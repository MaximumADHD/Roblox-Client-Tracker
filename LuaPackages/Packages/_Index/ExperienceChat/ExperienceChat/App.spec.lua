local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect

return function()
	beforeAll(function(rootContext)
		local storyDefinition = require(script.Parent:FindFirstChild("App"))
		rootContext.mount = rootContext.createMount(storyDefinition, function(c)
			return {
				isDefaultChatEnabled = c.isDefaultChatEnabled,
			}
		end)
	end)

	it("SHOULD mount App properly when isDefaultChatEnabled is true", function(c)
		c.isDefaultChatEnabled = true
		local mountResult = c:mount()
		local roactTree = mountResult.instance:GetChildren()
		expect(#roactTree).never.toEqual(0)
		mountResult.unmount()
	end)

	it("SHOULD NOT mount App properly when isDefaultChatEnabled is false", function(c)
		c.isDefaultChatEnabled = false
		local mountResult = c:mount()
		local roactTree = mountResult.instance:GetChildren()
		expect(#roactTree).toEqual(0)
		mountResult.unmount()
	end)
end
