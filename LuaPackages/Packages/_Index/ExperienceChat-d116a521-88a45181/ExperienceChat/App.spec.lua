local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

return function()
	beforeAll(function(rootContext)
		local storyDefinition = require(script.Parent:FindFirstChild("App"))
		rootContext.mount = rootContext.createMount(storyDefinition, function(c)
			return {
				isDefaultChatEnabled = c.isDefaultChatEnabled,
				isChatInputBarVisible = c.isChatInputBarVisible,
			}
		end)
	end)

	describe("isDefaultChatEnabled", function()
		it("SHOULD mount App when isDefaultChatEnabled is true", function(c)
			c.isDefaultChatEnabled = true
			local mountResult = c:mount()
			local roactTree = mountResult.instance:GetChildren()
			expect(#roactTree).never.toEqual(0)
			mountResult.unmount()
		end)
		it("SHOULD mount App when isDefaultChatEnabled is nil", function(c)
			c.isDefaultChatEnabled = true
			local mountResult = c:mount()
			local roactTree = mountResult.instance:GetChildren()
			expect(#roactTree).never.toEqual(0)
			mountResult.unmount()
		end)

		it("SHOULD NOT mount App when isDefaultChatEnabled is false", function(c)
			c.isDefaultChatEnabled = false
			local mountResult = c:mount()
			local roactTree = mountResult.instance:GetChildren()
			expect(#roactTree).toEqual(0)
			mountResult.unmount()
		end)
	end)
end
