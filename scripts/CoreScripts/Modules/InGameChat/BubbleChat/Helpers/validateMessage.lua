--[[
	Performs validation on the messages that get sent from the server.

	See this confluence page for specifications on message validation:
	https://confluence.rbx.com/display/PX/Chat+message+length+limits
]]

local CorePackages = game:GetService("CorePackages")

local t = require(CorePackages.Packages.t)
local Constants = require(script.Parent.Parent.Constants)
local maybeAssert = require(script.Parent.maybeAssert)

local function validateMessageText(message)
	maybeAssert(t.string(message))

	-- check for invalid utf-8 sequence
	-- avoid normalizing first because nfcnormalize throws for invalid sequences
	if utf8.len(message) == nil then
		return false
	end

	-- check codepoint length
	local length = utf8.len(utf8.nfcnormalize(message))
	if length > Constants.MAX_MESSAGE_LENGTH then
		return false, length
	end

	return true
end

return validateMessageText
