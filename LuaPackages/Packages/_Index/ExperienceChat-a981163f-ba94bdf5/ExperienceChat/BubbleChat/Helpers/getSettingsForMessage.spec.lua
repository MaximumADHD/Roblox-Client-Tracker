local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local getSettingsForMessage = require(script.Parent.getSettingsForMessage)
local createMockMessage = require(script.Parent.createMockMessage)
local mockSettings = require(script.Parent.mockSettings)

return function()
	beforeAll(function(rootContext)
		rootContext.chatSettings = {
			Transparency = 0.5,
			TextSize = 10,
			UserSpecificSettings = {
				["1"] = {
					TextSize = 15,
				},
				["Model.Part"] = {
					TextSize = 10,
				},
			},
		}
	end)

	it("SHOULD return original chat settings if user settings are missing or there is no message", function()
		local message = createMockMessage({})
		local noUserSettingsResult = getSettingsForMessage(mockSettings, message)
		expect(noUserSettingsResult).toEqual(mockSettings)

		local noLastMessageResult = getSettingsForMessage(mockSettings, nil)
		expect(noLastMessageResult).toEqual(mockSettings)
	end)

	it("SHOULD return user specific settings for the message's user if it exists", function(c)
		local message = createMockMessage({ userId = "1" })
		local result = getSettingsForMessage(c.chatSettings, message)
		expect(result).toBe(c.chatSettings.UserSpecificSettings["1"])
	end)

	it("SHOULD return user specific for the message's part if it exists", function(c)
		-- Set up partOrModel
		local character = Instance.new("Model")
		local part = Instance.new("Part")
		part.Anchored = true
		part.Parent = character
		character.PrimaryPart = part

		local message = createMockMessage({ partOrModel = part, userId = "2" })
		local result = getSettingsForMessage(c.chatSettings, message)
		expect(result).toEqual(c.chatSettings.UserSpecificSettings["Model.Part"])
	end)

	it("SHOULD return original chat settings when no user specific settings apply", function(c)
		local message = createMockMessage({ userId = "2" })
		local result = getSettingsForMessage(c.chatSettings, message)
		expect(result).toBe(c.chatSettings)
	end)
end
