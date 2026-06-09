--!strict
local Root = script:FindFirstAncestor("Markdown")
local Types = require(Root.Types)

type Token = Types.Token

local EmphasisParser = require(script.Parent.EmphasisParser)

local module = {}

function module.postProcessTokens(tokens: { Token }): { Token }
	-- Find block boundaries to process inline emphasis properly
	local processedTokens: { Token } = {}
	local inlineStart = 1

	for i = 1, #tokens do
		local token = tokens[i]

		-- Check if this is a block-level token
		if token.isBlock or token.name == "LINE_BREAK" then
			-- Process any inline tokens before this block token
			if i > inlineStart then
				local emphasisProcessed = EmphasisParser.processEmphasisRun(tokens, inlineStart, i - 1)
				for _, t in emphasisProcessed do
					table.insert(processedTokens, t)
				end
			end

			-- Add the block token
			table.insert(processedTokens, token)
			inlineStart = i + 1
		end
	end

	-- Process any remaining inline tokens
	if inlineStart <= #tokens then
		local emphasisProcessed = EmphasisParser.processEmphasisRun(tokens, inlineStart, #tokens)
		for _, t in emphasisProcessed do
			table.insert(processedTokens, t)
		end
	end

	return processedTokens
end

return module.postProcessTokens
