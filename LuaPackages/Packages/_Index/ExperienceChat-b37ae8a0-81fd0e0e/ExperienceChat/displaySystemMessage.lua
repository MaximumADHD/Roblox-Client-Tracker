local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local List = require(Packages.llama).List
local Logger = require(script.Parent.Logger):new("ExpChat/" .. script.Name)
local CommandTypes = require(ExperienceChat.Commands.types)
type Config = CommandTypes.Config

local sanitizeForRichText = require(script.Parent.sanitizeForRichText)

local function displaySystemMessage(
	keyOrKeys: string | { string },
	args: { string: any }?,
	metadata: string,
	translator: Translator,
	defaultSystemTextChannel: TextChannel
)
	Logger:debug("Display system message: {}", metadata)
	local message: string?
	if type(keyOrKeys) == "string" and keyOrKeys ~= "" then
		local key: string = keyOrKeys
		message = translator:FormatByKey(key, args)
	else
		local keys: { string } = keyOrKeys
		message = table.concat(
			List.map(keys, function(key)
				return translator:FormatByKey(key, args)
			end),
			"\n"
		)
	end

	if defaultSystemTextChannel and message then
		defaultSystemTextChannel:DisplaySystemMessage(sanitizeForRichText(message), metadata)
	end
end

return displaySystemMessage
