--[[
    Unindents the content inside of tags so they'll be parsed correctly by the markdown parser.

    Note that this will not impact tags that are not defined on their own line, such as:
    "Some content <Tag>
      inside a tag</Tag> and more content."
    That format is not supported by this function.

    This is necessary to properly parse markdown content inside indented tags, such as:
    # Outer Markdown
      Indented outer markdown.
    <Tag>
      # Inner Markdown
      This markdown is indented for nice writing, but the indent impacts the parser.

        This line is indented beyond the base indent, so it should be parsed with an indent.

      <Subtag
        attr="foo"
        icon="rbxassetid://00000"
      >
        More text indented in a subtag that should be parsed as if it has no indent.
          This markdown is indented beyond the base indent, so it should be parsed with an indent.
      </Subtag>
    </Tag>
    More outer **markdown**.

    Will become:

    # Outer Markdown
      Indented outer markdown.
    <Tag>
    # Inner Markdown
    This markdown is indented for nice writing, but the indent impacts the parser.

      This line is indented beyond the base indent, so it should be parsed with an indent.

    <Subtag
    attr="foo"
    icon="rbxassetid://00000"
    >
    More text indented in a subtag that should be parsed as if it has no indent.
      This markdown is indented beyond the base indent, so it should be parsed with an indent.
    </Subtag>
    </Tag>
    More outer **markdown**.
--]]

local function unindentTags(source: string, indentSize: number?): string
	indentSize = indentSize or 2

	-- Skip all this work if there are no tags in the source
	if not string.find(source, "<.->") then
		return source
	end

	local normalizedSource = string.gsub(source, "\r\n", "\n")
	local lines = string.split(normalizedSource, "\n")
	local result = table.create(#lines)
	local indentStack = {} -- Stack to track tag indent levels

	for _, line in lines do
		local _, indent = string.find(line, "^[ \t]*")
		indent = indent or 0
		local content = string.sub(line, indent + 1)

		-- If it's a tag, process it and update the indent stack
		if string.find(content, "^<") then
			if string.find(content, "^</") then
				-- Closing tag - pop the last indent level
				table.remove(indentStack)
				table.insert(result, content)
			elseif string.find(content, "/>$") then
				-- Self-closing tag - don't modify the stack
				table.insert(result, content)
			else
				-- Opening tag - push current indent level
				table.insert(indentStack, indent)
				table.insert(result, content)
			end
		else
			-- For regular content, use the current indent stack
			local expectedIndent = 0
			if #indentStack > 0 then
				-- We expect the content to be indented by indentSize spaces beyond the last tag indent
				-- so that the content is visually nested inside the tag when writing
				expectedIndent = indentStack[#indentStack] + indentSize
			end

			-- Only keep indentation beyond the expected level
			local extraIndent = math.max(0, indent - expectedIndent)
			table.insert(result, string.rep(" ", extraIndent) .. content)
		end
	end

	return table.concat(result, "\n")
end

return unindentTags
