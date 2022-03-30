local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent

local UIBlox = require(Packages.UIBlox)
local UIBloxConfig = require(script.Parent.UIBloxConfig)
pcall(UIBlox.init, UIBloxConfig)

local mountClientApp = require(script.Parent.mountClientApp)

return function()
	-- Since the return value is somewhat opaque, this is not trivial to test further
	it("SHOULD run without issue", function()
		mountClientApp({
			defaultSystemTextChannel = Instance.new("TextChannel"),
			canUserChatAsync = function()
				return true
			end,
		})
	end)
end
