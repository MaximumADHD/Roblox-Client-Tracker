local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local List = require(Packages.llama).List
local Logger = require(script.Parent.Logger):new("ExpChat/" .. script.Name)

local sanitizeForRichText = require(script.Parent.sanitizeForRichText)

local function displaySystemMessage(
	keyOrKeys: string | { string },
	args: { [string]: any }?,
	metadata: string,
	translator: Translator,
	defaultSystemTextChannel: TextChannel,
	fallbackMessage: string?
)
	Logger:debug("Display system message: {}", metadata)
	local message: string?
	if type(keyOrKeys) == "string" then
		local key: string = keyOrKeys
		if key ~= "" then
			local success: boolean
			success, message = pcall(function()
				return translator:FormatByKey(key, args)
			end)

			if not success then
				message = fallbackMessage
			end
		end
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
