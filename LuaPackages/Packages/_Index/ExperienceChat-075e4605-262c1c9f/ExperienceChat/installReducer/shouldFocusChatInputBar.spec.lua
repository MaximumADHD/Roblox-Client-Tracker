local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local AvatarContextMenuWhisperSelected = require(ExperienceChat.Actions.AvatarContextMenuWhisperSelected)
local shouldFocusChatInputBar = require(script.Parent.shouldFocusChatInputBar)

return function()
	it("SHOULD negate state when AvatarContextMenuWhisperSelected is dispatched", function()
		local state = shouldFocusChatInputBar(nil, AvatarContextMenuWhisperSelected())
		expect(state).toEqual(-1)

		state = shouldFocusChatInputBar(state, AvatarContextMenuWhisperSelected())
		expect(state).toEqual(1)
	end)
end
