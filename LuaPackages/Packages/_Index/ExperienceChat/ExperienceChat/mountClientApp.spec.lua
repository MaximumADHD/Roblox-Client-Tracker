local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)

local UIBlox = require(ExperienceChat.UIBlox)
local UIBloxConfig = require(script.Parent.UIBloxConfig)
pcall(UIBlox.init, UIBloxConfig)

local mountClientApp = require(script.Parent.mountClientApp)

return function()
	-- Since the return value is somewhat opaque, this is not trivial to test further
	it("SHOULD run without issue", function()
		mountClientApp({
			canUserChatAsync = function()
				return true
			end,
		})
	end)
end
