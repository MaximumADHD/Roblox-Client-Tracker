local getSettingsForMessage = require(script.Parent.getSettingsForMessage)
local createMockMessage = require(script.Parent.createMockMessage)

local flags = script.Parent.Parent.Parent.Parent.Flags
local GetFFlagBubbleChatUserSpecificSettings = require(flags.GetFFlagBubbleChatUserSpecificSettings)

return function()
	if not GetFFlagBubbleChatUserSpecificSettings() then
		return
	end

	it("should return the original chat settings if there are no user specific settings", function()
		local chatSettings = {
			Transparency = .5,
			TextSize = 10
		}
		local message = createMockMessage({})

		local result = getSettingsForMessage(chatSettings, message)
		expect(result).to.equal(chatSettings)
	end)

	local chatSettings = {
		Transparency = .5,
		TextSize = 10,
		UserSpecificSettings = {
			["1"] = {
				TextSize = 15
			}
		}
	}

	it("should return the original chat settings if there are no user specific settings for this user", function()
		local message = createMockMessage({ userId = "2" })
		local result = getSettingsForMessage(chatSettings, message)
		expect(result).to.equal(chatSettings)
	end)

	it("should return the user specific settings table if one was found for the message's user id", function()
		local message = createMockMessage({ userId = "1" })
		local result = getSettingsForMessage(chatSettings, message)
		expect(result).to.equal(chatSettings.UserSpecificSettings["1"])
	end)
end
