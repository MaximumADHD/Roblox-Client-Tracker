local Players = game:GetService("Players")

local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)
local Dictionary = require(ProjectRoot.llama).Dictionary

return Rodux.createReducer({}, {
	SendChatMessage = function(state: table, action: table): table
		local prefixText = ""
		local userId = nil
		local text = (action.Text and action.Text) or ""

		-- TODO: Mocking system message by checking if UserId is -100
		if action.TextSource.UserId == -100 then
			prefixText = "<font color='##E97451'>System"
			text = text .. "</font>"
			userId = -100
		else
			userId = action.TextSource.UserId
			local player = Players:GetPlayerByUserId(userId)
			if player then
				prefixText = string.format("[%s]", player.Name)
			end

			-- if this is a team message, append "{Team}" to the text
			local textChannelName = action.TextChannel.Name
			if string.find(textChannelName, "RBXTeam", 1) then
				prefixText = "{Team} " .. prefixText
			end
		end

		return Dictionary.joinDeep(state, {
			[action.MessageId] = {
				UserId = userId,
				PrefixText = prefixText,
				Text = text,
			},
		})
	end,
})
