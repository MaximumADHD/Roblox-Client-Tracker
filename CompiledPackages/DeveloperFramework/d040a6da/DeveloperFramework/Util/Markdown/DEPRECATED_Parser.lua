--!strict

------------------------------------------------------------------------------------------------------------------------
-- Name:		Markdown.lua
-- Version:		1.0 (1/17/2021)
-- Author:		Brad Sharp
--
-- Repository:	https://github.com/BradSharp/Romarkable
-- License:		MIT (https://github.com/BradSharp/Romarkable/blob/main/LICENSE)
--
-- Copyright (c) 2021 Brad Sharp
------------------------------------------------------------------------------------------------------------------------

local Markdown = {}

------------------------------------------------------------------------------------------------------------------------
-- Text Parser
------------------------------------------------------------------------------------------------------------------------

local InlineType: { [string]: number } = {
	Text = 0,
	Ref = 1,
}

local ModifierType: { [string]: number } = {
	Bold = 0,
	Italic = 1,
	Strike = 2,
	Code = 3,
}

local function sanitize(s: string): string
	return s:gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;")
end

type TokenIterator = { flag: boolean, text: string }

local function parseModifierTokens(md: string): () -> TokenIterator?
	local index: number = 1
	return function(): TokenIterator?
		local text: string?, textIndex: number? = md:match("^([^%*_~`]+)()", index)
		if text and textIndex then
			index = textIndex
			return { flag = false, text = text }
		elseif index <= md:len() then
			local modifier: string, modifierIndex: any = md:match("^(%" .. md:sub(index, index) .. "+)()", index)
			index = modifierIndex :: number
			return { flag = true, text = modifier }
		else
			return nil
		end
	end
end

local richTextLookup: { [string]: number } = {
	["*"] = ModifierType.Bold,
	["_"] = ModifierType.Italic,
	["~"] = ModifierType.Strike,
	["`"] = ModifierType.Code,
}

local function getRichTextModifierType(symbols: string): number
	return richTextLookup[symbols:sub(1, 1)]
end

local function richText(md: string): string
	md = sanitize(md)
	local tags: { [number]: { string } } = {
		[ModifierType.Bold] = { "<b>", "</b>" },
		[ModifierType.Italic] = { "<i>", "</i>" },
		[ModifierType.Strike] = { "<s>", "</s>" },
		[ModifierType.Code] = { '<font face="RobotoMono">', "</font>" },
	}
	local state = {}
	local output = ""
	for token in parseModifierTokens(md) do
		if token.flag then
			local modifierType = getRichTextModifierType(token.text)
			if state[ModifierType.Code] and modifierType ~= ModifierType.Code then
				output = output .. token.text
				continue
			end
			local symbolState = state[modifierType]
			if not symbolState then
				output = output .. tags[modifierType][1]
				state[modifierType] = token.text
			elseif token.text == symbolState then
				output = output .. tags[modifierType][2]
				state[modifierType] = nil
			else
				output = output .. token.text
			end
		else
			output = output .. token.text
		end
	end
	for modifierType in pairs(state) do
		output = output .. tags[modifierType][2]
	end
	return output
end

export type LinkType = {
	Text: string,
	Url: string,
}

local function parseLinks(md: string): (string, { LinkType })
	local links: { LinkType } = {}
	local text = ""
	local index = 1
	while index <= md:len() do
		local linkStart, linkEnd, linkText, linkUrl = md:find("%[([^%]]+)%]%(([^%)]+)%)", index)
		if linkStart then
			-- Casts should be fine, beucase if linkStart matches, then the rest of the values, should exist
			text = text .. md:sub(index, linkStart - 1) .. `[{linkText}]`
			table.insert(links, { Text = linkText :: string, Url = linkUrl :: string })
			index = linkEnd :: number + 1
		else
			text = text .. md:sub(index)
			break
		end
	end
	return text, links
end

------------------------------------------------------------------------------------------------------------------------
-- Document Parser
------------------------------------------------------------------------------------------------------------------------

local BlockType: { [string]: number } = {
	None = 0,
	Paragraph = 1,
	Heading = 2,
	Code = 3,
	List = 4,
	Ruler = 5,
	Quote = 6,
}

local CombinedBlocks: { [number]: boolean } = {
	[BlockType.None] = true,
	[BlockType.Paragraph] = true,
	[BlockType.Code] = true,
	[BlockType.List] = true,
	[BlockType.Quote] = true,
}

local function cleanup(s: string): string
	return s:gsub("\t", "    ")
end

local function getTextWithIndentation(line: string): (string, number)
	local indent: number?, text: string? = line:match("^%s*()(.*)")
	return text :: string, math.floor(indent :: number / 2)
end

-- Iterator: Iterates the string line-by-line
local function lines(s: string): () -> string | nil
	return (s .. "\n"):gmatch("(.-)\n")
end

-- Iterator: Categorize each line and allows iteration

local function blockLines(md: string): () -> (number?, string?)
	local blockType = BlockType.None
	local nextLine = lines(md)
	local function it(): (number?, string?)
		local line = nextLine()
		if line then
			-- Code
			if blockType == BlockType.Code then
				if line:match("^```") then
					blockType = BlockType.None
				end
				return BlockType.Code, line
			end
			-- Blank line
			if line:match("^%s*$") then
				return BlockType.None, ""
			end
			-- Ruler
			if line:match("^%-%-%-+") or line:match("^===+") then
				return BlockType.Ruler, ""
			end
			-- Heading
			if line:match("^#") then
				return BlockType.Heading, line
			end
			-- Code
			if line:match("^%s*```") then
				blockType = BlockType.Code
				return blockType, line
			end
			-- Quote
			if line:match("^%s*>") then
				return BlockType.Quote, line
			end
			-- List
			if
				line:match("^%s*%-%s+")
				or line:match("^%s*%*%s+")
				or line:match("^%s*[%u%d]+%.%s+")
				or line:match("^%s*%+%s+")
			then
				return BlockType.List, line
			end
			-- Paragraph
			return BlockType.Paragraph, line -- should take into account indentation of first-line
		else
			return nil
		end
	end
	return it
end

-- Iterator: Joins lines of the same type into a single element
local function textBlocks(md: string): () -> (number, string)
	local it = blockLines(md)
	local lastBlockType, lastLine = it()
	return function()
		-- This function works by performing a lookahead at the next line and then deciding what to do with the
		-- previous line based on that.
		local nextBlockType, nextLine = it()

		if nextBlockType == BlockType.Ruler and lastBlockType == BlockType.Paragraph then
			-- Combine paragraphs followed by rulers into headers
			local text = lastLine
			lastBlockType, lastLine = it()
			if lastLine and text then
				return BlockType.Heading, ("#"):rep(lastLine:sub(1, 1) == "=" and 2 or 1) .. " " .. text
			else
				error("Reached the end of the md")
			end
		end
		local lines = { lastLine }
		if nextBlockType then
			while CombinedBlocks[nextBlockType] and nextBlockType == lastBlockType do
				table.insert(lines, nextLine)
				nextBlockType, nextLine = it()
			end
		end
		local blockType, blockText = lastBlockType, table.concat(lines, "\n")
		lastBlockType, lastLine = nextBlockType, nextLine
		return blockType :: number, blockText
	end
end

-- Iterator: Transforms raw blocks into sections with data
local function blocks(md: string, markup: (md: string) -> string)
	local nextTextBlock = textBlocks(md)
	local function it(): (number, { [string]: any })
		local blockType, blockText = nextTextBlock()
		if blockType == BlockType.None then
			return it() -- skip this block type
		end
		local block = {}
		if blockType then
			local text, indent = getTextWithIndentation(blockText)
			block.Indent = indent
			if blockType == BlockType.Paragraph then
				block.Text = markup(text)
				block.Text, block.Links = parseLinks(block.Text)
			elseif blockType == BlockType.Heading then
				local level: number?, heading: string? = blockText:match("^#+()%s*(.*)")
				if level and heading then
					block.Level, block.Text = level - 1, markup(heading)
				end
			elseif blockType == BlockType.Code then
				local syntax: string?, code: string? = text:match("^```(.-)\n(.*)\n```$")
				if syntax and code then
					block.Syntax, block.Code = syntax, syntax == "lua" and code or sanitize(code)
				end
			elseif blockType == BlockType.List then
				local lines: { string } = blockText:split("\n")
				local items: { [number]: { Text: string, Level: number, Symbol: string, Links: { LinkType }? } } = {}
				for i, line in ipairs(lines) do
					local lineText, lineIndent = getTextWithIndentation(line)
					local symbol: string?, item: string? = lineText:match("^(.-)%s+(.*)")
					if symbol and item then
						items[i] = {
							Level = lineIndent,
							Text = markup(item),
							Symbol = symbol,
							Links = {},
						}
						items[i].Text, items[i].Links = parseLinks(items[i].Text)
					end
				end
				block.Lines = items
			elseif blockType == BlockType.Quote then
				local lines: { string } = blockText:split("\n")
				for i = 1, #lines do
					lines[i] = lines[i]:match("^%s*>%s*(.*)") :: string
				end
				local rawText = table.concat(lines, "\n")
				block.RawText, block.Iterator = rawText, blocks(rawText, markup)
			end
		end
		return blockType, block
	end
	return it
end

local function parseDocument(md: string, inlineParser: any)
	return blocks(cleanup(md), inlineParser or richText)
end

------------------------------------------------------------------------------------------------------------------------
-- Exports
------------------------------------------------------------------------------------------------------------------------

Markdown.sanitize = sanitize
Markdown.parse = parseDocument
Markdown.parseTokens = parseModifierTokens
Markdown.BlockType = BlockType
Markdown.InlineType = InlineType
Markdown.ModifierType = ModifierType

return Markdown
