local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local ChatPrivacySettingsReceived = require(ExperienceChat.Actions.ChatPrivacySettingsReceived)
local ChatPrivacySettingsFetchFailed = require(ExperienceChat.Actions.ChatPrivacySettingsFetchFailed)
local CanLocalUser = require(script.Parent.CanLocalUserChat)

return function()
	it("SHOULD return false when ChatPrivacySettingsFetchFailed is dispatched", function()
		local state = CanLocalUser(nil, ChatPrivacySettingsFetchFailed())
		expect(state).toEqual(false)
	end)

	it("SHOULD return true when ChatPrivacySettingsReceived is dispatched with true", function()
		local state = CanLocalUser(nil, ChatPrivacySettingsReceived(true))
		expect(state).toEqual(true)
	end)

	it("SHOULD return true when ChatPrivacySettingsReceived is dispatched with false", function()
		local state = CanLocalUser(nil, ChatPrivacySettingsReceived(false))
		expect(state).toEqual(false)
	end)
end
