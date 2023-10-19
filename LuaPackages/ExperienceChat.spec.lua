--!nonstrict
local ExperienceChat = require(script.Parent.ExperienceChat)

local CoreGui = game:GetService("CoreGui")
local RobloxTranslator = {
	FormatByKey = function(_, key)
		return key
	end,
}

return function()
	beforeAll(function(c)
		local screenGui = Instance.new("ScreenGui")
		screenGui.Parent = CoreGui
		c.screenGui = screenGui
	end)

	afterAll(function(c)
		c.screenGui:Destroy()
	end)

	it("within lua-apps, ExperienceChat should mount without issue", function(c)
		if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then
			local success, message = pcall(function()
				ExperienceChat.mountClientApp({
					defaultTargetTextChannel = Instance.new("TextChannel"),
					defaultSystemTextChannel = Instance.new("TextChannel"),
					translator = RobloxTranslator :: any,
					parent = c.screenGui,
				})
			end)

			assert(success, string.format(
				"If this assertion occurs check for incompatible Roact dependency between ExperienceChat and lua-apps." ..
				"\n" .. string.rep("=", 32) ..
				"\n\nSee message below:" ..
				"\n\n%s" ..
				"\n" .. string.rep("=", 32),
				tostring(message)
			))

			assert(c.screenGui:FindFirstChildWhichIsA("Instance"), "For some reason, we did not mount anything to the given parent.")
		end
	end)
end
